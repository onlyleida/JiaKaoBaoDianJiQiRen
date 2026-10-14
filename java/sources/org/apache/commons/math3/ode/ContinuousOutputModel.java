package org.apache.commons.math3.ode;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class ContinuousOutputModel implements StepHandler, Serializable {
    private static final long serialVersionUID = -1417964919405031606L;
    private List<StepInterpolator> steps = new ArrayList();
    private double initialTime = Double.NaN;
    private double finalTime = Double.NaN;
    private boolean forward = true;
    private int index = 0;

    private int locatePoint(double d2, StepInterpolator stepInterpolator) {
        if (this.forward) {
            if (d2 < stepInterpolator.getPreviousTime()) {
                return -1;
            }
            return d2 > stepInterpolator.getCurrentTime() ? 1 : 0;
        }
        if (d2 > stepInterpolator.getPreviousTime()) {
            return -1;
        }
        return d2 < stepInterpolator.getCurrentTime() ? 1 : 0;
    }

    public void append(ContinuousOutputModel continuousOutputModel) throws MaxCountExceededException, MathIllegalArgumentException {
        if (continuousOutputModel.steps.size() == 0) {
            return;
        }
        if (this.steps.size() == 0) {
            this.initialTime = continuousOutputModel.initialTime;
            this.forward = continuousOutputModel.forward;
        } else {
            if (getInterpolatedState().length != continuousOutputModel.getInterpolatedState().length) {
                throw new DimensionMismatchException(continuousOutputModel.getInterpolatedState().length, getInterpolatedState().length);
            }
            if (this.forward ^ continuousOutputModel.forward) {
                throw new MathIllegalArgumentException(LocalizedFormats.PROPAGATION_DIRECTION_MISMATCH, new Object[0]);
            }
            StepInterpolator stepInterpolator = this.steps.get(this.index);
            double currentTime = stepInterpolator.getCurrentTime();
            double previousTime = currentTime - stepInterpolator.getPreviousTime();
            double initialTime = continuousOutputModel.getInitialTime() - currentTime;
            if (FastMath.abs(initialTime) > FastMath.abs(previousTime) * 0.001d) {
                throw new MathIllegalArgumentException(LocalizedFormats.HOLE_BETWEEN_MODELS_TIME_RANGES, Double.valueOf(FastMath.abs(initialTime)));
            }
        }
        Iterator<StepInterpolator> it = continuousOutputModel.steps.iterator();
        while (it.hasNext()) {
            this.steps.add(it.next().copy());
        }
        int size = this.steps.size() - 1;
        this.index = size;
        this.finalTime = this.steps.get(size).getCurrentTime();
    }

    public double getFinalTime() {
        return this.finalTime;
    }

    public double getInitialTime() {
        return this.initialTime;
    }

    public double[] getInterpolatedDerivatives() throws MaxCountExceededException {
        return this.steps.get(this.index).getInterpolatedDerivatives();
    }

    public double[] getInterpolatedSecondaryDerivatives(int i) throws MaxCountExceededException {
        return this.steps.get(this.index).getInterpolatedSecondaryDerivatives(i);
    }

    public double[] getInterpolatedSecondaryState(int i) throws MaxCountExceededException {
        return this.steps.get(this.index).getInterpolatedSecondaryState(i);
    }

    public double[] getInterpolatedState() throws MaxCountExceededException {
        return this.steps.get(this.index).getInterpolatedState();
    }

    public double getInterpolatedTime() {
        return this.steps.get(this.index).getInterpolatedTime();
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void handleStep(StepInterpolator stepInterpolator, boolean z) throws MaxCountExceededException {
        if (this.steps.size() == 0) {
            this.initialTime = stepInterpolator.getPreviousTime();
            this.forward = stepInterpolator.isForward();
        }
        this.steps.add(stepInterpolator.copy());
        if (z) {
            this.finalTime = stepInterpolator.getCurrentTime();
            this.index = this.steps.size() - 1;
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void init(double d2, double[] dArr, double d3) {
        this.initialTime = Double.NaN;
        this.finalTime = Double.NaN;
        this.forward = true;
        this.index = 0;
        this.steps.clear();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00e0  */
    public void setInterpolatedTime(double d2) {
        int i = 0;
        StepInterpolator stepInterpolator = this.steps.get(0);
        double d3 = 0.5d;
        double previousTime = (stepInterpolator.getPreviousTime() + stepInterpolator.getCurrentTime()) * 0.5d;
        int size = this.steps.size() - 1;
        StepInterpolator stepInterpolator2 = this.steps.get(size);
        double previousTime2 = (stepInterpolator2.getPreviousTime() + stepInterpolator2.getCurrentTime()) * 0.5d;
        if (locatePoint(d2, stepInterpolator) <= 0) {
            this.index = 0;
            stepInterpolator.setInterpolatedTime(d2);
            return;
        }
        if (locatePoint(d2, stepInterpolator2) >= 0) {
            this.index = size;
            stepInterpolator2.setInterpolatedTime(d2);
            return;
        }
        while (size - i > 5) {
            StepInterpolator stepInterpolator3 = this.steps.get(this.index);
            int iLocatePoint = locatePoint(d2, stepInterpolator3);
            if (iLocatePoint < 0) {
                size = this.index;
                previousTime2 = (stepInterpolator3.getPreviousTime() + stepInterpolator3.getCurrentTime()) * d3;
            } else if (iLocatePoint <= 0) {
                stepInterpolator3.setInterpolatedTime(d2);
                return;
            } else {
                i = this.index;
                previousTime = (stepInterpolator3.getPreviousTime() + stepInterpolator3.getCurrentTime()) * d3;
            }
            int i2 = (i + size) / 2;
            StepInterpolator stepInterpolator4 = this.steps.get(i2);
            double previousTime3 = (stepInterpolator4.getPreviousTime() + stepInterpolator4.getCurrentTime()) * d3;
            double d4 = previousTime3 - previousTime;
            if (FastMath.abs(d4) >= 1.0E-6d) {
                double d5 = previousTime2 - previousTime3;
                if (FastMath.abs(d5) < 1.0E-6d) {
                    this.index = i2;
                } else {
                    double d6 = previousTime2 - previousTime;
                    double d7 = d2 - previousTime2;
                    double d8 = d2 - previousTime3;
                    double d9 = d2 - previousTime;
                    this.index = (int) FastMath.rint((((((d8 * d9) * d4) * ((double) size)) - (((d9 * d7) * d6) * ((double) i2))) + (((d7 * d8) * d5) * ((double) i))) / ((d5 * d4) * d6));
                }
            } else {
                this.index = i2;
            }
            int iMax = FastMath.max(i + 1, ((i * 9) + size) / 10);
            int iMin = FastMath.min(size - 1, ((size * 9) + i) / 10);
            int i3 = this.index;
            if (i3 < iMax) {
                this.index = iMax;
            } else if (i3 > iMin) {
                this.index = iMin;
            }
            d3 = 0.5d;
        }
        this.index = i;
        while (true) {
            int i4 = this.index;
            if (i4 > size || locatePoint(d2, this.steps.get(i4)) <= 0) {
                break;
            } else {
                this.index++;
            }
        }
        this.steps.get(this.index).setInterpolatedTime(d2);
    }
}
