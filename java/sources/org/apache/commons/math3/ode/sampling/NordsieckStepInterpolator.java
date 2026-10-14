package org.apache.commons.math3.ode.sampling;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class NordsieckStepInterpolator extends AbstractStepInterpolator {
    private static final long serialVersionUID = -7179861704951334960L;
    private Array2DRowRealMatrix nordsieck;
    private double referenceTime;
    private double[] scaled;
    private double scalingH;
    protected double[] stateVariation;

    public NordsieckStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        int i;
        double d4 = this.interpolatedTime - this.referenceTime;
        double d5 = d4 / this.scalingH;
        Arrays.fill(this.stateVariation, 0.0d);
        Arrays.fill(this.interpolatedDerivatives, 0.0d);
        double[][] dataRef = this.nordsieck.getDataRef();
        int length = dataRef.length;
        while (true) {
            length--;
            i = 0;
            if (length < 0) {
                break;
            }
            int i2 = length + 2;
            double[] dArr = dataRef[length];
            double dPow = FastMath.pow(d5, i2);
            while (i < dArr.length) {
                double d6 = dArr[i] * dPow;
                double[] dArr2 = this.stateVariation;
                dArr2[i] = dArr2[i] + d6;
                double[] dArr3 = this.interpolatedDerivatives;
                dArr3[i] = dArr3[i] + (((double) i2) * d6);
                i++;
                dArr = dArr;
                dPow = dPow;
            }
        }
        while (true) {
            double[] dArr4 = this.currentState;
            if (i >= dArr4.length) {
                return;
            }
            double[] dArr5 = this.stateVariation;
            double d7 = dArr5[i];
            double[] dArr6 = this.scaled;
            dArr5[i] = d7 + (dArr6[i] * d5);
            this.interpolatedState[i] = dArr4[i] + dArr5[i];
            double[] dArr7 = this.interpolatedDerivatives;
            dArr7[i] = (dArr7[i] + (dArr6[i] * d5)) / d4;
            i++;
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new NordsieckStepInterpolator(this);
    }

    public double[] getInterpolatedStateVariation() throws MaxCountExceededException {
        getInterpolatedState();
        return this.stateVariation;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        double baseExternal = readBaseExternal(objectInput);
        this.scalingH = objectInput.readDouble();
        this.referenceTime = objectInput.readDouble();
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        boolean z = objectInput.readBoolean();
        if (z) {
            this.scaled = new double[length];
            for (int i = 0; i < length; i++) {
                this.scaled[i] = objectInput.readDouble();
            }
        } else {
            this.scaled = null;
        }
        boolean z2 = objectInput.readBoolean();
        if (z2) {
            this.nordsieck = (Array2DRowRealMatrix) objectInput.readObject();
        } else {
            this.nordsieck = null;
        }
        if (z && z2) {
            this.stateVariation = new double[length];
            setInterpolatedTime(baseExternal);
        } else {
            this.stateVariation = null;
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void reinitialize(double[] dArr, boolean z, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super.reinitialize(dArr, z, equationsMapper, equationsMapperArr);
        this.stateVariation = new double[dArr.length];
    }

    public void rescale(double d2) {
        double d3 = d2 / this.scalingH;
        int i = 0;
        while (true) {
            double[] dArr = this.scaled;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * d3;
            i++;
        }
        double d4 = d3;
        for (double[] dArr2 : this.nordsieck.getDataRef()) {
            d4 *= d3;
            for (int i2 = 0; i2 < dArr2.length; i2++) {
                dArr2[i2] = dArr2[i2] * d4;
            }
        }
        this.scalingH = d2;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        writeBaseExternal(objectOutput);
        objectOutput.writeDouble(this.scalingH);
        objectOutput.writeDouble(this.referenceTime);
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        if (this.scaled == null) {
            objectOutput.writeBoolean(false);
        } else {
            objectOutput.writeBoolean(true);
            for (int i = 0; i < length; i++) {
                objectOutput.writeDouble(this.scaled[i]);
            }
        }
        if (this.nordsieck == null) {
            objectOutput.writeBoolean(false);
        } else {
            objectOutput.writeBoolean(true);
            objectOutput.writeObject(this.nordsieck);
        }
    }

    public NordsieckStepInterpolator(NordsieckStepInterpolator nordsieckStepInterpolator) {
        super(nordsieckStepInterpolator);
        this.scalingH = nordsieckStepInterpolator.scalingH;
        this.referenceTime = nordsieckStepInterpolator.referenceTime;
        double[] dArr = nordsieckStepInterpolator.scaled;
        if (dArr != null) {
            this.scaled = (double[]) dArr.clone();
        }
        if (nordsieckStepInterpolator.nordsieck != null) {
            this.nordsieck = new Array2DRowRealMatrix(nordsieckStepInterpolator.nordsieck.getDataRef(), true);
        }
        double[] dArr2 = nordsieckStepInterpolator.stateVariation;
        if (dArr2 != null) {
            this.stateVariation = (double[]) dArr2.clone();
        }
    }

    public void reinitialize(double d2, double d3, double[] dArr, Array2DRowRealMatrix array2DRowRealMatrix) {
        this.referenceTime = d2;
        this.scalingH = d3;
        this.scaled = dArr;
        this.nordsieck = array2DRowRealMatrix;
        setInterpolatedTime(getInterpolatedTime());
    }
}
