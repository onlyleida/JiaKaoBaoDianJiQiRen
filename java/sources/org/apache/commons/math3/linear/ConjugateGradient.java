package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.ExceptionContext;
import org.apache.commons.math3.util.IterationManager;

/* JADX INFO: loaded from: classes6.dex */
public class ConjugateGradient extends PreconditionedIterativeLinearSolver {
    public static final String OPERATOR = "operator";
    public static final String VECTOR = "vector";
    private boolean check;
    private final double delta;

    public ConjugateGradient(int i, double d2, boolean z) {
        super(i);
        this.delta = d2;
        this.check = z;
    }

    public final boolean getCheck() {
        return this.check;
    }

    @Override // org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver
    public RealVector solveInPlace(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, RealVector realVector2) throws NullArgumentException, DimensionMismatchException, MaxCountExceededException, NonPositiveDefiniteOperatorException {
        RealVector realVector3;
        RealLinearOperator realLinearOperator3 = realLinearOperator2;
        PreconditionedIterativeLinearSolver.checkParameters(realLinearOperator, realLinearOperator2, realVector, realVector2);
        IterationManager iterationManager = getIterationManager();
        iterationManager.resetIterationCount();
        double norm = this.delta * realVector.getNorm();
        RealVector realVectorUnmodifiableRealVector = RealVector.unmodifiableRealVector(realVector);
        iterationManager.incrementIterationCount();
        RealVector realVectorUnmodifiableRealVector2 = RealVector.unmodifiableRealVector(realVector2);
        RealVector realVectorCopy = realVector2.copy();
        RealVector realVectorCombine = realVector.combine(1.0d, -1.0d, realLinearOperator.operate(realVectorCopy));
        RealVector realVectorUnmodifiableRealVector3 = RealVector.unmodifiableRealVector(realVectorCombine);
        double norm2 = realVectorCombine.getNorm();
        RealVector realVector4 = realLinearOperator3 == null ? realVectorCombine : null;
        RealVector realVector5 = realVectorCopy;
        RealVector realVector6 = realVectorCombine;
        DefaultIterativeLinearSolverEvent defaultIterativeLinearSolverEvent = new DefaultIterativeLinearSolverEvent(this, iterationManager.getIterations(), realVectorUnmodifiableRealVector2, realVectorUnmodifiableRealVector, realVectorUnmodifiableRealVector3, norm2);
        iterationManager.fireInitializationEvent(defaultIterativeLinearSolverEvent);
        if (norm2 <= norm) {
            iterationManager.fireTerminationEvent(defaultIterativeLinearSolverEvent);
            return realVector2;
        }
        double d2 = norm2;
        double d3 = 0.0d;
        while (true) {
            iterationManager.incrementIterationCount();
            iterationManager.fireIterationStartedEvent(new DefaultIterativeLinearSolverEvent(this, iterationManager.getIterations(), realVectorUnmodifiableRealVector2, realVectorUnmodifiableRealVector, realVectorUnmodifiableRealVector3, d2));
            RealVector realVectorOperate = realLinearOperator3 != null ? realLinearOperator3.operate(realVector6) : realVector4;
            double dDotProduct = realVector6.dotProduct(realVectorOperate);
            RealVector realVector7 = realVector6;
            if (this.check && dDotProduct <= 0.0d) {
                NonPositiveDefiniteOperatorException nonPositiveDefiniteOperatorException = new NonPositiveDefiniteOperatorException();
                ExceptionContext context = nonPositiveDefiniteOperatorException.getContext();
                context.setValue(OPERATOR, realLinearOperator3);
                context.setValue(VECTOR, realVector7);
                throw nonPositiveDefiniteOperatorException;
            }
            if (iterationManager.getIterations() == 2) {
                RealVector realVector8 = realVector5;
                realVector8.setSubVector(0, realVectorOperate);
                realVector3 = realVector8;
            } else {
                RealVector realVector9 = realVector5;
                realVector3 = realVector9;
                realVector9.combineToSelf(dDotProduct / d3, 1.0d, realVectorOperate);
            }
            RealVector realVectorOperate2 = realLinearOperator.operate(realVector3);
            double dDotProduct2 = realVector3.dotProduct(realVectorOperate2);
            if (this.check && dDotProduct2 <= 0.0d) {
                NonPositiveDefiniteOperatorException nonPositiveDefiniteOperatorException2 = new NonPositiveDefiniteOperatorException();
                ExceptionContext context2 = nonPositiveDefiniteOperatorException2.getContext();
                context2.setValue(OPERATOR, realLinearOperator);
                context2.setValue(VECTOR, realVector3);
                throw nonPositiveDefiniteOperatorException2;
            }
            double d4 = dDotProduct / dDotProduct2;
            realVector2.combineToSelf(1.0d, d4, realVector3);
            realVector7.combineToSelf(1.0d, -d4, realVectorOperate2);
            double norm3 = realVector7.getNorm();
            DefaultIterativeLinearSolverEvent defaultIterativeLinearSolverEvent2 = new DefaultIterativeLinearSolverEvent(this, iterationManager.getIterations(), realVectorUnmodifiableRealVector2, realVectorUnmodifiableRealVector, realVectorUnmodifiableRealVector3, norm3);
            iterationManager.fireIterationPerformedEvent(defaultIterativeLinearSolverEvent2);
            if (norm3 <= norm) {
                iterationManager.fireTerminationEvent(defaultIterativeLinearSolverEvent2);
                return realVector2;
            }
            realVector5 = realVector3;
            d2 = norm3;
            realVector6 = realVector7;
            d3 = dDotProduct;
            norm = norm;
            realLinearOperator3 = realLinearOperator2;
            realVector4 = realVectorOperate;
        }
    }

    public ConjugateGradient(IterationManager iterationManager, double d2, boolean z) throws NullArgumentException {
        super(iterationManager);
        this.delta = d2;
        this.check = z;
    }
}
