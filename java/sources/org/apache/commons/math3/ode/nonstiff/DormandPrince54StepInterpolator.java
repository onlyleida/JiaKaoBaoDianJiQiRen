package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* JADX INFO: loaded from: classes6.dex */
class DormandPrince54StepInterpolator extends RungeKuttaStepInterpolator {
    private static final double A70 = 0.09114583333333333d;
    private static final double A72 = 0.44923629829290207d;
    private static final double A73 = 0.6510416666666666d;
    private static final double A74 = -0.322376179245283d;
    private static final double A75 = 0.13095238095238096d;
    private static final double D0 = -1.1270175653862835d;
    private static final double D2 = 2.675424484351598d;
    private static final double D3 = -5.685526961588504d;
    private static final double D4 = 3.5219323679207912d;
    private static final double D5 = -1.7672812570757455d;
    private static final double D6 = 2.382468931778144d;
    private static final long serialVersionUID = 20111120;
    private double[] v1;
    private double[] v2;
    private double[] v3;
    private double[] v4;
    private boolean vectorsInitialized;

    public DormandPrince54StepInterpolator() {
        this.v1 = null;
        this.v2 = null;
        this.v3 = null;
        this.v4 = null;
        this.vectorsInitialized = false;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        char c = 0;
        if (!this.vectorsInitialized) {
            if (this.v1 == null) {
                double[] dArr = this.interpolatedState;
                this.v1 = new double[dArr.length];
                this.v2 = new double[dArr.length];
                this.v3 = new double[dArr.length];
                this.v4 = new double[dArr.length];
            }
            int i = 0;
            while (i < this.interpolatedState.length) {
                double[][] dArr2 = this.yDotK;
                double d4 = dArr2[c][i];
                double d5 = dArr2[2][i];
                double d6 = dArr2[3][i];
                double d7 = dArr2[4][i];
                double d8 = dArr2[5][i];
                double d9 = dArr2[6][i];
                double[] dArr3 = this.v1;
                dArr3[i] = (A70 * d4) + (A72 * d5) + (A73 * d6) + (A74 * d7) + (A75 * d8);
                double[] dArr4 = this.v2;
                dArr4[i] = d4 - dArr3[i];
                this.v3[i] = (dArr3[i] - dArr4[i]) - d9;
                this.v4[i] = (d4 * D0) + (d5 * D2) + (d6 * D3) + (d7 * D4) + (d8 * D5) + (d9 * D6);
                i++;
                c = 0;
            }
            this.vectorsInitialized = true;
        }
        double d10 = 1.0d - d2;
        double d11 = d2 * 2.0d;
        double d12 = 1.0d - d11;
        double d13 = (2.0d - (d2 * 3.0d)) * d2;
        double d14 = d11 * (((d11 - 3.0d) * d2) + 1.0d);
        if (this.previousState == null || d2 > 0.5d) {
            int i2 = 0;
            while (true) {
                double[] dArr5 = this.interpolatedState;
                if (i2 >= dArr5.length) {
                    return;
                }
                double d15 = this.currentState[i2];
                double[] dArr6 = this.v1;
                double d16 = dArr6[i2];
                double[] dArr7 = this.v2;
                double d17 = dArr7[i2];
                double[] dArr8 = this.v3;
                double d18 = dArr8[i2];
                double[] dArr9 = this.v4;
                dArr5[i2] = d15 - ((d16 - ((d17 + ((d18 + (dArr9[i2] * d10)) * d2)) * d2)) * d3);
                this.interpolatedDerivatives[i2] = dArr6[i2] + (dArr7[i2] * d12) + (dArr8[i2] * d13) + (dArr9[i2] * d14);
                i2++;
            }
        } else {
            int i3 = 0;
            while (true) {
                double[] dArr10 = this.interpolatedState;
                if (i3 >= dArr10.length) {
                    return;
                }
                double d19 = this.previousState[i3];
                double d20 = this.f16196h * d2;
                double[] dArr11 = this.v1;
                double d21 = dArr11[i3];
                double d22 = d14;
                double[] dArr12 = this.v2;
                double d23 = dArr12[i3];
                double[] dArr13 = this.v3;
                double d24 = dArr13[i3];
                double d25 = d13;
                double[] dArr14 = this.v4;
                dArr10[i3] = d19 + (d20 * (d21 + ((d23 + ((d24 + (dArr14[i3] * d10)) * d2)) * d10)));
                this.interpolatedDerivatives[i3] = dArr11[i3] + (dArr12[i3] * d12) + (dArr13[i3] * d25) + (d22 * dArr14[i3]);
                i3++;
                d14 = d22;
                d13 = d25;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new DormandPrince54StepInterpolator(this);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaStepInterpolator
    public void reinitialize(AbstractIntegrator abstractIntegrator, double[] dArr, double[][] dArr2, boolean z, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super.reinitialize(abstractIntegrator, dArr, dArr2, z, equationsMapper, equationsMapperArr);
        this.v1 = null;
        this.v2 = null;
        this.v3 = null;
        this.v4 = null;
        this.vectorsInitialized = false;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void storeTime(double d2) {
        super.storeTime(d2);
        this.vectorsInitialized = false;
    }

    DormandPrince54StepInterpolator(DormandPrince54StepInterpolator dormandPrince54StepInterpolator) {
        super(dormandPrince54StepInterpolator);
        double[] dArr = dormandPrince54StepInterpolator.v1;
        if (dArr == null) {
            this.v1 = null;
            this.v2 = null;
            this.v3 = null;
            this.v4 = null;
            this.vectorsInitialized = false;
            return;
        }
        this.v1 = (double[]) dArr.clone();
        this.v2 = (double[]) dormandPrince54StepInterpolator.v2.clone();
        this.v3 = (double[]) dormandPrince54StepInterpolator.v3.clone();
        this.v4 = (double[]) dormandPrince54StepInterpolator.v4.clone();
        this.vectorsInitialized = dormandPrince54StepInterpolator.vectorsInitialized;
    }
}
