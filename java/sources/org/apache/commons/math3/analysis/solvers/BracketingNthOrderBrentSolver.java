package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class BracketingNthOrderBrentSolver extends AbstractUnivariateSolver implements BracketedUnivariateSolver<UnivariateFunction> {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private static final int DEFAULT_MAXIMAL_ORDER = 5;
    private static final int MAXIMAL_AGING = 2;
    private static final double REDUCTION_FACTOR = 0.0625d;
    private AllowedSolution allowed;
    private final int maximalOrder;

    /* JADX INFO: renamed from: org.apache.commons.math3.analysis.solvers.BracketingNthOrderBrentSolver$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution;

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
        }
    }

    public BracketingNthOrderBrentSolver() {
        this(1.0E-6d, 5);
    }

    private double guessX(double d2, double[] dArr, double[] dArr2, int i, int i2) {
        int i3;
        int i4 = i;
        while (true) {
            i3 = i2 - 1;
            if (i4 >= i3) {
                break;
            }
            int i5 = i4 + 1;
            int i6 = i5 - i;
            while (i3 > i4) {
                dArr[i3] = (dArr[i3] - dArr[i3 - 1]) / (dArr2[i3] - dArr2[i3 - i6]);
                i3--;
            }
            i4 = i5;
        }
        double d3 = 0.0d;
        while (i3 >= i) {
            d3 = (d3 * (d2 - dArr2[i3])) + dArr[i3];
            i3--;
        }
        return d3;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0174 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x0130  */
    /* JADX WARN: Code duplicated, block: B:40:0x0136  */
    /* JADX WARN: Code duplicated, block: B:41:0x0139  */
    /* JADX WARN: Code duplicated, block: B:51:0x0158  */
    /* JADX WARN: Code duplicated, block: B:52:0x0164  */
    /* JADX WARN: Code duplicated, block: B:56:0x0175  */
    /* JADX WARN: Code duplicated, block: B:61:0x0188  */
    /* JADX WARN: Code duplicated, block: B:63:0x018c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0194  */
    /* JADX WARN: Code duplicated, block: B:66:0x019f  */
    /* JADX WARN: Code duplicated, block: B:67:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:70:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:71:0x01c9  */
    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    protected double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        int i;
        int i2;
        double dAbs;
        int i3;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        int i4;
        int i5;
        int i6;
        int i7;
        double d7;
        int i8;
        double[] dArr;
        double dGuessX;
        int i9;
        double dComputeObjectiveValue;
        double[] dArr2;
        int i10;
        int i11;
        int i12 = this.maximalOrder;
        int i13 = i12 + 1;
        double[] dArr3 = new double[i13];
        double[] dArr4 = new double[i12 + 1];
        int i14 = 0;
        dArr3[0] = getMin();
        dArr3[1] = getStartValue();
        int i15 = 2;
        dArr3[2] = getMax();
        verifySequence(dArr3[0], dArr3[1], dArr3[2]);
        dArr4[1] = computeObjectiveValue(dArr3[1]);
        if (Precision.equals(dArr4[1], 0.0d, 1)) {
            return dArr3[1];
        }
        dArr4[0] = computeObjectiveValue(dArr3[0]);
        if (Precision.equals(dArr4[0], 0.0d, 1)) {
            return dArr3[0];
        }
        if (dArr4[0] * dArr4[1] < 0.0d) {
            i = 1;
            i2 = 2;
        } else {
            dArr4[2] = computeObjectiveValue(dArr3[2]);
            if (Precision.equals(dArr4[2], 0.0d, 1)) {
                return dArr3[2];
            }
            if (dArr4[1] * dArr4[2] >= 0.0d) {
                throw new NoBracketingException(dArr3[0], dArr3[2], dArr4[0], dArr4[2]);
            }
            i = 2;
            i2 = 3;
        }
        double[] dArr5 = new double[i13];
        int i16 = i - 1;
        double d8 = dArr3[i16];
        double d9 = dArr4[i16];
        double dAbs2 = FastMath.abs(d9);
        double d10 = dArr3[i];
        double d11 = dArr4[i];
        double dAbs3 = FastMath.abs(d11);
        int i17 = i;
        int i18 = i2;
        double d12 = dAbs2;
        int i19 = 0;
        double d13 = d9;
        double d14 = d8;
        while (true) {
            double[] dArr6 = dArr4;
            double d15 = d10 - d14;
            if (d15 <= getAbsoluteAccuracy() + (getRelativeAccuracy() * FastMath.max(FastMath.abs(d14), FastMath.abs(d10))) || FastMath.max(d12, dAbs3) < getFunctionValueAccuracy()) {
                break;
            }
            if (i19 >= i15) {
                int i20 = i19 - 2;
                d3 = (1 << i20) - 1;
                int i21 = i20 + 1;
                dAbs = d12;
                i3 = i19;
                d4 = i21;
                d5 = d3 * d13;
                d6 = REDUCTION_FACTOR * d4 * d11;
            } else {
                dAbs = d12;
                i3 = i19;
                if (i14 >= 2) {
                    int i22 = i14 - 2;
                    d3 = i22 + 1;
                    d4 = (1 << i22) - 1;
                    d5 = d4 * d11;
                    d6 = REDUCTION_FACTOR * d3 * d13;
                } else {
                    d2 = 0.0d;
                }
                i4 = i18;
                i5 = 0;
                while (true) {
                    System.arraycopy(dArr3, i5, dArr5, i5, i4 - i5);
                    i6 = i3;
                    i7 = i18;
                    d7 = dAbs3;
                    i8 = i17;
                    dArr = dArr5;
                    dGuessX = guessX(d2, dArr5, dArr6, i5, i4);
                    if (dGuessX > d14 || dGuessX >= d10) {
                        if (i8 - i5 >= i4 - i8) {
                            i5++;
                        } else {
                            i4--;
                        }
                        dGuessX = Double.NaN;
                    }
                    if (!Double.isNaN(dGuessX) || i4 - i5 <= 1) {
                        break;
                    }
                    i17 = i8;
                    i18 = i7;
                    i3 = i6;
                    dAbs3 = d7;
                    dArr5 = dArr;
                }
                if (Double.isNaN(dGuessX)) {
                    dGuessX = d14 + (d15 * 0.5d);
                    i5 = i8 - 1;
                    i9 = i8;
                } else {
                    i9 = i4;
                }
                dComputeObjectiveValue = computeObjectiveValue(dGuessX);
                if (Precision.equals(dComputeObjectiveValue, 0.0d, 1)) {
                    return dGuessX;
                }
                if (i7 > 2 || (i10 = i9 - i5) == i7) {
                    dArr2 = dArr6;
                    if (i7 == i13) {
                        i10 = i7 - 1;
                        if (i8 >= (i13 + 1) / 2) {
                            System.arraycopy(dArr3, 1, dArr3, 0, i10);
                            System.arraycopy(dArr2, 1, dArr2, 0, i10);
                            i17 = i8 - 1;
                        } else {
                            i17 = i8;
                        }
                    } else {
                        i17 = i8;
                        i10 = i7;
                    }
                } else {
                    System.arraycopy(dArr3, i5, dArr3, 0, i10);
                    dArr2 = dArr6;
                    System.arraycopy(dArr2, i5, dArr2, 0, i10);
                    i17 = i8 - i5;
                }
                i11 = i17 + 1;
                int i23 = i10 - i17;
                System.arraycopy(dArr3, i17, dArr3, i11, i23);
                dArr3[i17] = dGuessX;
                System.arraycopy(dArr2, i17, dArr2, i11, i23);
                dArr2[i17] = dComputeObjectiveValue;
                i18 = i10 + 1;
                if (dComputeObjectiveValue * d13 <= 0.0d) {
                    d10 = dGuessX;
                    d11 = dComputeObjectiveValue;
                    i19 = i6 + 1;
                    dAbs3 = FastMath.abs(dComputeObjectiveValue);
                    i14 = 0;
                } else {
                    i14++;
                    d14 = dGuessX;
                    d13 = dComputeObjectiveValue;
                    i17 = i11;
                    dAbs = FastMath.abs(dComputeObjectiveValue);
                    dAbs3 = d7;
                    i19 = 0;
                }
                dArr4 = dArr2;
                d12 = dAbs;
                dArr5 = dArr;
                i15 = 2;
            }
            d2 = (d5 - d6) / (d3 + d4);
            i4 = i18;
            i5 = 0;
            while (true) {
                System.arraycopy(dArr3, i5, dArr5, i5, i4 - i5);
                i6 = i3;
                i7 = i18;
                d7 = dAbs3;
                i8 = i17;
                dArr = dArr5;
                dGuessX = guessX(d2, dArr5, dArr6, i5, i4);
                if (dGuessX > d14) {
                    if (i8 - i5 >= i4 - i8) {
                        i5++;
                    } else {
                        i4--;
                    }
                    dGuessX = Double.NaN;
                } else {
                    if (i8 - i5 >= i4 - i8) {
                        i5++;
                    } else {
                        i4--;
                    }
                    dGuessX = Double.NaN;
                }
                if (!Double.isNaN(dGuessX)) {
                    break;
                }
                break;
                break;
                i17 = i8;
                i18 = i7;
                i3 = i6;
                dAbs3 = d7;
                dArr5 = dArr;
            }
            if (Double.isNaN(dGuessX)) {
                dGuessX = d14 + (d15 * 0.5d);
                i5 = i8 - 1;
                i9 = i8;
            } else {
                i9 = i4;
            }
            dComputeObjectiveValue = computeObjectiveValue(dGuessX);
            if (Precision.equals(dComputeObjectiveValue, 0.0d, 1)) {
                return dGuessX;
            }
            if (i7 > 2) {
                dArr2 = dArr6;
                if (i7 == i13) {
                    i10 = i7 - 1;
                    if (i8 >= (i13 + 1) / 2) {
                        System.arraycopy(dArr3, 1, dArr3, 0, i10);
                        System.arraycopy(dArr2, 1, dArr2, 0, i10);
                        i17 = i8 - 1;
                    } else {
                        i17 = i8;
                    }
                } else {
                    i17 = i8;
                    i10 = i7;
                }
            } else {
                dArr2 = dArr6;
                if (i7 == i13) {
                    i10 = i7 - 1;
                    if (i8 >= (i13 + 1) / 2) {
                        System.arraycopy(dArr3, 1, dArr3, 0, i10);
                        System.arraycopy(dArr2, 1, dArr2, 0, i10);
                        i17 = i8 - 1;
                    } else {
                        i17 = i8;
                    }
                } else {
                    i17 = i8;
                    i10 = i7;
                }
            }
            i11 = i17 + 1;
            int i24 = i10 - i17;
            System.arraycopy(dArr3, i17, dArr3, i11, i24);
            dArr3[i17] = dGuessX;
            System.arraycopy(dArr2, i17, dArr2, i11, i24);
            dArr2[i17] = dComputeObjectiveValue;
            i18 = i10 + 1;
            if (dComputeObjectiveValue * d13 <= 0.0d) {
                d10 = dGuessX;
                d11 = dComputeObjectiveValue;
                i19 = i6 + 1;
                dAbs3 = FastMath.abs(dComputeObjectiveValue);
                i14 = 0;
            } else {
                i14++;
                d14 = dGuessX;
                d13 = dComputeObjectiveValue;
                i17 = i11;
                dAbs = FastMath.abs(dComputeObjectiveValue);
                dAbs3 = d7;
                i19 = 0;
            }
            dArr4 = dArr2;
            d12 = dAbs;
            dArr5 = dArr;
            i15 = 2;
        }
        double d16 = d12;
        double d17 = dAbs3;
        int i25 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[this.allowed.ordinal()];
        if (i25 == 1) {
            return d16 < d17 ? d14 : d10;
        }
        if (i25 == 2) {
            return d14;
        }
        if (i25 == 3) {
            return d10;
        }
        if (i25 == 4) {
            return d13 <= 0.0d ? d14 : d10;
        }
        if (i25 == 5) {
            return d13 < 0.0d ? d10 : d14;
        }
        throw new MathInternalError();
    }

    public int getMaximalOrder() {
        return this.maximalOrder;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d2, double d3, AllowedSolution allowedSolution) throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        this.allowed = allowedSolution;
        return super.solve(i, univariateFunction, d2, d3);
    }

    public BracketingNthOrderBrentSolver(double d2, int i) throws NumberIsTooSmallException {
        super(d2);
        if (i < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
        }
        this.maximalOrder = i;
        this.allowed = AllowedSolution.ANY_SIDE;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d2, double d3, double d4, AllowedSolution allowedSolution) throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        this.allowed = allowedSolution;
        return super.solve(i, univariateFunction, d2, d3, d4);
    }

    public BracketingNthOrderBrentSolver(double d2, double d3, int i) throws NumberIsTooSmallException {
        super(d2, d3);
        if (i >= 2) {
            this.maximalOrder = i;
            this.allowed = AllowedSolution.ANY_SIDE;
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
    }

    public BracketingNthOrderBrentSolver(double d2, double d3, double d4, int i) throws NumberIsTooSmallException {
        super(d2, d3, d4);
        if (i >= 2) {
            this.maximalOrder = i;
            this.allowed = AllowedSolution.ANY_SIDE;
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
    }
}
