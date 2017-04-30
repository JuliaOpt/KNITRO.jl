# Test the use of eval_hesslag_prod option with KNITR-MathProgBase
using MathProgBase, KNITRO
using Base.Test, FactCheck

type Myquad <: MathProgBase.AbstractNLPEvaluator
end

MathProgBase.features_available(d::Myquad) = [:Grad,:HessVec]
function MathProgBase.initialize(d::Myquad,requested_features::Vector{Symbol})
    for feat in requested_features
        if !(feat in [:Grad,:Jac,:HessVec])
            error("Unsupported feature $feat")
        end
    end
end
MathProgBase.eval_g(d::Myquad,g,x) = nothing
MathProgBase.eval_jac_g(d::Myquad,g1,g2) = nothing
MathProgBase.jac_structure(d::Myquad) = Int64[], Int64[]
function MathProgBase.eval_f(d::Myquad, x)
    return x[1]^2+x[2]^2
end
function MathProgBase.eval_grad_f(d::Myquad, grad_f, x)
    grad_f[1] = 2*x[1]
    grad_f[2] = 2*x[2]
end
function MathProgBase.eval_hesslag_prod(d::Myquad,h,x,v,σ,μ)
    h[1] = 2*σ*v[1]
    h[2] = 2*σ*v[2]
end

m = MathProgBase.NonlinearModel(KnitroSolver(KTR_PARAM_OUTLEV=0,KTR_PARAM_HESSOPT=5))
MathProgBase.loadproblem!(m,2,0,-ones(2),ones(2),Float64[],Float64[],:Min,Myquad())
MathProgBase.setwarmstart!(m,rand(2))
MathProgBase.optimize!(m)

# --- test optimal solutions ---
facts("Test optimal solutions of eval_hesslag_prod call") do
    @fact MathProgBase.status(m) --> :Optimal
    @fact MathProgBase.getsolution(m) --> roughly([0.0,0.0], 1e-5)
end
