package org.apache.commons.math3.optimization.linear;

import java.util.ArrayList;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class SimplexSolver extends AbstractLinearOptimizer {
    private static final double DEFAULT_EPSILON = 1.0E-6d;
    private static final int DEFAULT_ULPS = 10;
    private final double epsilon;
    private final int maxUlps;

    public SimplexSolver() {
        this(1.0E-6d, 10);
    }

    private Integer getPivotColumn(SimplexTableau simplexTableau) {
        double d2 = 0.0d;
        Integer numValueOf = null;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getWidth() - 1; numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(0, numObjectiveFunctions);
            if (entry < d2) {
                numValueOf = Integer.valueOf(numObjectiveFunctions);
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
            if (Precision.compareTo(entry2, 0.0d, this.maxUlps) > 0) {
                double d3 = entry / entry2;
                int iCompare = Double.compare(d3, d2);
                if (iCompare == 0) {
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                } else if (iCompare < 0) {
                    arrayList = new ArrayList();
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                    d2 = d3;
                }
            }
        }
        Integer num = null;
        if (arrayList.size() == 0) {
            return null;
        }
        if (arrayList.size() > 1) {
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
            if (getIterations() < getMaxIterations() / 2) {
                int width = simplexTableau.getWidth();
                int numObjectiveFunctions2 = simplexTableau.getNumObjectiveFunctions();
                int width2 = simplexTableau.getWidth() - 1;
                for (Integer num3 : arrayList) {
                    for (int i3 = numObjectiveFunctions2; i3 < width2 && !num3.equals(num); i3++) {
                        Integer basicRow = simplexTableau.getBasicRow(i3);
                        if (basicRow != null && basicRow.equals(num3) && i3 < width) {
                            num = num3;
                            width = i3;
                        }
                    }
                }
                return num;
            }
        }
        return (Integer) arrayList.get(0);
    }

    protected void doIteration(SimplexTableau simplexTableau) throws UnboundedSolutionException, MaxCountExceededException {
        incrementIterationsCounter();
        Integer pivotColumn = getPivotColumn(simplexTableau);
        Integer pivotRow = getPivotRow(simplexTableau, pivotColumn.intValue());
        if (pivotRow == null) {
            throw new UnboundedSolutionException();
        }
        simplexTableau.divideRow(pivotRow.intValue(), simplexTableau.getEntry(pivotRow.intValue(), pivotColumn.intValue()));
        for (int i = 0; i < simplexTableau.getHeight(); i++) {
            if (i != pivotRow.intValue()) {
                simplexTableau.subtractRow(i, pivotRow.intValue(), simplexTableau.getEntry(i, pivotColumn.intValue()));
            }
        }
    }

    @Override // org.apache.commons.math3.optimization.linear.AbstractLinearOptimizer
    public PointValuePair doOptimize() throws UnboundedSolutionException, MaxCountExceededException, NoFeasibleSolutionException {
        SimplexTableau simplexTableau = new SimplexTableau(getFunction(), getConstraints(), getGoalType(), restrictToNonNegative(), this.epsilon, this.maxUlps);
        solvePhase1(simplexTableau);
        simplexTableau.dropPhase1Objective();
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        return simplexTableau.getSolution();
    }

    protected void solvePhase1(SimplexTableau simplexTableau) throws UnboundedSolutionException, MaxCountExceededException, NoFeasibleSolutionException {
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

    public SimplexSolver(double d2, int i) {
        this.epsilon = d2;
        this.maxUlps = i;
    }
}
