package org.apache.commons.math3.ode.nonstiff;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* JADX INFO: loaded from: classes6.dex */
class DormandPrince853StepInterpolator extends RungeKuttaStepInterpolator {
    private static final double B_01 = 0.054293734116568765d;
    private static final double B_06 = 4.450312892752409d;
    private static final double B_07 = 1.8915178993145003d;
    private static final double B_08 = -5.801203960010585d;
    private static final double B_09 = 0.3111643669578199d;
    private static final double B_10 = -0.1521609496625161d;
    private static final double B_11 = 0.20136540080403034d;
    private static final double B_12 = 0.04471061572777259d;
    private static final double C14 = 0.1d;
    private static final double C15 = 0.2d;
    private static final double C16 = 0.7777777777777778d;
    private static final double[][] D = {new double[]{-8.428938276109013d, 0.5667149535193777d, -3.0689499459498917d, 2.38466765651207d, 2.1170345824450285d, -0.871391583777973d, 2.2404374302607883d, 0.6315787787694688d, -0.08899033645133331d, 18.148505520854727d, -9.194632392478356d, -4.436036387594894d}, new double[]{10.427508642579134d, 242.28349177525817d, 165.20045171727028d, -374.5467547226902d, -22.113666853125302d, 7.733432668472264d, -30.674084731089398d, -9.332130526430229d, 15.697238121770845d, -31.139403219565178d, -9.35292435884448d, 35.81684148639408d}, new double[]{19.985053242002433d, -387.0373087493518d, -189.17813819516758d, 527.8081592054236d, -11.573902539959631d, 6.8812326946963d, -1.0006050966910838d, 0.7777137798053443d, -2.778205752353508d, -60.19669523126412d, 84.32040550667716d, 11.99229113618279d}, new double[]{-25.69393346270375d, -154.18974869023643d, -231.5293791760455d, 357.6391179106141d, 93.4053241836243d, -37.45832313645163d, 104.0996495089623d, 29.8402934266605d, -43.53345659001114d, 96.32455395918828d, -39.17726167561544d, -149.72683625798564d}};
    private static final double K14_01 = 0.0018737681664791894d;
    private static final double K14_06 = -4.450312892752409d;
    private static final double K14_07 = -1.6380176890978755d;
    private static final double K14_08 = 5.554964922539782d;
    private static final double K14_09 = -0.4353557902216363d;
    private static final double K14_10 = 0.30545274794128174d;
    private static final double K14_11 = -0.19316434850839564d;
    private static final double K14_12 = -0.03714271806722689d;
    private static final double K14_13 = -0.008298d;
    private static final double K15_01 = -0.022459085953066622d;
    private static final double K15_06 = -4.422011983080043d;
    private static final double K15_07 = -1.8379759110070617d;
    private static final double K15_08 = 5.746280211439194d;
    private static final double K15_09 = -0.3111643669578199d;
    private static final double K15_10 = 0.1521609496625161d;
    private static final double K15_11 = -0.2014737481327276d;
    private static final double K15_12 = -0.04432804463693693d;
    private static final double K15_13 = -3.4046500868740456E-4d;
    private static final double K15_14 = 0.1413124436746325d;
    private static final double K16_01 = -0.4831900357003607d;
    private static final double K16_06 = -9.147934308113573d;
    private static final double K16_07 = 5.791903296748099d;
    private static final double K16_08 = 9.870193778407696d;
    private static final double K16_09 = 0.04556282049746119d;
    private static final double K16_10 = 0.1521609496625161d;
    private static final double K16_11 = -0.20136540080403034d;
    private static final double K16_12 = -0.04471061572777259d;
    private static final double K16_13 = -0.0013990241651590145d;
    private static final double K16_14 = 2.9475147891527724d;
    private static final double K16_15 = -9.15095847217987d;
    private static final long serialVersionUID = 20111120;
    private double[][] v;
    private boolean vectorsInitialized;
    private double[][] yDotKLast;

    public DormandPrince853StepInterpolator() {
        this.yDotKLast = null;
        this.v = null;
        this.vectorsInitialized = false;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) throws MaxCountExceededException {
        if (!this.vectorsInitialized) {
            char c = 7;
            if (this.v == null) {
                this.v = new double[7][];
                for (int i = 0; i < 7; i++) {
                    this.v[i] = new double[this.interpolatedState.length];
                }
            }
            finalizeStep();
            int i2 = 0;
            while (i2 < this.interpolatedState.length) {
                double[][] dArr = this.yDotK;
                double d4 = dArr[0][i2];
                double d5 = dArr[5][i2];
                double d6 = dArr[6][i2];
                double d7 = dArr[c][i2];
                double d8 = dArr[8][i2];
                double d9 = dArr[9][i2];
                double d10 = dArr[10][i2];
                double d11 = dArr[11][i2];
                double d12 = dArr[12][i2];
                double[][] dArr2 = this.yDotKLast;
                double d13 = dArr2[0][i2];
                double d14 = dArr2[1][i2];
                double d15 = dArr2[2][i2];
                double[][] dArr3 = this.v;
                dArr3[0][i2] = (B_01 * d4) + (B_06 * d5) + (B_07 * d6) + (B_08 * d7) + (B_09 * d8) + (B_10 * d9) + (B_11 * d10) + (B_12 * d11);
                dArr3[1][i2] = d4 - dArr3[0][i2];
                dArr3[2][i2] = (dArr3[0][i2] - dArr3[1][i2]) - dArr[12][i2];
                int i3 = 0;
                while (true) {
                    double[][] dArr4 = D;
                    if (i3 < dArr4.length) {
                        this.v[i3 + 3][i2] = (dArr4[i3][0] * d4) + (dArr4[i3][1] * d5) + (dArr4[i3][2] * d6) + (dArr4[i3][3] * d7) + (dArr4[i3][4] * d8) + (dArr4[i3][5] * d9) + (dArr4[i3][6] * d10) + (dArr4[i3][7] * d11) + (dArr4[i3][8] * d12) + (dArr4[i3][9] * d13) + (dArr4[i3][10] * d14) + (dArr4[i3][11] * d15);
                        i3++;
                    }
                }
                i2++;
                c = 7;
            }
            this.vectorsInitialized = true;
        }
        double d16 = 1.0d - d2;
        double d17 = d2 * 2.0d;
        double d18 = d2 * d2;
        double d19 = 1.0d - d17;
        double d20 = (2.0d - (d2 * 3.0d)) * d2;
        double d21 = d17 * (((d17 - 3.0d) * d2) + 1.0d);
        double d22 = ((((5.0d * d2) - 8.0d) * d2) + 3.0d) * d18;
        double d23 = ((d2 * (((15.0d - (6.0d * d2)) * d2) - 12.0d)) + 3.0d) * d18;
        double d24 = d18 * d2 * ((d2 * (((18.0d - (7.0d * d2)) * d2) - 15.0d)) + 4.0d);
        if (this.previousState == null || d2 > 0.5d) {
            int i4 = 0;
            while (true) {
                double[] dArr5 = this.interpolatedState;
                if (i4 >= dArr5.length) {
                    return;
                }
                double d25 = this.currentState[i4];
                double[][] dArr6 = this.v;
                dArr5[i4] = d25 - (d3 * (dArr6[0][i4] - ((dArr6[1][i4] + ((dArr6[2][i4] + ((dArr6[3][i4] + ((dArr6[4][i4] + ((dArr6[5][i4] + (dArr6[6][i4] * d2)) * d16)) * d2)) * d16)) * d2)) * d2)));
                this.interpolatedDerivatives[i4] = dArr6[0][i4] + (dArr6[1][i4] * d19) + (dArr6[2][i4] * d20) + (dArr6[3][i4] * d21) + (dArr6[4][i4] * d22) + (dArr6[5][i4] * d23) + (dArr6[6][i4] * d24);
                i4++;
            }
        } else {
            int i5 = 0;
            while (true) {
                double[] dArr7 = this.interpolatedState;
                if (i5 >= dArr7.length) {
                    return;
                }
                double d26 = this.previousState[i5];
                double d27 = this.f16196h * d2;
                double[][] dArr8 = this.v;
                dArr7[i5] = d26 + (d27 * (dArr8[0][i5] + ((dArr8[1][i5] + ((dArr8[2][i5] + ((dArr8[3][i5] + (d2 * (dArr8[4][i5] + ((dArr8[5][i5] + (dArr8[6][i5] * d2)) * d16)))) * d16)) * d2)) * d16)));
                this.interpolatedDerivatives[i5] = dArr8[0][i5] + (dArr8[1][i5] * d19) + (dArr8[2][i5] * d20) + (dArr8[3][i5] * d21) + (dArr8[4][i5] * d22) + (dArr8[5][i5] * d23) + (dArr8[6][i5] * d24);
                i5++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new DormandPrince853StepInterpolator(this);
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void doFinalize() throws MaxCountExceededException {
        char c;
        char c2;
        double[] dArr = this.currentState;
        if (dArr == null) {
            return;
        }
        double[] dArr2 = new double[dArr.length];
        double globalPreviousTime = getGlobalPreviousTime();
        int i = 0;
        while (true) {
            double[] dArr3 = this.currentState;
            c = '\n';
            c2 = '\t';
            if (i >= dArr3.length) {
                break;
            }
            double[][] dArr4 = this.yDotK;
            dArr2[i] = dArr3[i] + (this.f16196h * ((dArr4[0][i] * K14_01) + (dArr4[5][i] * K14_06) + (dArr4[6][i] * K14_07) + (dArr4[7][i] * K14_08) + (dArr4[8][i] * K14_09) + (dArr4[9][i] * K14_10) + (dArr4[10][i] * K14_11) + (dArr4[11][i] * K14_12) + (dArr4[12][i] * K14_13)));
            i++;
        }
        this.integrator.computeDerivatives((this.f16196h * C14) + globalPreviousTime, dArr2, this.yDotKLast[0]);
        int i2 = 0;
        while (true) {
            double[] dArr5 = this.currentState;
            if (i2 >= dArr5.length) {
                break;
            }
            double[][] dArr6 = this.yDotK;
            dArr2[i2] = dArr5[i2] + (this.f16196h * ((dArr6[0][i2] * K15_01) + (dArr6[5][i2] * K15_06) + (dArr6[6][i2] * K15_07) + (dArr6[7][i2] * K15_08) + (dArr6[8][i2] * K15_09) + (dArr6[c2][i2] * 0.1521609496625161d) + (dArr6[c][i2] * K15_11) + (dArr6[11][i2] * K15_12) + (dArr6[12][i2] * K15_13) + (this.yDotKLast[0][i2] * K15_14)));
            i2++;
            c = '\n';
            c2 = '\t';
        }
        this.integrator.computeDerivatives((this.f16196h * C15) + globalPreviousTime, dArr2, this.yDotKLast[1]);
        int i3 = 0;
        while (true) {
            double[] dArr7 = this.currentState;
            if (i3 >= dArr7.length) {
                this.integrator.computeDerivatives(globalPreviousTime + (this.f16196h * C16), dArr2, this.yDotKLast[2]);
                return;
            }
            double[][] dArr8 = this.yDotK;
            double d2 = (dArr8[0][i3] * K16_01) + (dArr8[5][i3] * K16_06) + (dArr8[6][i3] * K16_07) + (dArr8[7][i3] * K16_08) + (dArr8[8][i3] * K16_09) + (dArr8[9][i3] * 0.1521609496625161d) + (dArr8[10][i3] * K16_11) + (dArr8[11][i3] * K16_12) + (dArr8[12][i3] * K16_13);
            double[][] dArr9 = this.yDotKLast;
            dArr2[i3] = dArr7[i3] + (this.f16196h * (d2 + (dArr9[0][i3] * K16_14) + (dArr9[1][i3] * K16_15)));
            i3++;
        }
    }

    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.yDotKLast = new double[3][];
        int i = objectInput.readInt();
        double[][] dArr = this.yDotKLast;
        dArr[0] = i < 0 ? null : new double[i];
        dArr[1] = i < 0 ? null : new double[i];
        dArr[2] = i >= 0 ? new double[i] : null;
        for (int i2 = 0; i2 < i; i2++) {
            this.yDotKLast[0][i2] = objectInput.readDouble();
            this.yDotKLast[1][i2] = objectInput.readDouble();
            this.yDotKLast[2][i2] = objectInput.readDouble();
        }
        super.readExternal(objectInput);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaStepInterpolator
    public void reinitialize(AbstractIntegrator abstractIntegrator, double[] dArr, double[][] dArr2, boolean z, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super.reinitialize(abstractIntegrator, dArr, dArr2, z, equationsMapper, equationsMapperArr);
        int length = this.currentState.length;
        this.yDotKLast = new double[3][];
        int i = 0;
        while (true) {
            double[][] dArr3 = this.yDotKLast;
            if (i >= dArr3.length) {
                break;
            }
            dArr3[i] = new double[length];
            i++;
        }
        this.v = new double[7][];
        int i2 = 0;
        while (true) {
            double[][] dArr4 = this.v;
            if (i2 >= dArr4.length) {
                this.vectorsInitialized = false;
                return;
            } else {
                dArr4[i2] = new double[length];
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void storeTime(double d2) {
        super.storeTime(d2);
        this.vectorsInitialized = false;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        try {
            finalizeStep();
            double[] dArr = this.currentState;
            int length = dArr == null ? -1 : dArr.length;
            objectOutput.writeInt(length);
            for (int i = 0; i < length; i++) {
                objectOutput.writeDouble(this.yDotKLast[0][i]);
                objectOutput.writeDouble(this.yDotKLast[1][i]);
                objectOutput.writeDouble(this.yDotKLast[2][i]);
            }
            super.writeExternal(objectOutput);
        } catch (MaxCountExceededException e2) {
            IOException iOException = new IOException(e2.getLocalizedMessage());
            iOException.initCause(e2);
            throw iOException;
        }
    }

    DormandPrince853StepInterpolator(DormandPrince853StepInterpolator dormandPrince853StepInterpolator) {
        super(dormandPrince853StepInterpolator);
        double[] dArr = dormandPrince853StepInterpolator.currentState;
        if (dArr == null) {
            this.yDotKLast = null;
            this.v = null;
            this.vectorsInitialized = false;
            return;
        }
        int length = dArr.length;
        this.yDotKLast = new double[3][];
        int i = 0;
        while (true) {
            double[][] dArr2 = this.yDotKLast;
            if (i >= dArr2.length) {
                break;
            }
            dArr2[i] = new double[length];
            System.arraycopy(dormandPrince853StepInterpolator.yDotKLast[i], 0, dArr2[i], 0, length);
            i++;
        }
        this.v = new double[7][];
        int i2 = 0;
        while (true) {
            double[][] dArr3 = this.v;
            if (i2 < dArr3.length) {
                dArr3[i2] = new double[length];
                System.arraycopy(dormandPrince853StepInterpolator.v[i2], 0, dArr3[i2], 0, length);
                i2++;
            } else {
                this.vectorsInitialized = dormandPrince853StepInterpolator.vectorsInitialized;
                return;
            }
        }
    }
}
