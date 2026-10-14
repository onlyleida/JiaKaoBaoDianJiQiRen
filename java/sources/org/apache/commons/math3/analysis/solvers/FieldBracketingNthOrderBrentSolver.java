package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class FieldBracketingNthOrderBrentSolver<T extends RealFieldElement<T>> implements BracketedRealFieldUnivariateSolver<T> {
    private static final int MAXIMAL_AGING = 2;
    private final T absoluteAccuracy;
    private IntegerSequence.Incrementor evaluations;
    private final Field<T> field;
    private final T functionValueAccuracy;
    private final int maximalOrder;
    private final T relativeAccuracy;

    /* JADX INFO: renamed from: org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver$1, reason: invalid class name */
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

    public FieldBracketingNthOrderBrentSolver(T t, T t2, T t3, int i) throws NumberIsTooSmallException {
        if (i < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
        }
        this.field = t.getField();
        this.maximalOrder = i;
        this.absoluteAccuracy = t2;
        this.relativeAccuracy = t;
        this.functionValueAccuracy = t3;
        this.evaluations = IntegerSequence.Incrementor.create();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private T guessX(T t, T[] tArr, T[] tArr2, int i, int i2) {
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
                tArr[i3] = (RealFieldElement) ((RealFieldElement) tArr[i3].subtract(tArr[i3 - 1])).divide(tArr2[i3].subtract(tArr2[i3 - i6]));
                i3--;
            }
            i4 = i5;
        }
        T zero = this.field.getZero();
        while (i3 >= i) {
            zero = (T) tArr[i3].add(zero.multiply(t.subtract(tArr2[i3])));
            i3--;
        }
        return zero;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T getAbsoluteAccuracy() {
        return this.absoluteAccuracy;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T getFunctionValueAccuracy() {
        return this.functionValueAccuracy;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public int getMaximalOrder() {
        return this.maximalOrder;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T getRelativeAccuracy() {
        return this.relativeAccuracy;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T solve(int i, RealFieldUnivariateFunction<T> realFieldUnivariateFunction, T t, T t2, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        return (T) solve(i, realFieldUnivariateFunction, t, t2, (RealFieldElement) ((RealFieldElement) t.add(t2)).divide(2.0d), allowedSolution);
    }

    /* JADX WARN: Code duplicated, block: B:80:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:81:0x02ce  */
    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T solve(int i, RealFieldUnivariateFunction<T> realFieldUnivariateFunction, T t, T t2, T t3, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        int i2;
        int i3;
        RealFieldElement realFieldElement;
        T t4;
        int i4;
        RealFieldElement realFieldElement2;
        RealFieldElement realFieldElement3;
        int i5;
        RealFieldElement realFieldElement4;
        RealFieldElement realFieldElement5;
        T t5;
        int i6;
        RealFieldElement realFieldElement6;
        RealFieldElement realFieldElement7;
        int i7;
        RealFieldElement[] realFieldElementArr;
        RealFieldElement realFieldElement8;
        int i8;
        RealFieldElement realFieldElement9;
        double d2;
        T t6;
        RealFieldElement realFieldElement10;
        T tGuessX;
        int i9;
        int i10;
        int i11;
        int i12;
        RealFieldElement realFieldElement11;
        int i13;
        FieldBracketingNthOrderBrentSolver<T> fieldBracketingNthOrderBrentSolver = this;
        RealFieldUnivariateFunction<T> realFieldUnivariateFunction2 = realFieldUnivariateFunction;
        MathUtils.checkNotNull(realFieldUnivariateFunction);
        fieldBracketingNthOrderBrentSolver.evaluations = fieldBracketingNthOrderBrentSolver.evaluations.withMaximalCount(i).withStart(0);
        T zero = fieldBracketingNthOrderBrentSolver.field.getZero();
        RealFieldElement realFieldElement12 = (RealFieldElement) zero.add(Double.NaN);
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) MathArrays.buildArray(fieldBracketingNthOrderBrentSolver.field, fieldBracketingNthOrderBrentSolver.maximalOrder + 1);
        RealFieldElement[] realFieldElementArr3 = (RealFieldElement[]) MathArrays.buildArray(fieldBracketingNthOrderBrentSolver.field, fieldBracketingNthOrderBrentSolver.maximalOrder + 1);
        realFieldElementArr2[0] = t;
        realFieldElementArr2[1] = t3;
        realFieldElementArr2[2] = t2;
        fieldBracketingNthOrderBrentSolver.evaluations.increment();
        realFieldElementArr3[1] = realFieldUnivariateFunction2.value(realFieldElementArr2[1]);
        double d3 = 0.0d;
        if (Precision.equals(realFieldElementArr3[1].getReal(), 0.0d, 1)) {
            return (T) realFieldElementArr2[1];
        }
        fieldBracketingNthOrderBrentSolver.evaluations.increment();
        realFieldElementArr3[0] = realFieldUnivariateFunction2.value(realFieldElementArr2[0]);
        if (Precision.equals(realFieldElementArr3[0].getReal(), 0.0d, 1)) {
            return (T) realFieldElementArr2[0];
        }
        if (((RealFieldElement) realFieldElementArr3[0].multiply(realFieldElementArr3[1])).getReal() < 0.0d) {
            i2 = 1;
            i3 = 2;
        } else {
            fieldBracketingNthOrderBrentSolver.evaluations.increment();
            realFieldElementArr3[2] = realFieldUnivariateFunction2.value(realFieldElementArr2[2]);
            if (Precision.equals(realFieldElementArr3[2].getReal(), 0.0d, 1)) {
                return (T) realFieldElementArr2[2];
            }
            if (((RealFieldElement) realFieldElementArr3[1].multiply(realFieldElementArr3[2])).getReal() >= 0.0d) {
                throw new NoBracketingException(realFieldElementArr2[0].getReal(), realFieldElementArr2[2].getReal(), realFieldElementArr3[0].getReal(), realFieldElementArr3[2].getReal());
            }
            i2 = 2;
            i3 = 3;
        }
        RealFieldElement[] realFieldElementArr4 = (RealFieldElement[]) MathArrays.buildArray(fieldBracketingNthOrderBrentSolver.field, realFieldElementArr2.length);
        int i14 = i2 - 1;
        RealFieldElement realFieldElement13 = realFieldElementArr2[i14];
        RealFieldElement realFieldElement14 = realFieldElementArr3[i14];
        RealFieldElement realFieldElement15 = (RealFieldElement) realFieldElement13.abs();
        RealFieldElement realFieldElement16 = (RealFieldElement) realFieldElement14.abs();
        RealFieldElement realFieldElement17 = realFieldElementArr2[i2];
        RealFieldElement realFieldElement18 = realFieldElementArr3[i2];
        RealFieldElement realFieldElement19 = (RealFieldElement) realFieldElement17.abs();
        T t7 = (T) realFieldElement13;
        RealFieldElement realFieldElement20 = realFieldElement16;
        Object obj = realFieldElement17;
        RealFieldElement realFieldElement21 = realFieldElement18;
        RealFieldElement realFieldElement22 = (RealFieldElement) realFieldElement18.abs();
        int i15 = 0;
        int i16 = 0;
        int i17 = i2;
        RealFieldElement realFieldElement23 = realFieldElement14;
        while (true) {
            RealFieldElement realFieldElement24 = ((RealFieldElement) realFieldElement15.subtract(realFieldElement19)).getReal() < d3 ? realFieldElement19 : realFieldElement15;
            RealFieldElement realFieldElement25 = realFieldElement22;
            int i18 = i3;
            int i19 = i17;
            RealFieldElement realFieldElement26 = ((RealFieldElement) realFieldElement20.subtract(realFieldElement25)).getReal() < 0.0d ? realFieldElement25 : realFieldElement20;
            realFieldElement = realFieldElement25;
            RealFieldElement realFieldElement27 = (RealFieldElement) fieldBracketingNthOrderBrentSolver.absoluteAccuracy.add(fieldBracketingNthOrderBrentSolver.relativeAccuracy.multiply(realFieldElement24));
            t4 = (T) obj;
            double d4 = 0.0d;
            if (((RealFieldElement) ((RealFieldElement) t4.subtract(t7)).subtract(realFieldElement27)).getReal() <= 0.0d || ((RealFieldElement) realFieldElement26.subtract(fieldBracketingNthOrderBrentSolver.functionValueAccuracy)).getReal() < 0.0d) {
                break;
            }
            T t8 = t4;
            int i20 = i15;
            if (i20 >= 2) {
                realFieldElement3 = realFieldElement21;
                realFieldElement4 = (RealFieldElement) ((RealFieldElement) realFieldElement3.divide(16.0d)).negate();
                i4 = i20;
                realFieldElement2 = realFieldElement19;
                i5 = i16;
            } else {
                i4 = i20;
                realFieldElement2 = realFieldElement19;
                realFieldElement3 = realFieldElement21;
                i5 = i16;
                realFieldElement4 = i5 >= 2 ? (RealFieldElement) ((RealFieldElement) realFieldElement23.divide(16.0d)).negate() : zero;
            }
            int i21 = i18;
            int i22 = 0;
            while (true) {
                System.arraycopy(realFieldElementArr2, i22, realFieldElementArr4, i22, i21 - i22);
                realFieldElement5 = realFieldElement23;
                t5 = zero;
                i6 = i18;
                realFieldElement6 = realFieldElement12;
                realFieldElement7 = realFieldElement15;
                i7 = i19;
                realFieldElementArr = realFieldElementArr4;
                realFieldElement8 = realFieldElement;
                i8 = i4;
                int i23 = i22;
                realFieldElement9 = realFieldElement20;
                d2 = d4;
                t6 = t8;
                realFieldElement10 = realFieldElement3;
                tGuessX = guessX(realFieldElement4, realFieldElementArr4, realFieldElementArr3, i22, i21);
                if (((RealFieldElement) tGuessX.subtract(t7)).getReal() <= d2 || ((RealFieldElement) tGuessX.subtract(t6)).getReal() >= d2) {
                    if (i7 - i23 >= i21 - i7) {
                        i22 = i23 + 1;
                    } else {
                        i21--;
                        i22 = i23;
                    }
                    tGuessX = realFieldElement6;
                } else {
                    i22 = i23;
                }
                if (!Double.isNaN(tGuessX.getReal()) || i21 - i22 <= 1) {
                    break;
                }
                d4 = d2;
                realFieldElementArr4 = realFieldElementArr;
                realFieldElement3 = realFieldElement10;
                realFieldElement20 = realFieldElement9;
                i4 = i8;
                realFieldElement23 = realFieldElement5;
                realFieldElement = realFieldElement8;
                realFieldElement15 = realFieldElement7;
                t8 = t6;
                i19 = i7;
                realFieldElement12 = realFieldElement6;
                i18 = i6;
                zero = t5;
            }
            if (Double.isNaN(tGuessX.getReal())) {
                tGuessX = (T) t7.add(((RealFieldElement) t6.subtract(t7)).divide(2.0d));
                i22 = i7 - 1;
                i9 = i7;
            } else {
                i9 = i21;
            }
            fieldBracketingNthOrderBrentSolver.evaluations.increment();
            RealFieldElement realFieldElementValue = realFieldUnivariateFunction2.value(tGuessX);
            if (Precision.equals(realFieldElementValue.getReal(), d2, 1)) {
                return (T) tGuessX;
            }
            if (i6 <= 2 || (i10 = i9 - i22) == i6) {
                if (i6 == realFieldElementArr2.length) {
                    i10 = i6 - 1;
                    if (i7 >= (realFieldElementArr2.length + 1) / 2) {
                        System.arraycopy(realFieldElementArr2, 1, realFieldElementArr2, 0, i10);
                        System.arraycopy(realFieldElementArr3, 1, realFieldElementArr3, 0, i10);
                        i11 = i7 - 1;
                    }
                } else {
                    i10 = i6;
                }
                i12 = i7 + 1;
                int i24 = i10 - i7;
                System.arraycopy(realFieldElementArr2, i7, realFieldElementArr2, i12, i24);
                realFieldElementArr2[i7] = tGuessX;
                System.arraycopy(realFieldElementArr3, i7, realFieldElementArr3, i12, i24);
                realFieldElementArr3[i7] = realFieldElementValue;
                int i25 = i10 + 1;
                if (((RealFieldElement) realFieldElementValue.multiply(realFieldElement5)).getReal() <= d2) {
                    i13 = i8 + 1;
                    realFieldElement22 = (RealFieldElement) realFieldElementValue.abs();
                    realFieldElement21 = realFieldElementValue;
                    i16 = 0;
                    obj = tGuessX;
                    realFieldElement23 = realFieldElement5;
                    realFieldElement11 = realFieldElement9;
                } else {
                    realFieldElement11 = (RealFieldElement) realFieldElementValue.abs();
                    i16 = i5 + 1;
                    t7 = tGuessX;
                    obj = t6;
                    realFieldElement23 = realFieldElementValue;
                    i7 = i12;
                    realFieldElement21 = realFieldElement10;
                    realFieldElement22 = realFieldElement8;
                    i13 = 0;
                }
                fieldBracketingNthOrderBrentSolver = this;
                realFieldUnivariateFunction2 = realFieldUnivariateFunction;
                realFieldElement19 = realFieldElement2;
                i3 = i25;
                i17 = i7;
                realFieldElement12 = realFieldElement6;
                realFieldElementArr4 = realFieldElementArr;
                zero = t5;
                i15 = i13;
                realFieldElement15 = realFieldElement7;
                realFieldElement20 = realFieldElement11;
                d3 = d2;
            } else {
                System.arraycopy(realFieldElementArr2, i22, realFieldElementArr2, 0, i10);
                System.arraycopy(realFieldElementArr3, i22, realFieldElementArr3, 0, i10);
                i11 = i7 - i22;
            }
            i7 = i11;
            i12 = i7 + 1;
            int i26 = i10 - i7;
            System.arraycopy(realFieldElementArr2, i7, realFieldElementArr2, i12, i26);
            realFieldElementArr2[i7] = tGuessX;
            System.arraycopy(realFieldElementArr3, i7, realFieldElementArr3, i12, i26);
            realFieldElementArr3[i7] = realFieldElementValue;
            int i27 = i10 + 1;
            if (((RealFieldElement) realFieldElementValue.multiply(realFieldElement5)).getReal() <= d2) {
                i13 = i8 + 1;
                realFieldElement22 = (RealFieldElement) realFieldElementValue.abs();
                realFieldElement21 = realFieldElementValue;
                i16 = 0;
                obj = tGuessX;
                realFieldElement23 = realFieldElement5;
                realFieldElement11 = realFieldElement9;
            } else {
                realFieldElement11 = (RealFieldElement) realFieldElementValue.abs();
                i16 = i5 + 1;
                t7 = tGuessX;
                obj = t6;
                realFieldElement23 = realFieldElementValue;
                i7 = i12;
                realFieldElement21 = realFieldElement10;
                realFieldElement22 = realFieldElement8;
                i13 = 0;
            }
            fieldBracketingNthOrderBrentSolver = this;
            realFieldUnivariateFunction2 = realFieldUnivariateFunction;
            realFieldElement19 = realFieldElement2;
            i3 = i27;
            i17 = i7;
            realFieldElement12 = realFieldElement6;
            realFieldElementArr4 = realFieldElementArr;
            zero = t5;
            i15 = i13;
            realFieldElement15 = realFieldElement7;
            realFieldElement20 = realFieldElement11;
            d3 = d2;
        }
        RealFieldElement realFieldElement28 = realFieldElement20;
        RealFieldElement realFieldElement29 = realFieldElement23;
        int i28 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[allowedSolution.ordinal()];
        if (i28 == 1) {
            return ((RealFieldElement) realFieldElement28.subtract(realFieldElement)).getReal() < 0.0d ? t7 : t4;
        }
        if (i28 == 2) {
            return t7;
        }
        if (i28 == 3) {
            return t4;
        }
        if (i28 == 4) {
            return realFieldElement29.getReal() <= 0.0d ? t7 : t4;
        }
        if (i28 == 5) {
            return realFieldElement29.getReal() < 0.0d ? t4 : t7;
        }
        throw new MathInternalError(null);
    }
}
