package org.apache.commons.math3.optimization.linear;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealVector;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class LinearConstraint implements Serializable {
    private static final long serialVersionUID = -764632794033034092L;
    private final transient RealVector coefficients;
    private final Relationship relationship;
    private final double value;

    public LinearConstraint(double[] dArr, Relationship relationship, double d2) {
        this(new ArrayRealVector(dArr), relationship, d2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        MatrixUtils.deserializeRealVector(this, "coefficients", objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        MatrixUtils.serializeRealVector(this.coefficients, objectOutputStream);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinearConstraint)) {
            return false;
        }
        LinearConstraint linearConstraint = (LinearConstraint) obj;
        return this.relationship == linearConstraint.relationship && this.value == linearConstraint.value && this.coefficients.equals(linearConstraint.coefficients);
    }

    public RealVector getCoefficients() {
        return this.coefficients;
    }

    public Relationship getRelationship() {
        return this.relationship;
    }

    public double getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.relationship.hashCode() ^ Double.valueOf(this.value).hashCode()) ^ this.coefficients.hashCode();
    }

    public LinearConstraint(RealVector realVector, Relationship relationship, double d2) {
        this.coefficients = realVector;
        this.relationship = relationship;
        this.value = d2;
    }

    public LinearConstraint(double[] dArr, double d2, Relationship relationship, double[] dArr2, double d3) {
        int length = dArr.length;
        double[] dArr3 = new double[length];
        for (int i = 0; i < length; i++) {
            dArr3[i] = dArr[i] - dArr2[i];
        }
        this.coefficients = new ArrayRealVector(dArr3, false);
        this.relationship = relationship;
        this.value = d3 - d2;
    }

    public LinearConstraint(RealVector realVector, double d2, Relationship relationship, RealVector realVector2, double d3) {
        this.coefficients = realVector.subtract(realVector2);
        this.relationship = relationship;
        this.value = d3 - d2;
    }
}
