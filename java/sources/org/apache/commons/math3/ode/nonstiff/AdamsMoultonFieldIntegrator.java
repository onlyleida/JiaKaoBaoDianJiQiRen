package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.FieldMatrixPreservingVisitor;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class AdamsMoultonFieldIntegrator<T extends RealFieldElement<T>> extends AdamsFieldIntegrator<T> {
    private static final String METHOD_NAME = "Adams-Moulton";

    private class Corrector implements FieldMatrixPreservingVisitor<T> {
        private final T[] after;
        private final T[] before;
        private final T[] previous;
        private final T[] scaled;

        Corrector(T[] tArr, T[] tArr2, T[] tArr3) {
            this.previous = tArr;
            this.scaled = tArr2;
            this.after = tArr3;
            this.before = (T[]) ((RealFieldElement[]) tArr3.clone());
        }

        @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            Arrays.fill(this.after, AdamsMoultonFieldIntegrator.this.getField().getZero());
        }

        @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        public T end() {
            RealFieldElement realFieldElement = (RealFieldElement) AdamsMoultonFieldIntegrator.this.getField().getZero();
            int i = 0;
            while (true) {
                FieldElement[] fieldElementArr = this.after;
                if (i >= fieldElementArr.length) {
                    return (T) ((RealFieldElement) realFieldElement.divide(AdamsMoultonFieldIntegrator.this.mainSetDimension)).sqrt();
                }
                fieldElementArr[i] = (RealFieldElement) fieldElementArr[i].add(this.previous[i].add(this.scaled[i]));
                if (i < AdamsMoultonFieldIntegrator.this.mainSetDimension) {
                    RealFieldElement realFieldElementMax = MathUtils.max((RealFieldElement) this.previous[i].abs(), (RealFieldElement) this.after[i].abs());
                    AdamsMoultonFieldIntegrator adamsMoultonFieldIntegrator = AdamsMoultonFieldIntegrator.this;
                    RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) this.after[i].subtract(this.before[i])).divide((RealFieldElement) (adamsMoultonFieldIntegrator.vecAbsoluteTolerance == null ? ((RealFieldElement) realFieldElementMax.multiply(adamsMoultonFieldIntegrator.scalRelativeTolerance)).add(AdamsMoultonFieldIntegrator.this.scalAbsoluteTolerance) : ((RealFieldElement) realFieldElementMax.multiply(adamsMoultonFieldIntegrator.vecRelativeTolerance[i])).add(AdamsMoultonFieldIntegrator.this.vecAbsoluteTolerance[i])));
                    realFieldElement = (RealFieldElement) realFieldElement.add(realFieldElement2.multiply(realFieldElement2));
                }
                i++;
            }
        }

        @Override // org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        public void visit(int i, int i2, T t) {
            if ((i & 1) == 0) {
                FieldElement[] fieldElementArr = this.after;
                fieldElementArr[i2] = (RealFieldElement) fieldElementArr[i2].subtract(t);
            } else {
                FieldElement[] fieldElementArr2 = this.after;
                fieldElementArr2[i2] = (RealFieldElement) fieldElementArr2[i2].add(t);
            }
        }
    }

    public AdamsMoultonFieldIntegrator(Field<T> field, int i, double d2, double d3, double d4, double d5) throws NumberIsTooSmallException {
        super(field, METHOD_NAME, i, i + 1, d2, d3, d4, d5);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x01fc A[PHI: r9
      0x01fc: PHI (r9v5 double) = (r9v4 double), (r9v8 double) binds: [B:41:0x01fa, B:38:0x01e9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:43:0x01fe A[PHI: r9
      0x01fe: PHI (r9v7 double) = (r9v4 double), (r9v8 double) binds: [B:41:0x01fa, B:38:0x01e9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v4, types: [org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r7v5, types: [org.apache.commons.math3.RealFieldElement] */
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
            RealFieldElement[] realFieldElementArr = (RealFieldElement[]) MathArrays.buildArray(getField(), realFieldElementArrMapState.length);
            T tWalkInOptimizedOrder = (RealFieldElement) getField().getZero().add(10.0d);
            Array2DRowFieldMatrix<T> array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1 = null;
            RealFieldElement[] state = 0;
            while (((RealFieldElement) tWalkInOptimizedOrder.subtract(1.0d)).getReal() >= d3) {
                state = fieldODEStateAndDerivativeTaylor.getState();
                T[] tArrComputeDerivatives = computeDerivatives(fieldODEStateAndDerivativeTaylor.getTime(), state);
                for (int i = 0; i < realFieldElementArr.length; i++) {
                    realFieldElementArr[i] = (RealFieldElement) getStepSize().multiply(tArrComputeDerivatives[i]);
                }
                array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1 = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, realFieldElementArr, array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1);
                tWalkInOptimizedOrder = array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1.walkInOptimizedOrder(new Corrector(realFieldElementArrMapState, realFieldElementArr, state));
                if (((RealFieldElement) tWalkInOptimizedOrder.subtract(1.0d)).getReal() >= d3) {
                    rescale(filterStep((RealFieldElement) getStepSize().multiply(computeStepGrowShrinkFactor(tWalkInOptimizedOrder)), z2, false));
                    fieldODEStateAndDerivativeTaylor = AdamsFieldStepInterpolator.taylor(getStepStart(), (RealFieldElement) getStepStart().getTime().add(getStepSize()), getStepSize(), this.scaled, this.nordsieck);
                }
            }
            T[] tArrComputeDerivatives2 = computeDerivatives(fieldODEStateAndDerivativeTaylor.getTime(), state);
            T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), realFieldElementArrMapState.length));
            for (int i2 = 0; i2 < tArr.length; i2++) {
                tArr[i2] = (RealFieldElement) getStepSize().multiply(tArrComputeDerivatives2[i2]);
            }
            updateHighOrderDerivativesPhase2(realFieldElementArr, tArr, array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1);
            FieldODEStateAndDerivative fieldODEStateAndDerivative = new FieldODEStateAndDerivative(fieldODEStateAndDerivativeTaylor.getTime(), state, tArrComputeDerivatives2);
            Array2DRowFieldMatrix<T> array2DRowFieldMatrix = array2DRowFieldMatrixUpdateHighOrderDerivativesPhase1;
            Object[] objArr = state;
            RealFieldElement realFieldElement = tWalkInOptimizedOrder;
            setStepStart(acceptStep(new AdamsFieldStepInterpolator(getStepSize(), fieldODEStateAndDerivative, tArr, array2DRowFieldMatrix, z2, getStepStart(), fieldODEStateAndDerivative, fieldExpandableODE.getMapper()), t));
            this.scaled = tArr;
            this.nordsieck = array2DRowFieldMatrix;
            if (isLastStep()) {
                d2 = 0.0d;
                fieldODEStateAndDerivativeTaylor = fieldODEStateAndDerivative;
            } else {
                System.arraycopy(objArr, 0, realFieldElementArrMapState, 0, realFieldElementArrMapState.length);
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

    public AdamsMoultonFieldIntegrator(Field<T> field, int i, double d2, double d3, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(field, METHOD_NAME, i, i + 1, d2, d3, dArr, dArr2);
    }
}
