package org.apache.commons.math3.optimization.linear;

import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
class SimplexTableau implements Serializable {
    private static final double CUTOFF_THRESHOLD = 1.0E-12d;
    private static final int DEFAULT_ULPS = 10;
    private static final String NEGATIVE_VAR_COLUMN_LABEL = "x-";
    private static final long serialVersionUID = -1369660067587938365L;
    private final List<String> columnLabels;
    private final List<LinearConstraint> constraints;
    private final double epsilon;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LinearObjectiveFunction f16203f;
    private final int maxUlps;
    private int numArtificialVariables;
    private final int numDecisionVariables;
    private final int numSlackVariables;
    private final boolean restrictToNonNegative;
    private transient RealMatrix tableau;

    SimplexTableau(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z, double d2) {
        this(linearObjectiveFunction, collection, goalType, z, d2, 10);
    }

    private void copyArray(double[] dArr, double[] dArr2) {
        System.arraycopy(dArr, 0, dArr2, getNumObjectiveFunctions(), dArr.length);
    }

    private int getConstraintTypeCounts(Relationship relationship) {
        Iterator<LinearConstraint> it = this.constraints.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getRelationship() == relationship) {
                i++;
            }
        }
        return i;
    }

    protected static double getInvertedCoefficientSum(RealVector realVector) {
        double d2 = 0.0d;
        for (double d3 : realVector.toArray()) {
            d2 -= d3;
        }
        return d2;
    }

    private LinearConstraint normalize(LinearConstraint linearConstraint) {
        return linearConstraint.getValue() < 0.0d ? new LinearConstraint(linearConstraint.getCoefficients().mapMultiply(-1.0d), linearConstraint.getRelationship().oppositeRelationship(), linearConstraint.getValue() * (-1.0d)) : new LinearConstraint(linearConstraint.getCoefficients(), linearConstraint.getRelationship(), linearConstraint.getValue());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        MatrixUtils.deserializeRealMatrix(this, "tableau", objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        MatrixUtils.serializeRealMatrix(this.tableau, objectOutputStream);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00f9  */
    protected RealMatrix createTableau(boolean z) {
        int i;
        int i2 = 1;
        int numObjectiveFunctions = this.numDecisionVariables + this.numSlackVariables + this.numArtificialVariables + getNumObjectiveFunctions() + 1;
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(this.constraints.size() + getNumObjectiveFunctions(), numObjectiveFunctions);
        if (getNumObjectiveFunctions() == 2) {
            array2DRowRealMatrix.setEntry(0, 0, -1.0d);
        }
        int i3 = getNumObjectiveFunctions() == 1 ? 0 : 1;
        array2DRowRealMatrix.setEntry(i3, i3, z ? 1.0d : -1.0d);
        RealVector coefficients = this.f16203f.getCoefficients();
        if (z) {
            coefficients = coefficients.mapMultiply(-1.0d);
        }
        copyArray(coefficients.toArray(), array2DRowRealMatrix.getDataRef()[i3]);
        int i4 = numObjectiveFunctions - 1;
        double constantTerm = this.f16203f.getConstantTerm();
        if (!z) {
            constantTerm *= -1.0d;
        }
        array2DRowRealMatrix.setEntry(i3, i4, constantTerm);
        if (!this.restrictToNonNegative) {
            array2DRowRealMatrix.setEntry(i3, getSlackVariableOffset() - 1, getInvertedCoefficientSum(coefficients));
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < this.constraints.size()) {
            LinearConstraint linearConstraint = this.constraints.get(i5);
            int numObjectiveFunctions2 = getNumObjectiveFunctions() + i5;
            copyArray(linearConstraint.getCoefficients().toArray(), array2DRowRealMatrix.getDataRef()[numObjectiveFunctions2]);
            if (!this.restrictToNonNegative) {
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() - i2, getInvertedCoefficientSum(linearConstraint.getCoefficients()));
            }
            array2DRowRealMatrix.setEntry(numObjectiveFunctions2, i4, linearConstraint.getValue());
            if (linearConstraint.getRelationship() == Relationship.LEQ) {
                i = i6 + 1;
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() + i6, 1.0d);
            } else {
                if (linearConstraint.getRelationship() == Relationship.GEQ) {
                    i = i6 + 1;
                    array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() + i6, -1.0d);
                }
                if (linearConstraint.getRelationship() != Relationship.EQ || linearConstraint.getRelationship() == Relationship.GEQ) {
                    array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i7, 1.0d);
                    array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i7, 1.0d);
                    array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
                    i7++;
                }
                i5++;
                i2 = 1;
            }
            i6 = i;
            if (linearConstraint.getRelationship() != Relationship.EQ) {
                array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i7, 1.0d);
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i7, 1.0d);
                array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
                i7++;
            } else {
                array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i7, 1.0d);
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i7, 1.0d);
                array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
                i7++;
            }
            i5++;
            i2 = 1;
        }
        return array2DRowRealMatrix;
    }

    protected void divideRow(int i, double d2) {
        for (int i2 = 0; i2 < getWidth(); i2++) {
            RealMatrix realMatrix = this.tableau;
            realMatrix.setEntry(i, i2, realMatrix.getEntry(i, i2) / d2);
        }
    }

    protected void dropPhase1Objective() {
        if (getNumObjectiveFunctions() == 1) {
            return;
        }
        TreeSet treeSet = new TreeSet();
        treeSet.add(0);
        for (int numObjectiveFunctions = getNumObjectiveFunctions(); numObjectiveFunctions < getArtificialVariableOffset(); numObjectiveFunctions++) {
            if (Precision.compareTo(this.tableau.getEntry(0, numObjectiveFunctions), 0.0d, this.epsilon) > 0) {
                treeSet.add(Integer.valueOf(numObjectiveFunctions));
            }
        }
        for (int i = 0; i < getNumArtificialVariables(); i++) {
            int artificialVariableOffset = getArtificialVariableOffset() + i;
            if (getBasicRow(artificialVariableOffset) == null) {
                treeSet.add(Integer.valueOf(artificialVariableOffset));
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, getHeight() - 1, getWidth() - treeSet.size());
        for (int i2 = 1; i2 < getHeight(); i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < getWidth(); i4++) {
                if (!treeSet.contains(Integer.valueOf(i4))) {
                    dArr[i2 - 1][i3] = this.tableau.getEntry(i2, i4);
                    i3++;
                }
            }
        }
        Integer[] numArr = (Integer[]) treeSet.toArray(new Integer[treeSet.size()]);
        for (int length = numArr.length - 1; length >= 0; length--) {
            this.columnLabels.remove(numArr[length].intValue());
        }
        this.tableau = new Array2DRowRealMatrix(dArr);
        this.numArtificialVariables = 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SimplexTableau)) {
            return false;
        }
        SimplexTableau simplexTableau = (SimplexTableau) obj;
        return this.restrictToNonNegative == simplexTableau.restrictToNonNegative && this.numDecisionVariables == simplexTableau.numDecisionVariables && this.numSlackVariables == simplexTableau.numSlackVariables && this.numArtificialVariables == simplexTableau.numArtificialVariables && this.epsilon == simplexTableau.epsilon && this.maxUlps == simplexTableau.maxUlps && this.f16203f.equals(simplexTableau.f16203f) && this.constraints.equals(simplexTableau.constraints) && this.tableau.equals(simplexTableau.tableau);
    }

    protected final int getArtificialVariableOffset() {
        return getNumObjectiveFunctions() + this.numDecisionVariables + this.numSlackVariables;
    }

    protected Integer getBasicRow(int i) {
        Integer numValueOf = null;
        for (int i2 = 0; i2 < getHeight(); i2++) {
            double entry = getEntry(i2, i);
            if (Precision.equals(entry, 1.0d, this.maxUlps) && numValueOf == null) {
                numValueOf = Integer.valueOf(i2);
            } else if (!Precision.equals(entry, 0.0d, this.maxUlps)) {
                return null;
            }
        }
        return numValueOf;
    }

    protected final double[][] getData() {
        return this.tableau.getData();
    }

    protected final double getEntry(int i, int i2) {
        return this.tableau.getEntry(i, i2);
    }

    protected final int getHeight() {
        return this.tableau.getRowDimension();
    }

    protected final int getNumArtificialVariables() {
        return this.numArtificialVariables;
    }

    protected final int getNumDecisionVariables() {
        return this.numDecisionVariables;
    }

    protected final int getNumObjectiveFunctions() {
        return this.numArtificialVariables > 0 ? 2 : 1;
    }

    protected final int getNumSlackVariables() {
        return this.numSlackVariables;
    }

    protected final int getOriginalNumDecisionVariables() {
        return this.f16203f.getCoefficients().getDimension();
    }

    protected final int getRhsOffset() {
        return getWidth() - 1;
    }

    protected final int getSlackVariableOffset() {
        return getNumObjectiveFunctions() + this.numDecisionVariables;
    }

    protected PointValuePair getSolution() {
        int iIndexOf = this.columnLabels.indexOf(NEGATIVE_VAR_COLUMN_LABEL);
        Integer basicRow = iIndexOf > 0 ? getBasicRow(iIndexOf) : null;
        double entry = basicRow == null ? 0.0d : getEntry(basicRow.intValue(), getRhsOffset());
        HashSet hashSet = new HashSet();
        int originalNumDecisionVariables = getOriginalNumDecisionVariables();
        double[] dArr = new double[originalNumDecisionVariables];
        for (int i = 0; i < originalNumDecisionVariables; i++) {
            int iIndexOf2 = this.columnLabels.indexOf("x" + i);
            if (iIndexOf2 < 0) {
                dArr[i] = 0.0d;
            } else {
                Integer basicRow2 = getBasicRow(iIndexOf2);
                if (basicRow2 != null && basicRow2.intValue() == 0) {
                    dArr[i] = 0.0d;
                } else if (hashSet.contains(basicRow2)) {
                    dArr[i] = 0.0d - (this.restrictToNonNegative ? 0.0d : entry);
                } else {
                    hashSet.add(basicRow2);
                    dArr[i] = (basicRow2 == null ? 0.0d : getEntry(basicRow2.intValue(), getRhsOffset())) - (this.restrictToNonNegative ? 0.0d : entry);
                }
            }
        }
        return new PointValuePair(dArr, this.f16203f.getValue(dArr));
    }

    protected final int getWidth() {
        return this.tableau.getColumnDimension();
    }

    public int hashCode() {
        return (((((((Boolean.valueOf(this.restrictToNonNegative).hashCode() ^ this.numDecisionVariables) ^ this.numSlackVariables) ^ this.numArtificialVariables) ^ Double.valueOf(this.epsilon).hashCode()) ^ this.maxUlps) ^ this.f16203f.hashCode()) ^ this.constraints.hashCode()) ^ this.tableau.hashCode();
    }

    protected void initializeColumnLabels() {
        if (getNumObjectiveFunctions() == 2) {
            this.columnLabels.add(ExifInterface.LONGITUDE_WEST);
        }
        this.columnLabels.add("Z");
        for (int i = 0; i < getOriginalNumDecisionVariables(); i++) {
            this.columnLabels.add("x" + i);
        }
        if (!this.restrictToNonNegative) {
            this.columnLabels.add(NEGATIVE_VAR_COLUMN_LABEL);
        }
        for (int i2 = 0; i2 < getNumSlackVariables(); i2++) {
            this.columnLabels.add("s" + i2);
        }
        for (int i3 = 0; i3 < getNumArtificialVariables(); i3++) {
            this.columnLabels.add("a" + i3);
        }
        this.columnLabels.add("RHS");
    }

    boolean isOptimal() {
        for (int numObjectiveFunctions = getNumObjectiveFunctions(); numObjectiveFunctions < getWidth() - 1; numObjectiveFunctions++) {
            if (Precision.compareTo(this.tableau.getEntry(0, numObjectiveFunctions), 0.0d, this.epsilon) < 0) {
                return false;
            }
        }
        return true;
    }

    public List<LinearConstraint> normalizeConstraints(Collection<LinearConstraint> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<LinearConstraint> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(normalize(it.next()));
        }
        return arrayList;
    }

    protected final void setEntry(int i, int i2, double d2) {
        this.tableau.setEntry(i, i2, d2);
    }

    protected void subtractRow(int i, int i2, double d2) {
        for (int i3 = 0; i3 < getWidth(); i3++) {
            double entry = this.tableau.getEntry(i, i3) - (this.tableau.getEntry(i2, i3) * d2);
            if (FastMath.abs(entry) < 1.0E-12d) {
                entry = 0.0d;
            }
            this.tableau.setEntry(i, i3, entry);
        }
    }

    SimplexTableau(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z, double d2, int i) {
        this.columnLabels = new ArrayList();
        this.f16203f = linearObjectiveFunction;
        this.constraints = normalizeConstraints(collection);
        this.restrictToNonNegative = z;
        this.epsilon = d2;
        this.maxUlps = i;
        this.numDecisionVariables = linearObjectiveFunction.getCoefficients().getDimension() + (!z ? 1 : 0);
        int constraintTypeCounts = getConstraintTypeCounts(Relationship.LEQ);
        Relationship relationship = Relationship.GEQ;
        this.numSlackVariables = constraintTypeCounts + getConstraintTypeCounts(relationship);
        this.numArtificialVariables = getConstraintTypeCounts(Relationship.EQ) + getConstraintTypeCounts(relationship);
        this.tableau = createTableau(goalType == GoalType.MAXIMIZE);
        initializeColumnLabels();
    }
}
