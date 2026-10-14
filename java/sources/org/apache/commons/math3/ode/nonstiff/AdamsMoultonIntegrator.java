package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrixPreservingVisitor;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.sampling.NordsieckStepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class AdamsMoultonIntegrator extends AdamsIntegrator {
    private static final String METHOD_NAME = "Adams-Moulton";

    private class Corrector implements RealMatrixPreservingVisitor {
        private final double[] after;
        private final double[] before;
        private final double[] previous;
        private final double[] scaled;

        Corrector(double[] dArr, double[] dArr2, double[] dArr3) {
            this.previous = dArr;
            this.scaled = dArr2;
            this.after = dArr3;
            this.before = (double[]) dArr3.clone();
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public double end() {
            double d2 = 0.0d;
            int i = 0;
            while (true) {
                double[] dArr = this.after;
                if (i >= dArr.length) {
                    return FastMath.sqrt(d2 / ((double) AdamsMoultonIntegrator.this.mainSetDimension));
                }
                double d3 = dArr[i];
                double[] dArr2 = this.previous;
                dArr[i] = d3 + dArr2[i] + this.scaled[i];
                if (i < AdamsMoultonIntegrator.this.mainSetDimension) {
                    double dMax = FastMath.max(FastMath.abs(dArr2[i]), FastMath.abs(this.after[i]));
                    AdamsMoultonIntegrator adamsMoultonIntegrator = AdamsMoultonIntegrator.this;
                    double[] dArr3 = adamsMoultonIntegrator.vecAbsoluteTolerance;
                    double d4 = (this.after[i] - this.before[i]) / (dArr3 == null ? adamsMoultonIntegrator.scalAbsoluteTolerance + (adamsMoultonIntegrator.scalRelativeTolerance * dMax) : dArr3[i] + (adamsMoultonIntegrator.vecRelativeTolerance[i] * dMax));
                    d2 += d4 * d4;
                }
                i++;
            }
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            Arrays.fill(this.after, 0.0d);
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void visit(int i, int i2, double d2) {
            if ((i & 1) == 0) {
                double[] dArr = this.after;
                dArr[i2] = dArr[i2] - d2;
            } else {
                double[] dArr2 = this.after;
                dArr2[i2] = dArr2[i2] + d2;
            }
        }
    }

    public AdamsMoultonIntegrator(int i, double d2, double d3, double d4, double d5) throws NumberIsTooSmallException {
        super(METHOD_NAME, i, i + 1, d2, d3, d4, d5);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.AdamsIntegrator, org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator, org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d2) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        sanityChecks(expandableStatefulODE, d2);
        setEquations(expandableStatefulODE);
        boolean z = d2 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = (double[]) completeState.clone();
        double[] dArr2 = new double[dArr.length];
        double[] dArr3 = new double[dArr.length];
        double[] dArr4 = new double[dArr.length];
        Array2DRowRealMatrix array2DRowRealMatrix = null;
        NordsieckStepInterpolator nordsieckStepInterpolator = new NordsieckStepInterpolator();
        nordsieckStepInterpolator.reinitialize(dArr, z, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        initIntegration(expandableStatefulODE.getTime(), completeState, d2);
        start(expandableStatefulODE.getTime(), dArr, d2);
        nordsieckStepInterpolator.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
        NordsieckStepInterpolator nordsieckStepInterpolator2 = nordsieckStepInterpolator;
        nordsieckStepInterpolator2.storeTime(this.stepStart);
        double dFilterStep = this.stepSize;
        nordsieckStepInterpolator2.rescale(dFilterStep);
        this.isLastStep = false;
        while (true) {
            Array2DRowRealMatrix array2DRowRealMatrixUpdateHighOrderDerivativesPhase1 = array2DRowRealMatrix;
            double d3 = dFilterStep;
            double dWalkInOptimizedOrder = 10.0d;
            double d4 = d3;
            while (dWalkInOptimizedOrder >= 1.0d) {
                this.stepSize = d4;
                double d5 = this.stepStart + d4;
                nordsieckStepInterpolator2.setInterpolatedTime(d5);
                ExpandableStatefulODE expandable = getExpandable();
                expandable.getPrimaryMapper().insertEquationData(nordsieckStepInterpolator2.getInterpolatedState(), dArr3);
                EquationsMapper[] secondaryMappers = expandable.getSecondaryMappers();
                int length = secondaryMappers.length;
                double d6 = d4;
                int i = 0;
                int i2 = 0;
                while (i2 < length) {
                    secondaryMappers[i2].insertEquationData(nordsieckStepInterpolator2.getInterpolatedSecondaryState(i), dArr3);
                    i++;
                    i2++;
                    secondaryMappers = secondaryMappers;
                }
                computeDerivatives(d5, dArr3, dArr2);
                for (int i3 = 0; i3 < completeState.length; i3++) {
                    dArr4[i3] = this.stepSize * dArr2[i3];
                }
                array2DRowRealMatrixUpdateHighOrderDerivativesPhase1 = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, dArr4, array2DRowRealMatrixUpdateHighOrderDerivativesPhase1);
                dWalkInOptimizedOrder = array2DRowRealMatrixUpdateHighOrderDerivativesPhase1.walkInOptimizedOrder(new Corrector(dArr, dArr4, dArr3));
                if (dWalkInOptimizedOrder >= 1.0d) {
                    double dFilterStep2 = filterStep(this.stepSize * computeStepGrowShrinkFactor(dWalkInOptimizedOrder), z, false);
                    nordsieckStepInterpolator2.rescale(dFilterStep2);
                    d4 = dFilterStep2;
                } else {
                    d4 = d6;
                }
            }
            double d7 = d4;
            double d8 = this.stepStart + this.stepSize;
            computeDerivatives(d8, dArr3, dArr2);
            double[] dArr5 = new double[completeState.length];
            double d9 = dWalkInOptimizedOrder;
            for (int i4 = 0; i4 < completeState.length; i4++) {
                dArr5[i4] = this.stepSize * dArr2[i4];
            }
            updateHighOrderDerivativesPhase2(dArr4, dArr5, array2DRowRealMatrixUpdateHighOrderDerivativesPhase1);
            System.arraycopy(dArr3, 0, dArr, 0, dArr.length);
            nordsieckStepInterpolator2.reinitialize(d8, this.stepSize, dArr5, array2DRowRealMatrixUpdateHighOrderDerivativesPhase1);
            nordsieckStepInterpolator2.storeTime(this.stepStart);
            nordsieckStepInterpolator2.shift();
            nordsieckStepInterpolator2.storeTime(d8);
            boolean z2 = z;
            double[] dArr6 = dArr2;
            double[] dArr7 = completeState;
            double[] dArr8 = dArr2;
            NordsieckStepInterpolator nordsieckStepInterpolator3 = nordsieckStepInterpolator2;
            Array2DRowRealMatrix array2DRowRealMatrix2 = array2DRowRealMatrixUpdateHighOrderDerivativesPhase1;
            double dAcceptStep = acceptStep(nordsieckStepInterpolator2, dArr, dArr6, d2);
            this.stepStart = dAcceptStep;
            this.scaled = dArr5;
            this.nordsieck = array2DRowRealMatrix2;
            if (this.isLastStep) {
                z2 = z2;
                dFilterStep = d7;
            } else {
                nordsieckStepInterpolator3.storeTime(dAcceptStep);
                if (this.resetOccurred) {
                    start(this.stepStart, dArr, d2);
                    nordsieckStepInterpolator3.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
                }
                double dComputeStepGrowShrinkFactor = this.stepSize * computeStepGrowShrinkFactor(d9);
                double d10 = this.stepStart + dComputeStepGrowShrinkFactor;
                dFilterStep = filterStep(dComputeStepGrowShrinkFactor, z2, !z2 ? d10 > d2 : d10 < d2);
                double d11 = this.stepStart;
                double d12 = d11 + dFilterStep;
                if (z2 == 0 ? d12 <= d2 : d12 >= d2) {
                    dFilterStep = d2 - d11;
                }
                nordsieckStepInterpolator3.rescale(dFilterStep);
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr);
                resetInternalState();
                return;
            } else {
                z = z2;
                nordsieckStepInterpolator2 = nordsieckStepInterpolator3;
                array2DRowRealMatrix = array2DRowRealMatrix2;
                completeState = dArr7;
                dArr2 = dArr8;
            }
        }
    }

    public AdamsMoultonIntegrator(int i, double d2, double d3, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(METHOD_NAME, i, i + 1, d2, d3, dArr, dArr2);
    }
}
