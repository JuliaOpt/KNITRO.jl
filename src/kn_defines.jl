# This list was obtained through AWK with Knitro 11.1 (and then pared down) with the following two commands:
# grep "#define" knitro.h | awk '{ printf("const %s = Cint(%s)\n",$2,$3) }'
# grep "#  define" knitro.h | awk '{ printf("const %s = Cint(%s)\n",$3,$4) }'
# For version up until 10.3, use following commands :
# grep "#define" knitro.h | awk '{ printf("const %s = Cint(%s)\n",$2,$3) }'
# grep "#  define" knitro.h | awk '{ printf("const %s = Cint(%s)\n",$3,$4) }'


const KNTRUE = Cint(1)
const KNFALSE = Cint(0)
const KN_INFINITY = Float64(0x1.fffffffffffffp+1023) # equal to DBL_MAX
const KN_PARAMTYPE_INTEGER = Cint(0)
const KN_PARAMTYPE_FLOAT = Cint(1)
const KN_PARAMTYPE_STRING = Cint(2)
const KN_OBJGOAL_MINIMIZE = Cint(0)
const KN_OBJGOAL_MAXIMIZE = Cint(1)
const KN_OBJTYPE_CONSTANT = Cint(-1)
const KN_OBJTYPE_GENERAL = Cint(0)
const KN_OBJTYPE_LINEAR = Cint(1)
const KN_OBJTYPE_QUADRATIC = Cint(2)
const KN_CONTYPE_CONSTANT = Cint(-1)
const KN_CONTYPE_GENERAL = Cint(0)
const KN_CONTYPE_LINEAR = Cint(1)
const KN_CONTYPE_QUADRATIC = Cint(2)
const KN_CONTYPE_CONIC = Cint(3)
const KN_RSDTYPE_CONSTANT = Cint(-1)
const KN_RSDTYPE_GENERAL = Cint(0)
const KN_RSDTYPE_LINEAR = Cint(1)
const KN_CCTYPE_VARVAR = Cint(0)
const KN_CCTYPE_VARCON = Cint(1)
const KN_CCTYPE_CONCON = Cint(2)
const KN_VARTYPE_CONTINUOUS = Cint(0)
const KN_VARTYPE_INTEGER = Cint(1)
const KN_VARTYPE_BINARY = Cint(2)
const KN_VAR_LINEAR = Cint(1)
const KN_OBJ_CONVEX = Cint(1)
const KN_OBJ_CONCAVE = Cint(2)
const KN_OBJ_CONTINUOUS = Cint(4)
const KN_OBJ_DIFFERENTIABLE = Cint(8)
const KN_OBJ_TWICE_DIFFERENTIABLE = Cint(16)
const KN_OBJ_NOISY = Cint(32)
const KN_OBJ_NONDETERMINISTIC = Cint(64)
const KN_CON_CONVEX = Cint(1)
const KN_CON_CONCAVE = Cint(2)
const KN_CON_CONTINUOUS = Cint(4)
const KN_CON_DIFFERENTIABLE = Cint(8)
const KN_CON_TWICE_DIFFERENTIABLE = Cint(16)
const KN_CON_NOISY = Cint(32)
const KN_CON_NONDETERMINISTIC = Cint(64)
const KN_DENSE = Cint(-1)
const KN_DENSE_ROWMAJOR = Cint(-2)
const KN_DENSE_COLMAJOR = Cint(-3)
const KN_RC_EVALFC = Cint(1)
const KN_RC_EVALGA = Cint(2)
const KN_RC_EVALH = Cint(3)
const KN_RC_EVALHV = Cint(7)
const KN_RC_EVALH_NO_F = Cint(8)
const KN_RC_EVALHV_NO_F = Cint(9)
const KN_RC_EVALR = Cint(10)
const KN_RC_EVALRJ = Cint(11)
const KN_RC_EVALFCGA = Cint(12)
const KN_RC_OPTIMAL_OR_SATISFACTORY = Cint(0)
const KN_RC_OPTIMAL = Cint(0)
const KN_RC_NEAR_OPT = Cint(-100)
const KN_RC_FEAS_XTOL = Cint(-101)
const KN_RC_FEAS_NO_IMPROVE = Cint(-102)
const KN_RC_FEAS_FTOL = Cint(-103)
const KN_RC_INFEASIBLE = Cint(-200)
const KN_RC_INFEAS_XTOL = Cint(-201)
const KN_RC_INFEAS_NO_IMPROVE = Cint(-202)
const KN_RC_INFEAS_MULTISTART = Cint(-203)
const KN_RC_INFEAS_CON_BOUNDS = Cint(-204)
const KN_RC_INFEAS_VAR_BOUNDS = Cint(-205)
const KN_RC_UNBOUNDED = Cint(-300)
if KNITRO_VERSION > v"12.0"
    const KN_RC_UNBOUNDED_OR_INFEAS = Cint(-301)
end
const KN_RC_ITER_LIMIT_FEAS = Cint(-400)
const KN_RC_TIME_LIMIT_FEAS = Cint(-401)
const KN_RC_FEVAL_LIMIT_FEAS = Cint(-402)
const KN_RC_MIP_EXH_FEAS = Cint(-403)
const KN_RC_MIP_TERM_FEAS = Cint(-404)
const KN_RC_MIP_SOLVE_LIMIT_FEAS = Cint(-405)
const KN_RC_MIP_NODE_LIMIT_FEAS = Cint(-406)
const KN_RC_ITER_LIMIT_INFEAS = Cint(-410)
const KN_RC_TIME_LIMIT_INFEAS = Cint(-411)
const KN_RC_FEVAL_LIMIT_INFEAS = Cint(-412)
const KN_RC_MIP_EXH_INFEAS = Cint(-413)
const KN_RC_MIP_SOLVE_LIMIT_INFEAS = Cint(-415)
const KN_RC_MIP_NODE_LIMIT_INFEAS = Cint(-416)
const KN_RC_CALLBACK_ERR = Cint(-500)
const KN_RC_LP_SOLVER_ERR = Cint(-501)
const KN_RC_EVAL_ERR = Cint(-502)
const KN_RC_OUT_OF_MEMORY = Cint(-503)
const KN_RC_USER_TERMINATION = Cint(-504)
const KN_RC_OPEN_FILE_ERR = Cint(-505)
const KN_RC_BAD_N_OR_F = Cint(-506)
const KN_RC_BAD_CONSTRAINT = Cint(-507)
const KN_RC_BAD_JACOBIAN = Cint(-508)
const KN_RC_BAD_HESSIAN = Cint(-509)
const KN_RC_BAD_CON_INDEX = Cint(-510)
const KN_RC_BAD_JAC_INDEX = Cint(-511)
const KN_RC_BAD_HESS_INDEX = Cint(-512)
const KN_RC_BAD_CON_BOUNDS = Cint(-513)
const KN_RC_BAD_VAR_BOUNDS = Cint(-514)
const KN_RC_ILLEGAL_CALL = Cint(-515)
const KN_RC_BAD_KCPTR = Cint(-516)
const KN_RC_NULL_POINTER = Cint(-517)
const KN_RC_BAD_INIT_VALUE = Cint(-518)
const KN_RC_LICENSE_ERROR = Cint(-520)
const KN_RC_BAD_PARAMINPUT = Cint(-521)
const KN_RC_LINEAR_SOLVER_ERR = Cint(-522)
const KN_RC_DERIV_CHECK_FAILED = Cint(-523)
const KN_RC_DERIV_CHECK_TERMINATE = Cint(-524)
const KN_RC_OVERFLOW_ERR = Cint(-525)
const KN_RC_BAD_SIZE = Cint(-526)
const KN_RC_BAD_VARIABLE = Cint(-527)
const KN_RC_BAD_VAR_INDEX = Cint(-528)
const KN_RC_BAD_OBJECTIVE = Cint(-529)
const KN_RC_BAD_OBJ_INDEX = Cint(-530)
const KN_RC_BAD_RESIDUAL = Cint(-531)
const KN_RC_BAD_RSD_INDEX = Cint(-532)
const KN_RC_INTERNAL_ERROR = Cint(-600)
const KN_PARAM_NEWPOINT = Cint(1001)
const KN_PARAM_HONORBNDS = Cint(1002)
const KN_PARAM_ALGORITHM = Cint(1003)
const KN_PARAM_ALG = Cint(1003)
const KN_PARAM_BAR_MURULE = Cint(1004)
const KN_PARAM_BAR_FEASIBLE = Cint(1006)
const KN_PARAM_GRADOPT = Cint(1007)
const KN_PARAM_HESSOPT = Cint(1008)
const KN_PARAM_BAR_INITPT = Cint(1009)
const KN_PARAM_ACT_LPSOLVER = Cint(1012)
const KN_PARAM_CG_MAXIT = Cint(1013)
const KN_PARAM_MAXIT = Cint(1014)
const KN_PARAM_OUTLEV = Cint(1015)
const KN_PARAM_OUTMODE = Cint(1016)
const KN_PARAM_SCALE = Cint(1017)
const KN_PARAM_SOC = Cint(1019)
const KN_PARAM_DELTA = Cint(1020)
const KN_PARAM_BAR_FEASMODETOL = Cint(1021)
const KN_PARAM_FEASTOL = Cint(1022)
const KN_PARAM_FEASTOLABS = Cint(1023)
const KN_PARAM_MAXTIMECPU = Cint(1024)
const KN_PARAM_BAR_INITMU = Cint(1025)
const KN_PARAM_OBJRANGE = Cint(1026)
const KN_PARAM_OPTTOL = Cint(1027)
const KN_PARAM_OPTTOLABS = Cint(1028)
const KN_PARAM_LINSOLVER_PIVOTTOL = Cint(1029)
const KN_PARAM_XTOL = Cint(1030)
const KN_PARAM_DEBUG = Cint(1031)
const KN_PARAM_MULTISTART = Cint(1033)
const KN_PARAM_MSENABLE = Cint(1033)
const KN_PARAM_MSMAXSOLVES = Cint(1034)
const KN_PARAM_MSMAXBNDRANGE = Cint(1035)
const KN_PARAM_MSMAXTIMECPU = Cint(1036)
const KN_PARAM_MSMAXTIMEREAL = Cint(1037)
const KN_PARAM_LMSIZE = Cint(1038)
const KN_PARAM_BAR_MAXCROSSIT = Cint(1039)
const KN_PARAM_MAXTIMEREAL = Cint(1040)
const KN_PARAM_CG_PRECOND = Cint(1041)
const KN_PARAM_BLASOPTION = Cint(1042)
const KN_PARAM_BAR_MAXREFACTOR = Cint(1043)
const KN_PARAM_LINESEARCH_MAXTRIALS = Cint(1044)
const KN_PARAM_BLASOPTIONLIB = Cint(1045)
const KN_PARAM_OUTAPPEND = Cint(1046)
const KN_PARAM_OUTDIR = Cint(1047)
const KN_PARAM_CPLEXLIB = Cint(1048)
const KN_PARAM_BAR_PENRULE = Cint(1049)
const KN_PARAM_BAR_PENCONS = Cint(1050)
const KN_PARAM_MSNUMTOSAVE = Cint(1051)
const KN_PARAM_MSSAVETOL = Cint(1052)
const KN_PARAM_PRESOLVEDEBUG = Cint(1053)
const KN_PARAM_MSTERMINATE = Cint(1054)
const KN_PARAM_MSSTARTPTRANGE = Cint(1055)
const KN_PARAM_INFEASTOL = Cint(1056)
const KN_PARAM_LINSOLVER = Cint(1057)
const KN_PARAM_BAR_DIRECTINTERVAL = Cint(1058)
const KN_PARAM_PRESOLVE = Cint(1059)
const KN_PARAM_PRESOLVE_TOL = Cint(1060)
const KN_PARAM_BAR_SWITCHRULE = Cint(1061)
const KN_PARAM_HESSIAN_NO_F = Cint(1062)
const KN_PARAM_MA_TERMINATE = Cint(1063)
const KN_PARAM_MA_MAXTIMECPU = Cint(1064)
const KN_PARAM_MA_MAXTIMEREAL = Cint(1065)
const KN_PARAM_MSSEED = Cint(1066)
const KN_PARAM_MA_OUTSUB = Cint(1067)
const KN_PARAM_MS_OUTSUB = Cint(1068)
const KN_PARAM_XPRESSLIB = Cint(1069)
const KN_PARAM_TUNER = Cint(1070)
const KN_PARAM_TUNER_OPTIONSFILE = Cint(1071)
const KN_PARAM_TUNER_MAXTIMECPU = Cint(1072)
const KN_PARAM_TUNER_MAXTIMEREAL = Cint(1073)
const KN_PARAM_TUNER_OUTSUB = Cint(1074)
const KN_PARAM_TUNER_TERMINATE = Cint(1075)
const KN_PARAM_LINSOLVER_OOC = Cint(1076)
const KN_PARAM_BAR_RELAXCONS = Cint(1077)
const KN_PARAM_MSDETERMINISTIC = Cint(1078)
const KN_PARAM_BAR_REFINEMENT = Cint(1079)
const KN_PARAM_DERIVCHECK = Cint(1080)
const KN_PARAM_DERIVCHECK_TYPE = Cint(1081)
const KN_PARAM_DERIVCHECK_TOL = Cint(1082)
const KN_PARAM_LINSOLVER_INEXACT = Cint(1083)
const KN_PARAM_LINSOLVER_INEXACTTOL = Cint(1084)
const KN_PARAM_MAXFEVALS = Cint(1085)
const KN_PARAM_FSTOPVAL = Cint(1086)
const KN_PARAM_DATACHECK = Cint(1087)
const KN_PARAM_DERIVCHECK_TERMINATE = Cint(1088)
const KN_PARAM_BAR_WATCHDOG = Cint(1089)
const KN_PARAM_FTOL = Cint(1090)
const KN_PARAM_FTOL_ITERS = Cint(1091)
const KN_PARAM_ACT_QPALG = Cint(1092)
const KN_PARAM_BAR_INITPI_MPEC = Cint(1093)
const KN_PARAM_XTOL_ITERS = Cint(1094)
const KN_PARAM_LINESEARCH = Cint(1095)
const KN_PARAM_OUT_CSVINFO = Cint(1096)
const KN_PARAM_INITPENALTY = Cint(1097)
const KN_PARAM_ACT_LPFEASTOL = Cint(1098)
const KN_PARAM_CG_STOPTOL = Cint(1099)
const KN_PARAM_RESTARTS = Cint(1100)
const KN_PARAM_RESTARTS_MAXIT = Cint(1101)
const KN_PARAM_BAR_SLACKBOUNDPUSH = Cint(1102)
const KN_PARAM_CG_PMEM = Cint(1103)
const KN_PARAM_BAR_SWITCHOBJ = Cint(1104)
const KN_PARAM_OUTNAME = Cint(1105)
const KN_PARAM_OUT_CSVNAME = Cint(1106)
const KN_PARAM_ACT_PARAMETRIC = Cint(1107)
const KN_PARAM_ACT_LPDUMPMPS = Cint(1108)
const KN_PARAM_ACT_LPALG = Cint(1109)
const KN_PARAM_ACT_LPPRESOLVE = Cint(1110)
const KN_PARAM_ACT_LPPENALTY = Cint(1111)
const KN_PARAM_BNDRANGE = Cint(1112)
const KN_PARAM_BAR_CONIC_ENABLE = Cint(1113)
const KN_PARAM_CONVEX = Cint(1114)
const KN_PARAM_OUT_HINTS = Cint(1115)
const KN_PARAM_EVAL_FCGA = Cint(1116)
const KN_PARAM_MIP_METHOD = Cint(2001)
const KN_PARAM_MIP_BRANCHRULE = Cint(2002)
const KN_PARAM_MIP_SELECTRULE = Cint(2003)
const KN_PARAM_MIP_INTGAPABS = Cint(2004)
const KN_PARAM_MIP_INTGAPREL = Cint(2005)
const KN_PARAM_MIP_MAXTIMECPU = Cint(2006)
const KN_PARAM_MIP_MAXTIMEREAL = Cint(2007)
const KN_PARAM_MIP_MAXSOLVES = Cint(2008)
const KN_PARAM_MIP_INTEGERTOL = Cint(2009)
const KN_PARAM_MIP_OUTLEVEL = Cint(2010)
const KN_PARAM_MIP_OUTINTERVAL = Cint(2011)
const KN_PARAM_MIP_OUTSUB = Cint(2012)
const KN_PARAM_MIP_DEBUG = Cint(2013)
const KN_PARAM_MIP_IMPLICATNS = Cint(2014)
const KN_PARAM_MIP_GUB_BRANCH = Cint(2015)
const KN_PARAM_MIP_KNAPSACK = Cint(2016)
const KN_PARAM_MIP_ROUNDING = Cint(2017)
const KN_PARAM_MIP_ROOTALG = Cint(2018)
const KN_PARAM_MIP_LPALG = Cint(2019)
const KN_PARAM_MIP_TERMINATE = Cint(2020)
const KN_PARAM_MIP_MAXNODES = Cint(2021)
const KN_PARAM_MIP_HEURISTIC = Cint(2022)
const KN_PARAM_MIP_HEUR_MAXIT = Cint(2023)
const KN_PARAM_MIP_HEUR_MAXTIMECPU = Cint(2024)
const KN_PARAM_MIP_HEUR_MAXTIMEREAL = Cint(2025)
const KN_PARAM_MIP_PSEUDOINIT = Cint(2026)
const KN_PARAM_MIP_STRONG_MAXIT = Cint(2027)
const KN_PARAM_MIP_STRONG_CANDLIM = Cint(2028)
const KN_PARAM_MIP_STRONG_LEVEL = Cint(2029)
const KN_PARAM_MIP_INTVAR_STRATEGY = Cint(2030)
const KN_PARAM_MIP_RELAXABLE = Cint(2031)
const KN_PARAM_MIP_NODEALG = Cint(2032)
const KN_PARAM_MIP_HEUR_TERMINATE = Cint(2033)
const KN_PARAM_MIP_SELECTDIR = Cint(2034)
const KN_PARAM_PAR_NUMTHREADS = Cint(3001)
const KN_PARAM_PAR_CONCURRENT_EVALS = Cint(3002)
const KN_PARAM_PAR_BLASNUMTHREADS = Cint(3003)
const KN_PARAM_PAR_LSNUMTHREADS = Cint(3004)
const KN_PARAM_PAR_MSNUMTHREADS = Cint(3005)
const KN_NEWPOINT_NONE = Cint(0)
const KN_NEWPOINT_SAVEONE = Cint(1)
const KN_NEWPOINT_SAVEALL = Cint(2)
const KN_HONORBNDS_NO = Cint(0)
const KN_HONORBNDS_ALWAYS = Cint(1)
const KN_HONORBNDS_INITPT = Cint(2)
const KN_ALG_AUTOMATIC = Cint(0)
const KN_ALG_AUTO = Cint(0)
const KN_ALG_BAR_DIRECT = Cint(1)
const KN_ALG_BAR_CG = Cint(2)
const KN_ALG_ACT_CG = Cint(3)
const KN_ALG_ACT_SQP = Cint(4)
const KN_ALG_MULTI = Cint(5)
const KN_BAR_MURULE_AUTOMATIC = Cint(0)
const KN_BAR_MURULE_AUTO = Cint(0)
const KN_BAR_MURULE_MONOTONE = Cint(1)
const KN_BAR_MURULE_ADAPTIVE = Cint(2)
const KN_BAR_MURULE_PROBING = Cint(3)
const KN_BAR_MURULE_DAMPMPC = Cint(4)
const KN_BAR_MURULE_FULLMPC = Cint(5)
const KN_BAR_MURULE_QUALITY = Cint(6)
const KN_BAR_FEASIBLE_NO = Cint(0)
const KN_BAR_FEASIBLE_STAY = Cint(1)
const KN_BAR_FEASIBLE_GET = Cint(2)
const KN_BAR_FEASIBLE_GET_STAY = Cint(3)
const KN_GRADOPT_EXACT = Cint(1)
const KN_GRADOPT_FORWARD = Cint(2)
const KN_GRADOPT_CENTRAL = Cint(3)
const KN_GRADOPT_USER_FORWARD = Cint(4)
const KN_GRADOPT_USER_CENTRAL = Cint(5)
const KN_HESSOPT_AUTO = Cint(0)
const KN_HESSOPT_EXACT = Cint(1)
const KN_HESSOPT_BFGS = Cint(2)
const KN_HESSOPT_SR1 = Cint(3)
const KN_HESSOPT_PRODUCT_FINDIFF = Cint(4)
const KN_HESSOPT_PRODUCT = Cint(5)
const KN_HESSOPT_LBFGS = Cint(6)
const KN_HESSOPT_GAUSS_NEWTON = Cint(7)
const KN_BAR_INITPT_AUTO = Cint(0)
const KN_BAR_INITPT_CONVEX = Cint(1)
const KN_BAR_INITPT_NEARBND = Cint(2)
const KN_BAR_INITPT_CENTRAL = Cint(3)
const KN_ACT_LPSOLVER_INTERNAL = Cint(1)
const KN_ACT_LPSOLVER_CPLEX = Cint(2)
const KN_ACT_LPSOLVER_XPRESS = Cint(3)
const KN_OUTLEV_NONE = Cint(0)
const KN_OUTLEV_SUMMARY = Cint(1)
const KN_OUTLEV_ITER_10 = Cint(2)
const KN_OUTLEV_ITER = Cint(3)
const KN_OUTLEV_ITER_VERBOSE = Cint(4)
const KN_OUTLEV_ITER_X = Cint(5)
const KN_OUTLEV_ALL = Cint(6)
const KN_OUTMODE_SCREEN = Cint(0)
const KN_OUTMODE_FILE = Cint(1)
const KN_OUTMODE_BOTH = Cint(2)
const KN_SCALE_NEVER = Cint(0)
const KN_SCALE_NO = Cint(0)
const KN_SCALE_USER_INTERNAL = Cint(1)
const KN_SCALE_USER_NONE = Cint(2)
const KN_SCALE_INTERNAL = Cint(3)
const KN_SOC_NO = Cint(0)
const KN_SOC_MAYBE = Cint(1)
const KN_SOC_YES = Cint(2)
const KN_DEBUG_NONE = Cint(0)
const KN_DEBUG_PROBLEM = Cint(1)
const KN_DEBUG_EXECUTION = Cint(2)
const KN_MULTISTART_NO = Cint(0)
const KN_MULTISTART_YES = Cint(1)
const KN_CG_PRECOND_NONE = Cint(0)
const KN_CG_PRECOND_CHOL = Cint(1)
const KN_BLASOPTION_KNITRO = Cint(0)
const KN_BLASOPTION_INTEL = Cint(1)
const KN_BLASOPTION_DYNAMIC = Cint(2)
const KN_OUTAPPEND_NO = Cint(0)
const KN_OUTAPPEND_YES = Cint(1)
const KN_BAR_PENRULE_AUTO = Cint(0)
const KN_BAR_PENRULE_SINGLE = Cint(1)
const KN_BAR_PENRULE_FLEX = Cint(2)
const KN_BAR_PENCONS_AUTO = Cint(0)
const KN_BAR_PENCONS_NONE = Cint(1)
const KN_BAR_PENCONS_ALL = Cint(2)
const KN_BAR_PENCONS_EQUALITIES = Cint(3)
const KN_BAR_PENCONS_INFEAS = Cint(4)
const KN_PRESOLVEDBG_NONE = Cint(0)
const KN_PRESOLVEDBG_BASIC = Cint(1)
const KN_PRESOLVEDBG_VERBOSE = Cint(2)
const KN_MSTERMINATE_MAXSOLVES = Cint(0)
const KN_MSTERMINATE_OPTIMAL = Cint(1)
const KN_MSTERMINATE_FEASIBLE = Cint(2)
const KN_MSTERMINATE_ANY = Cint(3)
const KN_LINSOLVER_AUTO = Cint(0)
const KN_LINSOLVER_INTERNAL = Cint(1)
const KN_LINSOLVER_HYBRID = Cint(2)
const KN_LINSOLVER_DENSEQR = Cint(3)
const KN_LINSOLVER_MA27 = Cint(4)
const KN_LINSOLVER_MA57 = Cint(5)
const KN_LINSOLVER_MKLPARDISO = Cint(6)
const KN_LINSOLVER_MA97 = Cint(7)
const KN_LINSOLVER_MA86 = Cint(8)
const KN_PRESOLVE_NONE = Cint(0)
const KN_PRESOLVE_BASIC = Cint(1)
const KN_PRESOLVE_ADVANCED = Cint(2)
if KNITRO_VERSION >= v"12.0"
    const KN_PRESOLVE_NO = Cint(0)
    const KN_PRESOLVE_YES = Cint(1)
    const KN_PRESOLVE_ADVANCED = Cint(2)
end
const KN_BAR_SWITCHRULE_AUTO = Cint(0)
const KN_BAR_SWITCHRULE_NEVER = Cint(1)
const KN_BAR_SWITCHRULE_MODERATE = Cint(2)
const KN_BAR_SWITCHRULE_AGGRESSIVE = Cint(3)
const KN_HESSIAN_NO_F_FORBID = Cint(0)
const KN_HESSIAN_NO_F_ALLOW = Cint(1)
const KN_MA_TERMINATE_ALL = Cint(0)
const KN_MA_TERMINATE_OPTIMAL = Cint(1)
const KN_MA_TERMINATE_FEASIBLE = Cint(2)
const KN_MA_TERMINATE_ANY = Cint(3)
const KN_MA_OUTSUB_NONE = Cint(0)
const KN_MA_OUTSUB_YES = Cint(1)
const KN_MS_OUTSUB_NONE = Cint(0)
const KN_MS_OUTSUB_YES = Cint(1)
const KN_TUNER_OFF = Cint(0)
const KN_TUNER_ON = Cint(1)
const KN_TUNER_OUTSUB_NONE = Cint(0)
const KN_TUNER_OUTSUB_SUMMARY = Cint(1)
const KN_TUNER_OUTSUB_ALL = Cint(2)
const KN_TUNER_TERMINATE_ALL = Cint(0)
const KN_TUNER_TERMINATE_OPTIMAL = Cint(1)
const KN_TUNER_TERMINATE_FEASIBLE = Cint(2)
const KN_TUNER_TERMINATE_ANY = Cint(3)
const KN_LINSOLVER_OOC_NO = Cint(0)
const KN_LINSOLVER_OOC_MAYBE = Cint(1)
const KN_LINSOLVER_OOC_YES = Cint(2)
const KN_BAR_RELAXCONS_NONE = Cint(0)
const KN_BAR_RELAXCONS_EQS = Cint(1)
const KN_BAR_RELAXCONS_INEQS = Cint(2)
const KN_BAR_RELAXCONS_ALL = Cint(3)
const KN_MSDETERMINISTIC_NO = Cint(0)
const KN_MSDETERMINISTIC_YES = Cint(1)
const KN_BAR_REFINEMENT_NO = Cint(0)
const KN_BAR_REFINEMENT_YES = Cint(1)
const KN_DERIVCHECK_NONE = Cint(0)
const KN_DERIVCHECK_FIRST = Cint(1)
const KN_DERIVCHECK_SECOND = Cint(2)
const KN_DERIVCHECK_ALL = Cint(3)
const KN_DERIVCHECK_FORWARD = Cint(1)
const KN_DERIVCHECK_CENTRAL = Cint(2)
const KN_LINSOLVER_INEXACT_NO = Cint(0)
const KN_LINSOLVER_INEXACT_YES = Cint(1)
const KN_DATACHECK_NO = Cint(0)
const KN_DATACHECK_YES = Cint(1)
const KN_DERIVCHECK_STOPERROR = Cint(1)
const KN_DERIVCHECK_STOPALWAYS = Cint(2)
const KN_BAR_WATCHDOG_NO = Cint(0)
const KN_BAR_WATCHDOG_YES = Cint(1)
const KN_ACT_QPALG_AUTO = Cint(0)
const KN_ACT_QPALG_BAR_DIRECT = Cint(1)
const KN_ACT_QPALG_BAR_CG = Cint(2)
const KN_ACT_QPALG_ACT_CG = Cint(3)
const KN_LINESEARCH_AUTO = Cint(0)
const KN_LINESEARCH_BACKTRACK = Cint(1)
const KN_LINESEARCH_INTERPOLATE = Cint(2)
const KN_OUT_CSVINFO_NO = Cint(0)
const KN_OUT_CSVINFO_YES = Cint(1)
const KN_BAR_SWITCHOBJ_NONE = Cint(0)
const KN_BAR_SWITCHOBJ_SCALARPROX = Cint(1)
const KN_BAR_SWITCHOBJ_DIAGPROX = Cint(2)
const KN_ACT_PARAMETRIC_NO = Cint(0)
const KN_ACT_PARAMETRIC_MAYBE = Cint(1)
const KN_ACT_PARAMETRIC_YES = Cint(2)
const KN_ACT_LPDUMPMPS_NO = Cint(0)
const KN_ACT_LPDUMPMPS_YES = Cint(1)
const KN_ACT_LPALG_DEFAULT = Cint(0)
const KN_ACT_LPALG_PRIMAL = Cint(1)
const KN_ACT_LPALG_DUAL = Cint(2)
const KN_ACT_LPALG_BARRIER = Cint(3)
const KN_ACT_LPPRESOLVE_OFF = Cint(0)
const KN_ACT_LPPRESOLVE_ON = Cint(1)
const KN_ACT_LPPENALTY_ALL = Cint(1)
const KN_ACT_LPPENALTY_NONLINEAR = Cint(2)
const KN_ACT_LPPENALTY_DYNAMIC = Cint(3)
const KN_BAR_CONIC_ENABLE_NONE = Cint(0)
const KN_BAR_CONIC_ENABLE_SOC = Cint(1)
const KN_CONVEX_NO = Cint(0)
const KN_CONVEX_YES = Cint(1)
const KN_OUT_HINTS_NO = Cint(0)
const KN_OUT_HINTS_YES = Cint(1)
const KN_EVAL_FCGA_NO = Cint(0)
const KN_EVAL_FCGA_YES = Cint(1)
const KN_MIP_METHOD_AUTO = Cint(0)
const KN_MIP_METHOD_BB = Cint(1)
const KN_MIP_METHOD_HQG = Cint(2)
const KN_MIP_METHOD_MISQP = Cint(3)
const KN_MIP_BRANCH_AUTO = Cint(0)
const KN_MIP_BRANCH_MOSTFRAC = Cint(1)
const KN_MIP_BRANCH_PSEUDOCOST = Cint(2)
const KN_MIP_BRANCH_STRONG = Cint(3)
const KN_MIP_SEL_AUTO = Cint(0)
const KN_MIP_SEL_DEPTHFIRST = Cint(1)
const KN_MIP_SEL_BESTBOUND = Cint(2)
const KN_MIP_SEL_COMBO_1 = Cint(3)
const KN_MIP_OUTLEVEL_NONE = Cint(0)
const KN_MIP_OUTLEVEL_ITERS = Cint(1)
const KN_MIP_OUTLEVEL_ITERSTIME = Cint(2)
const KN_MIP_OUTLEVEL_ROOT = Cint(3)
const KN_MIP_OUTSUB_NONE = Cint(0)
const KN_MIP_OUTSUB_YES = Cint(1)
const KN_MIP_OUTSUB_YESPROB = Cint(2)
const KN_MIP_DEBUG_NONE = Cint(0)
const KN_MIP_DEBUG_ALL = Cint(1)
const KN_MIP_IMPLICATNS_NO = Cint(0)
const KN_MIP_IMPLICATNS_YES = Cint(1)
const KN_MIP_GUB_BRANCH_NO = Cint(0)
const KN_MIP_GUB_BRANCH_YES = Cint(1)
const KN_MIP_KNAPSACK_NO = Cint(0)
const KN_MIP_KNAPSACK_NONE = Cint(0)
const KN_MIP_KNAPSACK_INEQ = Cint(1)
const KN_MIP_KNAPSACK_INEQ_EQ = Cint(2)
const KN_MIP_ROUND_AUTO = Cint(0)
const KN_MIP_ROUND_NONE = Cint(1)
const KN_MIP_ROUND_HEURISTIC = Cint(2)
const KN_MIP_ROUND_NLP_SOME = Cint(3)
const KN_MIP_ROUND_NLP_ALWAYS = Cint(4)
const KN_MIP_ROOTALG_AUTO = Cint(0)
const KN_MIP_ROOTALG_BAR_DIRECT = Cint(1)
const KN_MIP_ROOTALG_BAR_CG = Cint(2)
const KN_MIP_ROOTALG_ACT_CG = Cint(3)
const KN_MIP_ROOTALG_ACT_SQP = Cint(4)
const KN_MIP_ROOTALG_MULTI = Cint(5)
const KN_MIP_LPALG_AUTO = Cint(0)
const KN_MIP_LPALG_BAR_DIRECT = Cint(1)
const KN_MIP_LPALG_BAR_CG = Cint(2)
const KN_MIP_LPALG_ACT_CG = Cint(3)
const KN_MIP_TERMINATE_OPTIMAL = Cint(0)
const KN_MIP_TERMINATE_FEASIBLE = Cint(1)
const KN_MIP_HEURISTIC_AUTO = Cint(0)
const KN_MIP_HEURISTIC_NONE = Cint(1)
const KN_MIP_HEURISTIC_FEASPUMP = Cint(2)
const KN_MIP_HEURISTIC_MPEC = Cint(3)
const KN_MIP_PSEUDOINIT_AUTO = Cint(0)
const KN_MIP_PSEUDOINIT_AVE = Cint(1)
const KN_MIP_PSEUDOINIT_STRONG = Cint(2)
const KN_MIP_INTVAR_STRATEGY_NONE = Cint(0)
const KN_MIP_INTVAR_STRATEGY_RELAX = Cint(1)
const KN_MIP_INTVAR_STRATEGY_MPEC = Cint(2)
const KN_MIP_RELAXABLE_NONE = Cint(0)
const KN_MIP_RELAXABLE_ALL = Cint(1)
const KN_MIP_NODEALG_AUTO = Cint(0)
const KN_MIP_NODEALG_BAR_DIRECT = Cint(1)
const KN_MIP_NODEALG_BAR_CG = Cint(2)
const KN_MIP_NODEALG_ACT_CG = Cint(3)
const KN_MIP_NODEALG_ACT_SQP = Cint(4)
const KN_MIP_NODEALG_MULTI = Cint(5)
const KN_MIP_HEUR_TERMINATE_FEASIBLE = Cint(1)
const KN_MIP_HEUR_TERMINATE_LIMIT = Cint(2)
const KN_MIP_SELECTDIR_DOWN = Cint(0)
const KN_MIP_SELECTDIR_UP = Cint(1)
const KN_PAR_CONCURRENT_EVALS_NO = Cint(0)
const KN_PAR_CONCURRENT_EVALS_YES = Cint(1)
const KN_PAR_MSNUMTHREADS_AUTO = Cint(0)

const KN_PARAM_STRAT_WARM_START = Cint(1118)
const KN_STRAT_WARM_START_NO    = Cint(0)
const KN_STRAT_WARM_START_YES   = Cint(1)

if KNITRO_VERSION >= v"12.0"
    # Cuts parameters
    const KN_PARAM_MIP_ZEROHALF = Cint(2036)
    const KN_MIP_ZEROHALF_NONE = Cint(0)
    const KN_MIP_ZEROHALF_ROOT = Cint(1)
    const KN_MIP_ZEROHALF_TREE = Cint(2)
    const KN_MIP_ZEROHALF_ALL = Cint(3)
    const KN_PARAM_MIP_MIR = Cint(2037)
    const KN_MIP_MIR_NONE = Cint(0)
    const KN_MIP_MIR_TREE = Cint(1)
    const KN_PARAM_MIP_CLIQUE = Cint(2038)
    const KN_MIP_CLIQUE_NONE = Cint(0)
    const KN_MIP_CLIQUE_ROOT = Cint(1)
    const KN_MIP_CLIQUE_TREE = Cint(2)
    const KN_MIP_CLIQUE_ALL = Cint(3)
    # SOCP parameters
    const KN_PARAM_PAR_CONICNUMTHREADS = Cint(3006)
    # Presolve parameters
    const KN_PARAM_PRESOLVE_PASSES = Cint(1121)
    const KN_PARAM_PRESOLVE_LEVEL = Cint(1122)
    const KN_PRESOLVE_LEVEL_AUTO = Cint(-1)
    const KN_PRESOLVE_LEVEL_1 = Cint(1)
    const KN_PRESOLVE_LEVEL_2 = Cint(2)
end
if KNITRO_VERSION >= v"12.1"
    const KN_PARAM_FINDIFF_RELSTEPSIZE = Cint(1123)
    const KN_PARAM_INFEASTOL_ITERS = Cint(1124)
    # New options for MIP MIR cuts
    const KN_MIP_MIR_AUTO = Cint(-1)
    const KN_MIP_MIR_NLP = Cint(2)
    # New options for presolve
    const KN_PARAM_PRESOLVEOP_TIGHTEN = Cint(1125)
    const KN_PRESOLVEOP_TIGHTEN_AUTO = Cint(-1)
    const KN_PRESOLVEOP_TIGHTEN_NONE = Cint(0)
    const KN_PRESOLVEOP_TIGHTEN_VARBND = Cint(1)
end
if KNITRO_VERSION >= v"12.2"
    const KN_LINESEARCH_WEAKWOLFE = Cint(3)
    # Tune factorization of KKT system
    const KN_PARAM_BAR_LINSYS = Cint(1126)
    const KN_BAR_LINSYS_AUTO = Cint(-1)
    const KN_BAR_LINSYS_FULL = Cint(0)
    const KN_BAR_LINSYS_COMPACT1 = Cint(1)
    const KN_BAR_LINSYS_COMPACT2 = Cint(2)
    # Add new ways to handle init point during presolve
    const KN_PARAM_PRESOLVE_INITPT = Cint(1127)
    const KN_PRESOLVE_INITPT_AUTO = Cint(-1)
    const KN_PRESOLVE_INITPT_NOSHIFT = Cint(0)
    const KN_PRESOLVE_INITPT_LINSHIFT = Cint(1)
    const KN_PRESOLVE_INITPT_ANYSHIFT = Cint(2)
    # QP penalty in active set algorithm
    const KN_PARAM_ACT_QPPENALTY = Cint(1128)
    const KN_ACT_QPPENALTY_AUTO = Cint(-1)
    const KN_ACT_QPPENALTY_NONE = Cint(0)
    const KN_ACT_QPPENALTY_ALL = Cint(1)
end
if KNITRO_VERSION >= v"12.3"
    const KN_PARAM_BAR_LINSYS_STORAGE = Cint(1129)
    const KN_BAR_LINSYS_STORAGE_AUTO = Cint(-1)
    const KN_BAR_LINSYS_STORAGE_LOWMEM = Cint(1)
    const KN_BAR_LINSYS_STORAGE_NORMAL = Cint(2)
    const KN_PARAM_LINSOLVER_MAXITREF = Cint(1130)
    const KN_PARAM_BFGS_SCALING = Cint(1131)
    const KN_BFGS_SCALING_DYNAMIC = Cint(0)
    const KN_BFGS_SCALING_INVHESS = Cint(1)
    const KN_BFGS_SCALING_HESS = Cint(2)
end
if KNITRO_VERSION >= v"12.4"
    # Possible model components
	const KN_COMPONENT_VAR              = Cint(1)
	const KN_COMPONENT_OBJ              = Cint(2)
	const KN_COMPONENT_CON              = Cint(3)
    const KN_COMPONENT_RSD              = Cint(4)
    # mip_heuristic_strategy
    const KN_PARAM_MIP_HEUR_STRATEGY    = Cint(2039)
    const KN_MIP_HEUR_STRATEGY_AUTO     = Cint(-1)
    const KN_MIP_HEUR_STRATEGY_NONE     = Cint(0)
    const KN_MIP_HEUR_STRATEGY_BASIC    = Cint(1)
    const KN_MIP_HEUR_STRATEGY_ADVANCED = Cint(2)
    const KN_MIP_HEUR_STRATEGY_EXTENSIVE= Cint(3)
    # mip_heuristic_feaspump
    const KN_PARAM_MIP_HEUR_FEASPUMP    = Cint(2040)
    const KN_MIP_HEUR_FEASPUMP_AUTO     = Cint(-1)
    const KN_MIP_HEUR_FEASPUMP_OFF      = Cint(0)
    const KN_MIP_HEUR_FEASPUMP_ON       = Cint(1)
    # mip_heuristic_mpec
    const KN_PARAM_MIP_HEUR_MPEC        = Cint(2041)
    const KN_MIP_HEUR_MPEC_AUTO         = Cint(-1)
    const KN_MIP_HEUR_MPEC_OFF          = Cint(0)
    const KN_MIP_HEUR_MPEC_ON           = Cint(1)
    # mip_heuristic_diving
    const KN_PARAM_MIP_HEUR_DIVING      = Cint(2042)
    const KN_MIP_HEUR_DIVING_AUTO       = Cint(-1)
    const KN_MIP_HEUR_DIVING_OFF        = Cint(0)
    const KN_MIP_HEUR_DIVING_ON         = Cint(1)
    # mip_cutting_plane
    const KN_PARAM_MIP_CUTTINGPLANE     = Cint(2043)
    const KN_MIP_CUTTINGPLANE_NONE      = Cint(0)
    const KN_MIP_CUTTINGPLANE_ROOT      = Cint(1)
end
