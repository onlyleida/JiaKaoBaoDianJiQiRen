package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseSecantSolver extends AbstractUnivariateSolver implements BracketedUnivariateSolver<UnivariateFunction> {
    protected static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private AllowedSolution allowed;
    private final Method method;

    /* JADX INFO: renamed from: org.apache.commons.math3.analysis.solvers.BaseSecantSolver$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution;
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method;

        static {
            int[] iArr = new int[AllowedSolution.values().length];
            $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution = iArr;
            try {
                iArr[AllowedSolution.ANY_SIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.LEFT_SIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.RIGHT_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.BELOW_SIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.ABOVE_SIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[Method.values().length];
            $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method = iArr2;
            try {
                iArr2[Method.ILLINOIS.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[Method.PEGASUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[Method.REGULA_FALSI.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    protected enum Method {
        REGULA_FALSI,
        ILLINOIS,
        PEGASUS
    }

    protected BaseSecantSolver(double d2, Method method) {
        super(d2);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    protected final double doSolve() throws ConvergenceException {
        double min = getMin();
        double max = getMax();
        double dComputeObjectiveValue = computeObjectiveValue(min);
        double dComputeObjectiveValue2 = computeObjectiveValue(max);
        double d2 = 0.0d;
        if (dComputeObjectiveValue == 0.0d) {
            return min;
        }
        if (dComputeObjectiveValue2 == 0.0d) {
            return max;
        }
        verifyBracketing(min, max);
        double functionValueAccuracy = getFunctionValueAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        boolean z = false;
        while (true) {
            double d3 = min;
            double d4 = max - (((max - min) * dComputeObjectiveValue2) / (dComputeObjectiveValue2 - dComputeObjectiveValue));
            double dComputeObjectiveValue3 = computeObjectiveValue(d4);
            if (dComputeObjectiveValue3 == d2) {
                return d4;
            }
            if (dComputeObjectiveValue2 * dComputeObjectiveValue3 < 0.0d) {
                d3 = max;
                z = !z;
                dComputeObjectiveValue = dComputeObjectiveValue2;
            } else {
                int i = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[this.method.ordinal()];
                if (i == 1) {
                    dComputeObjectiveValue *= 0.5d;
                } else if (i == 2) {
                    dComputeObjectiveValue *= dComputeObjectiveValue2 / (dComputeObjectiveValue2 + dComputeObjectiveValue3);
                } else {
                    if (i != 3) {
                        throw new MathInternalError();
                    }
                    if (d4 == max) {
                        throw new ConvergenceException();
                    }
                }
            }
            if (FastMath.abs(dComputeObjectiveValue3) <= functionValueAccuracy) {
                int i2 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[this.allowed.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                if (i2 != 5) {
                                    throw new MathInternalError();
                                }
                                if (dComputeObjectiveValue3 >= d2) {
                                    return d4;
                                }
                            } else if (dComputeObjectiveValue3 <= 0.0d) {
                                return d4;
                            }
                        } else if (!z) {
                            return d4;
                        }
                    } else if (z) {
                    }
                }
                return d4;
            }
            if (FastMath.abs(d4 - d3) < FastMath.max(FastMath.abs(d4) * relativeAccuracy, absoluteAccuracy)) {
                int i3 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[this.allowed.ordinal()];
                if (i3 == 1) {
                    return d4;
                }
                if (i3 == 2) {
                    return z ? d4 : d3;
                }
                if (i3 == 3) {
                    return z ? d3 : d4;
                }
                if (i3 == 4) {
                    return dComputeObjectiveValue3 <= 0.0d ? d4 : d3;
                }
                if (i3 == 5) {
                    return dComputeObjectiveValue3 >= d2 ? d4 : d3;
                }
                throw new MathInternalError();
            }
            max = d4;
            dComputeObjectiveValue2 = dComputeObjectiveValue3;
            min = d3;
            d2 = 0.0d;
        }
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d2, double d3, AllowedSolution allowedSolution) {
        return solve(i, univariateFunction, d2, d3, d2 + ((d3 - d2) * 0.5d), allowedSolution);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d2, double d3, double d4, AllowedSolution allowedSolution) {
        this.allowed = allowedSolution;
        return super.solve(i, univariateFunction, d2, d3, d4);
    }

    protected BaseSecantSolver(double d2, double d3, Method method) {
        super(d2, d3);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver, org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d2, double d3, double d4) {
        return solve(i, univariateFunction, d2, d3, d4, AllowedSolution.ANY_SIDE);
    }

    protected BaseSecantSolver(double d2, double d3, double d4, Method method) {
        super(d2, d3, d4);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }
}
