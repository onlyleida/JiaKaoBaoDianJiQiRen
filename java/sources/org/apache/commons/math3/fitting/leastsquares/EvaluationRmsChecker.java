package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class EvaluationRmsChecker implements ConvergenceChecker<LeastSquaresProblem.Evaluation> {
    private final double absTol;
    private final double relTol;

    public EvaluationRmsChecker(double d2) {
        this(d2, d2);
    }

    public EvaluationRmsChecker(double d2, double d3) {
        this.relTol = d2;
        this.absTol = d3;
    }

    @Override // org.apache.commons.math3.optim.ConvergenceChecker
    public boolean converged(int i, LeastSquaresProblem.Evaluation evaluation, LeastSquaresProblem.Evaluation evaluation2) {
        double rms = evaluation.getRMS();
        double rms2 = evaluation2.getRMS();
        return Precision.equals(rms, rms2, this.absTol) || Precision.equalsWithRelativeTolerance(rms, rms2, this.relTol);
    }
}
