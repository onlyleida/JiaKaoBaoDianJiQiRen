package org.apache.commons.math3.optim.linear;

import java.util.ArrayList;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class SimplexSolver extends LinearOptimizer {
    static final double DEFAULT_CUT_OFF = 1.0E-10d;
    private static final double DEFAULT_EPSILON = 1.0E-6d;
    static final int DEFAULT_ULPS = 10;
    private final double cutOff;
    private final double epsilon;
    private final int maxUlps;
    private PivotSelectionRule pivotSelection;
    private SolutionCallback solutionCallback;

    public SimplexSolver() {
        this(1.0E-6d, 10, 1.0E-10d);
    }

    private Integer getPivotColumn(SimplexTableau simplexTableau) {
        double d2 = 0.0d;
        Integer numValueOf = null;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getWidth() - 1; numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(0, numObjectiveFunctions);
            if (entry < d2) {
                numValueOf = Integer.valueOf(numObjectiveFunctions);
                if (this.pivotSelection == PivotSelectionRule.BLAND && isValidPivotColumn(simplexTableau, numObjectiveFunctions)) {
                    break;
                }
                d2 = entry;
            }
        }
        return numValueOf;
    }

    private Integer getPivotRow(SimplexTableau simplexTableau, int i) {
        ArrayList<Integer> arrayList = new ArrayList();
        double d2 = Double.MAX_VALUE;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getHeight(); numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(numObjectiveFunctions, simplexTableau.getWidth() - 1);
            double entry2 = simplexTableau.getEntry(numObjectiveFunctions, i);
            if (Precision.compareTo(entry2, 0.0d, this.cutOff) > 0) {
                double dAbs = FastMath.abs(entry / entry2);
                int iCompare = Double.compare(dAbs, d2);
                if (iCompare == 0) {
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                } else if (iCompare < 0) {
                    arrayList.clear();
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                    d2 = dAbs;
                }
            }
        }
        Integer num = null;
        if (arrayList.size() == 0) {
            return null;
        }
        if (arrayList.size() <= 1) {
            return (Integer) arrayList.get(0);
        }
        if (simplexTableau.getNumArtificialVariables() > 0) {
            for (Integer num2 : arrayList) {
                for (int i2 = 0; i2 < simplexTableau.getNumArtificialVariables(); i2++) {
                    int artificialVariableOffset = simplexTableau.getArtificialVariableOffset() + i2;
                    if (Precision.equals(simplexTableau.getEntry(num2.intValue(), artificialVariableOffset), 1.0d, this.maxUlps) && num2.equals(simplexTableau.getBasicRow(artificialVariableOffset))) {
                        return num2;
                    }
                }
            }
        }
        int width = simplexTableau.getWidth();
        for (Integer num3 : arrayList) {
            int basicVariable = simplexTableau.getBasicVariable(num3.intValue());
            if (basicVariable < width) {
                num = num3;
                width = basicVariable;
            }
        }
        return num;
    }

    private boolean isValidPivotColumn(SimplexTableau simplexTableau, int i) {
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getHeight(); numObjectiveFunctions++) {
            if (Precision.compareTo(simplexTableau.getEntry(numObjectiveFunctions, i), 0.0d, this.cutOff) > 0) {
                return true;
            }
        }
        return false;
    }

    protected void doIteration(SimplexTableau simplexTableau) throws UnboundedSolutionException, TooManyIterationsException {
        incrementIterationCount();
        Integer pivotColumn = getPivotColumn(simplexTableau);
        Integer pivotRow = getPivotRow(simplexTableau, pivotColumn.intValue());
        if (pivotRow == null) {
            throw new UnboundedSolutionException();
        }
        simplexTableau.performRowOperations(pivotColumn.intValue(), pivotRow.intValue());
    }

    @Override // org.apache.commons.math3.optim.linear.LinearOptimizer, org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    protected void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        this.solutionCallback = null;
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof SolutionCallback) {
                this.solutionCallback = (SolutionCallback) optimizationData;
            } else if (optimizationData instanceof PivotSelectionRule) {
                this.pivotSelection = (PivotSelectionRule) optimizationData;
            }
        }
    }

    protected void solvePhase1(SimplexTableau simplexTableau) throws UnboundedSolutionException, NoFeasibleSolutionException, TooManyIterationsException {
        if (simplexTableau.getNumArtificialVariables() == 0) {
            return;
        }
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        if (!Precision.equals(simplexTableau.getEntry(0, simplexTableau.getRhsOffset()), 0.0d, this.epsilon)) {
            throw new NoFeasibleSolutionException();
        }
    }

    public SimplexSolver(double d2) {
        this(d2, 10, 1.0E-10d);
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair doOptimize() throws UnboundedSolutionException, NoFeasibleSolutionException, TooManyIterationsException {
        SolutionCallback solutionCallback = this.solutionCallback;
        if (solutionCallback != null) {
            solutionCallback.setTableau(null);
        }
        SimplexTableau simplexTableau = new SimplexTableau(getFunction(), getConstraints(), getGoalType(), isRestrictedToNonNegative(), this.epsilon, this.maxUlps);
        solvePhase1(simplexTableau);
        simplexTableau.dropPhase1Objective();
        SolutionCallback solutionCallback2 = this.solutionCallback;
        if (solutionCallback2 != null) {
            solutionCallback2.setTableau(simplexTableau);
        }
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        PointValuePair solution = simplexTableau.getSolution();
        if (isRestrictedToNonNegative()) {
            for (double d2 : solution.getPoint()) {
                if (Precision.compareTo(d2, 0.0d, this.epsilon) < 0) {
                    throw new NoFeasibleSolutionException();
                }
            }
        }
        return solution;
    }

    @Override // org.apache.commons.math3.optim.linear.LinearOptimizer, org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyIterationsException {
        return super.optimize(optimizationDataArr);
    }

    public SimplexSolver(double d2, int i) {
        this(d2, i, 1.0E-10d);
    }

    public SimplexSolver(double d2, int i, double d3) {
        this.epsilon = d2;
        this.maxUlps = i;
        this.cutOff = d3;
        this.pivotSelection = PivotSelectionRule.DANTZIG;
    }
}
