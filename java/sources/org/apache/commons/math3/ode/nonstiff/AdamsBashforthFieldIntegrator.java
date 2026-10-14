package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class AdamsBashforthFieldIntegrator<T extends RealFieldElement<T>> extends AdamsFieldIntegrator<T> {
    private static final String METHOD_NAME = "Adams-Bashforth";

    public AdamsBashforthFieldIntegrator(Field<T> field, int i, double d2, double d3, double d4, double d5) throws NumberIsTooSmallException {
        super(field, METHOD_NAME, i, i, d2, d3, d4, d5);
    }

    private T errorEstimation(T[] tArr, T[] tArr2, T[] tArr3, FieldMatrix<T> fieldMatrix) {
        T zero = getField().getZero();
        int i = 0;
        while (true) {
            int i2 = this.mainSetDimension;
            if (i >= i2) {
                return (T) ((RealFieldElement) zero.divide(i2)).sqrt();
            }
            RealFieldElement realFieldElement = (RealFieldElement) tArr2[i].abs();
            RealFieldElement realFieldElement2 = (RealFieldElement) (this.vecAbsoluteTolerance == null ? ((RealFieldElement) realFieldElement.multiply(this.scalRelativeTolerance)).add(this.scalAbsoluteTolerance) : ((RealFieldElement) realFieldElement.multiply(this.vecRelativeTolerance[i])).add(this.vecAbsoluteTolerance[i]));
            T zero2 = getField().getZero();
            int i3 = fieldMatrix.getRowDimension() % 2 == 0 ? -1 : 1;
            for (int rowDimension = fieldMatrix.getRowDimension() - 1; rowDimension >= 0; rowDimension--) {
                zero2 = (T) zero2.add(((RealFieldElement) fieldMatrix.getEntry(rowDimension, i)).multiply(i3));
                i3 = -i3;
            }
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr2[i].subtract(tArr[i])).add((RealFieldElement) zero2.subtract(tArr3[i]))).divide(realFieldElement2);
            zero = (T) zero.add(realFieldElement3.multiply(realFieldElement3));
            i++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x01bf A[PHI: r9
      0x01bf: PHI (r9v5 double) = (r9v4 double), (r9v8 double) binds: [B:37:0x01bd, B:34:0x01ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x01c1 A[PHI: r9
      0x01c1: PHI (r9v7 double) = (r9v4 double), (r9v8 double) binds: [B:37:0x01bd, B:34:0x01ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.nonstiff.AdamsFieldIntegrator, org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public FieldODEStateAndDerivative<T> integrate(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        double d2;
        boolean z;
        sanityChecks(fieldODEState, t);
        RealFieldElement time = fieldODEState.getTime();
        RealFieldElement[] realFieldElementArrMapState = fieldExpandableODE.getMapper().mapState(fieldODEState);
        setStepStart(initIntegration(fieldExpandableODE, time, realFieldElementArrMapState, t));
        double d3 = 0.0d;
        boolean z2 = ((RealFieldElement) t.subtract(fieldODEState.getTime())).getReal() > 0.0d;
        start(fieldExpandableODE, getStepStart(), t);
        FieldODEStateAndDerivative<T> stepStart = getStepStart();
        FieldODEStateAndDerivative fieldODEStateAndDerivativeTaylor = AdamsFieldStepInterpolator.taylor(stepStart, (RealFieldElement) stepStart.getTime().add(getStepSize()), getStepSize(), this.scaled, this.nordsieck);
        setIsLastStep(false);
        while (true) {
            T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), realFieldElementArrMapState.length));
            RealFieldElement realFieldElementErrorEstimation = (RealFieldElement) getField().getZero().add(10.0d);
            Object state = null;
            Array2DRowFieldMatrix<T> array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1 = null;
            while (((RealFieldElement) realFieldElementErrorEstimation.subtract(1.0d)).getReal() >= d3) {
                state = fieldODEStateAndDerivativeTaylor.getState();
                T[] tArrComputeDerivatives = computeDerivatives(fieldODEStateAndDerivativeTaylor.getTime(), state);
                for (int i = 0; i < tArr.length; i++) {
                    tArr[i] = (RealFieldElement) getStepSize().multiply(tArrComputeDerivatives[i]);
                }
                array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1 = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, tArr, array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1);
                realFieldElementErrorEstimation = errorEstimation(realFieldElementArrMapState, state, tArr, array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1);
                if (((RealFieldElement) realFieldElementErrorEstimation.subtract(1.0d)).getReal() >= d3) {
                    rescale(filterStep((RealFieldElement) getStepSize().multiply(computeStepGrowShrinkFactor(realFieldElementErrorEstimation)), z2, false));
                    fieldODEStateAndDerivativeTaylor = AdamsFieldStepInterpolator.taylor(getStepStart(), (RealFieldElement) getStepStart().getTime().add(getStepSize()), getStepSize(), this.scaled, this.nordsieck);
                }
            }
            Object obj = state;
            Array2DRowFieldMatrix<T> array2DRowFieldMatrix = array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1;
            RealFieldElement realFieldElement = realFieldElementErrorEstimation;
            setStepStart(acceptStep(new AdamsFieldStepInterpolator(getStepSize(), fieldODEStateAndDerivativeTaylor, tArr, array2DRowFieldMatrix, z2, getStepStart(), fieldODEStateAndDerivativeTaylor, fieldExpandableODE.getMapper()), t));
            this.scaled = tArr;
            this.nordsieck = array2DRowFieldMatrix;
            if (isLastStep()) {
                d2 = 0.0d;
            } else {
                System.arraycopy(obj, 0, realFieldElementArrMapState, 0, realFieldElementArrMapState.length);
                if (resetOccurred()) {
                    start(fieldExpandableODE, getStepStart(), t);
                }
                RealFieldElement realFieldElement2 = (RealFieldElement) getStepSize().multiply(computeStepGrowShrinkFactor(realFieldElement));
                RealFieldElement realFieldElement3 = (RealFieldElement) getStepStart().getTime().add(realFieldElement2);
                T tFilterStep = filterStep(realFieldElement2, z2, !z2 ? ((RealFieldElement) realFieldElement3.subtract(t)).getReal() > 0.0d : ((RealFieldElement) realFieldElement3.subtract(t)).getReal() < 0.0d);
                RealFieldElement realFieldElement4 = (RealFieldElement) getStepStart().getTime().add(tFilterStep);
                if (z2) {
                    d2 = 0.0d;
                    if (((RealFieldElement) realFieldElement4.subtract(t)).getReal() >= 0.0d) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    d2 = 0.0d;
                    if (((RealFieldElement) realFieldElement4.subtract(t)).getReal() <= 0.0d) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    tFilterStep = (T) t.subtract(getStepStart().getTime());
                }
                rescale(tFilterStep);
                fieldODEStateAndDerivativeTaylor = AdamsFieldStepInterpolator.taylor(getStepStart(), (RealFieldElement) getStepStart().getTime().add(getStepSize()), getStepSize(), this.scaled, this.nordsieck);
            }
            if (isLastStep()) {
                FieldODEStateAndDerivative<T> stepStart2 = getStepStart();
                setStepStart(null);
                setStepSize(null);
                return stepStart2;
            }
            d3 = d2;
        }
    }

    public AdamsBashforthFieldIntegrator(Field<T> field, int i, double d2, double d3, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(field, METHOD_NAME, i, i, d2, d3, dArr, dArr2);
    }
}
