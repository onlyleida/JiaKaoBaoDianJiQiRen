package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class HighamHall54FieldIntegrator<T extends RealFieldElement<T>> extends EmbeddedRungeKuttaFieldIntegrator<T> {
    private static final String METHOD_NAME = "Higham-Hall 5(4)";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final T[] f16193e;

    public HighamHall54FieldIntegrator(Field<T> field, double d2, double d3, double d4, double d5) {
        super(field, METHOD_NAME, -1, d2, d3, d4, d5);
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(field, 7));
        this.f16193e = tArr;
        tArr[0] = fraction(-1, 20);
        tArr[1] = field.getZero();
        tArr[2] = fraction(81, 160);
        tArr[3] = fraction(-6, 5);
        tArr[4] = fraction(25, 32);
        tArr[5] = fraction(1, 16);
        tArr[6] = fraction(-1, 10);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaFieldIntegrator
    protected T estimateError(T[][] tArr, T[] tArr2, T[] tArr3, T t) {
        T zero = getField().getZero();
        int i = 0;
        while (true) {
            int i2 = this.mainSetDimension;
            if (i >= i2) {
                return (T) ((RealFieldElement) zero.divide(i2)).sqrt();
            }
            RealFieldElement realFieldElement = (RealFieldElement) tArr[0][i].multiply(this.f16193e[0]);
            int i3 = 1;
            while (true) {
                T[] tArr4 = this.f16193e;
                if (i3 >= tArr4.length) {
                    break;
                }
                realFieldElement = (RealFieldElement) realFieldElement.add(tArr[i3][i].multiply(tArr4[i3]));
                i3++;
            }
            RealFieldElement realFieldElementMax = MathUtils.max((RealFieldElement) tArr2[i].abs(), (RealFieldElement) tArr3[i].abs());
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) t.multiply(realFieldElement)).divide((RealFieldElement) (this.vecAbsoluteTolerance == null ? ((RealFieldElement) realFieldElementMax.multiply(this.scalRelativeTolerance)).add(this.scalAbsoluteTolerance) : ((RealFieldElement) realFieldElementMax.multiply(this.vecRelativeTolerance[i])).add(this.vecAbsoluteTolerance[i])));
            zero = (T) zero.add(realFieldElement2.multiply(realFieldElement2));
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[][] getA() {
        T[][] tArr = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(getField(), 6, -1));
        int i = 0;
        while (i < tArr.length) {
            int i2 = i + 1;
            tArr[i] = (RealFieldElement[]) MathArrays.buildArray(getField(), i2);
            i = i2;
        }
        tArr[0][0] = fraction(2, 9);
        tArr[1][0] = fraction(1, 12);
        tArr[1][1] = fraction(1, 4);
        tArr[2][0] = fraction(1, 8);
        tArr[2][1] = getField().getZero();
        tArr[2][2] = fraction(3, 8);
        tArr[3][0] = fraction(91, 500);
        tArr[3][1] = fraction(-27, 100);
        tArr[3][2] = fraction(78, 125);
        tArr[3][3] = fraction(8, 125);
        tArr[4][0] = fraction(-11, 20);
        tArr[4][1] = fraction(27, 20);
        tArr[4][2] = fraction(12, 5);
        tArr[4][3] = fraction(-36, 5);
        tArr[4][4] = fraction(5, 1);
        tArr[5][0] = fraction(1, 12);
        tArr[5][1] = getField().getZero();
        tArr[5][2] = fraction(27, 32);
        tArr[5][3] = fraction(-4, 3);
        tArr[5][4] = fraction(125, 96);
        tArr[5][5] = fraction(5, 48);
        return tArr;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[] getB() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 7));
        tArr[0] = fraction(1, 12);
        tArr[1] = getField().getZero();
        tArr[2] = fraction(27, 32);
        tArr[3] = fraction(-4, 3);
        tArr[4] = fraction(125, 96);
        tArr[5] = fraction(5, 48);
        tArr[6] = getField().getZero();
        return tArr;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[] getC() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 6));
        tArr[0] = fraction(2, 9);
        tArr[1] = fraction(1, 3);
        tArr[2] = fraction(1, 2);
        tArr[3] = fraction(3, 5);
        tArr[4] = getField().getOne();
        tArr[5] = getField().getOne();
        return tArr;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaFieldIntegrator
    public int getOrder() {
        return 5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaFieldIntegrator
    public HighamHall54FieldStepInterpolator<T> createInterpolator(boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new HighamHall54FieldStepInterpolator<>(getField(), z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldEquationsMapper);
    }

    public HighamHall54FieldIntegrator(Field<T> field, double d2, double d3, double[] dArr, double[] dArr2) {
        super(field, METHOD_NAME, -1, d2, d3, dArr, dArr2);
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(field, 7));
        this.f16193e = tArr;
        tArr[0] = fraction(-1, 20);
        tArr[1] = field.getZero();
        tArr[2] = fraction(81, 160);
        tArr[3] = fraction(-6, 5);
        tArr[4] = fraction(25, 32);
        tArr[5] = fraction(1, 16);
        tArr[6] = fraction(-1, 10);
    }
}
