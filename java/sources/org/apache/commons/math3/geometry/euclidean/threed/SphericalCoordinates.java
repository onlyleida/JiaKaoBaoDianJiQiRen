package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class SphericalCoordinates implements Serializable {
    private static final long serialVersionUID = 20130206;
    private double[][] jacobian;
    private final double phi;
    private double[][] phiHessian;
    private final double r;
    private double[][] rHessian;
    private final double theta;
    private double[][] thetaHessian;
    private final Vector3D v;

    private static class DataTransferObject implements Serializable {
        private static final long serialVersionUID = 20130206;
        private final double x;
        private final double y;
        private final double z;

        DataTransferObject(double d2, double d3, double d4) {
            this.x = d2;
            this.y = d3;
            this.z = d4;
        }

        private Object readResolve() {
            return new SphericalCoordinates(new Vector3D(this.x, this.y, this.z));
        }
    }

    public SphericalCoordinates(Vector3D vector3D) {
        this.v = vector3D;
        double norm = vector3D.getNorm();
        this.r = norm;
        this.theta = vector3D.getAlpha();
        this.phi = FastMath.acos(vector3D.getZ() / norm);
    }

    private void computeHessians() {
        if (this.rHessian == null) {
            double x = this.v.getX();
            double y = this.v.getY();
            double z = this.v.getZ();
            double d2 = x * x;
            double d3 = y * y;
            double d4 = z * z;
            double d5 = d2 + d3;
            double dSqrt = FastMath.sqrt(d5);
            double d6 = d5 + d4;
            double d7 = this.r;
            double d8 = x / d5;
            double d9 = y / d5;
            double d10 = (x / d7) / d6;
            double d11 = (y / d7) / d6;
            double d12 = (z / d7) / d6;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, 3, 3);
            this.rHessian = dArr;
            double d13 = y * d11;
            double d14 = z * d12;
            dArr[0][0] = d13 + d14;
            double d15 = -x;
            dArr[1][0] = d11 * d15;
            dArr[2][0] = (-z) * d10;
            double d16 = d10 * x;
            dArr[1][1] = d16 + d14;
            dArr[2][1] = (-y) * d12;
            dArr[2][2] = d16 + d13;
            dArr[0][1] = dArr[1][0];
            dArr[0][2] = dArr[2][0];
            dArr[1][2] = dArr[2][1];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, 2, 2);
            this.thetaHessian = dArr2;
            dArr2[0][0] = d8 * 2.0d * d9;
            dArr2[1][0] = (d9 * d9) - (d8 * d8);
            dArr2[1][1] = d8 * (-2.0d) * d9;
            dArr2[0][1] = dArr2[1][0];
            double d17 = dSqrt * d6;
            double d18 = dSqrt * d17;
            double d19 = d17 * d6;
            double d20 = d19 * d5;
            double d21 = (3.0d * d5) + d4;
            double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, 3, 3);
            this.phiHessian = dArr3;
            dArr3[0][0] = ((d18 - (d2 * d21)) * z) / d20;
            dArr3[1][0] = (((d15 * y) * z) * d21) / d20;
            double d22 = d5 - d4;
            dArr3[2][0] = (x * d22) / d19;
            dArr3[1][1] = (z * (d18 - (d3 * d21))) / d20;
            dArr3[2][1] = (y * d22) / d19;
            dArr3[2][2] = ((dSqrt * 2.0d) * d12) / this.r;
            dArr3[0][1] = dArr3[1][0];
            dArr3[0][2] = dArr3[2][0];
            dArr3[1][2] = dArr3[2][1];
        }
    }

    private void computeJacobian() {
        if (this.jacobian == null) {
            double x = this.v.getX();
            double y = this.v.getY();
            double z = this.v.getZ();
            double d2 = (x * x) + (y * y);
            double dSqrt = FastMath.sqrt(d2);
            double d3 = (z * z) + d2;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, 3, 3);
            this.jacobian = dArr;
            double[] dArr2 = dArr[0];
            double d4 = this.r;
            dArr2[0] = x / d4;
            dArr[0][1] = y / d4;
            dArr[0][2] = z / d4;
            dArr[1][0] = (-y) / d2;
            dArr[1][1] = x / d2;
            double d5 = dSqrt * d3;
            dArr[2][0] = (x * z) / d5;
            dArr[2][1] = (y * z) / d5;
            dArr[2][2] = (-dSqrt) / d3;
        }
    }

    private Object writeReplace() {
        return new DataTransferObject(this.v.getX(), this.v.getY(), this.v.getZ());
    }

    public Vector3D getCartesian() {
        return this.v;
    }

    public double getPhi() {
        return this.phi;
    }

    public double getR() {
        return this.r;
    }

    public double getTheta() {
        return this.theta;
    }

    public double[] toCartesianGradient(double[] dArr) {
        computeJacobian();
        double d2 = dArr[0];
        double[][] dArr2 = this.jacobian;
        return new double[]{(d2 * dArr2[0][0]) + (dArr[1] * dArr2[1][0]) + (dArr[2] * dArr2[2][0]), (dArr[0] * dArr2[0][1]) + (dArr[1] * dArr2[1][1]) + (dArr[2] * dArr2[2][1]), (dArr[0] * dArr2[0][2]) + (dArr[2] * dArr2[2][2])};
    }

    public double[][] toCartesianHessian(double[][] dArr, double[] dArr2) {
        computeJacobian();
        computeHessians();
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, 3, 3);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, 3, 3);
        double[] dArr5 = dArr3[0];
        double d2 = dArr[0][0];
        double[][] dArr6 = this.jacobian;
        dArr5[0] = (d2 * dArr6[0][0]) + (dArr[1][0] * dArr6[1][0]) + (dArr[2][0] * dArr6[2][0]);
        dArr3[0][1] = (dArr[0][0] * dArr6[0][1]) + (dArr[1][0] * dArr6[1][1]) + (dArr[2][0] * dArr6[2][1]);
        dArr3[0][2] = (dArr[0][0] * dArr6[0][2]) + (dArr[2][0] * dArr6[2][2]);
        dArr3[1][0] = (dArr[1][0] * dArr6[0][0]) + (dArr[1][1] * dArr6[1][0]) + (dArr[2][1] * dArr6[2][0]);
        dArr3[1][1] = (dArr[1][0] * dArr6[0][1]) + (dArr[1][1] * dArr6[1][1]) + (dArr[2][1] * dArr6[2][1]);
        dArr3[2][0] = (dArr[2][0] * dArr6[0][0]) + (dArr[2][1] * dArr6[1][0]) + (dArr[2][2] * dArr6[2][0]);
        dArr3[2][1] = (dArr[2][0] * dArr6[0][1]) + (dArr[2][1] * dArr6[1][1]) + (dArr[2][2] * dArr6[2][1]);
        dArr3[2][2] = (dArr[2][0] * dArr6[0][2]) + (dArr[2][2] * dArr6[2][2]);
        dArr4[0][0] = (dArr6[0][0] * dArr3[0][0]) + (dArr6[1][0] * dArr3[1][0]) + (dArr6[2][0] * dArr3[2][0]);
        dArr4[1][0] = (dArr6[0][1] * dArr3[0][0]) + (dArr6[1][1] * dArr3[1][0]) + (dArr6[2][1] * dArr3[2][0]);
        dArr4[2][0] = (dArr6[0][2] * dArr3[0][0]) + (dArr6[2][2] * dArr3[2][0]);
        dArr4[1][1] = (dArr6[0][1] * dArr3[0][1]) + (dArr6[1][1] * dArr3[1][1]) + (dArr6[2][1] * dArr3[2][1]);
        dArr4[2][1] = (dArr6[0][2] * dArr3[0][1]) + (dArr6[2][2] * dArr3[2][1]);
        dArr4[2][2] = (dArr6[0][2] * dArr3[0][2]) + (dArr6[2][2] * dArr3[2][2]);
        double[] dArr7 = dArr4[0];
        double d3 = dArr7[0];
        double d4 = dArr2[0];
        double[][] dArr8 = this.rHessian;
        double d5 = d4 * dArr8[0][0];
        double d6 = dArr2[1];
        double[][] dArr9 = this.thetaHessian;
        double d7 = d5 + (d6 * dArr9[0][0]);
        double d8 = dArr2[2];
        double[][] dArr10 = this.phiHessian;
        dArr7[0] = d3 + d7 + (d8 * dArr10[0][0]);
        double[] dArr11 = dArr4[1];
        dArr11[0] = dArr11[0] + (dArr2[0] * dArr8[1][0]) + (dArr2[1] * dArr9[1][0]) + (dArr2[2] * dArr10[1][0]);
        double[] dArr12 = dArr4[2];
        dArr12[0] = dArr12[0] + (dArr2[0] * dArr8[2][0]) + (dArr2[2] * dArr10[2][0]);
        double[] dArr13 = dArr4[1];
        dArr13[1] = dArr13[1] + (dArr2[0] * dArr8[1][1]) + (dArr2[1] * dArr9[1][1]) + (dArr2[2] * dArr10[1][1]);
        double[] dArr14 = dArr4[2];
        dArr14[1] = dArr14[1] + (dArr2[0] * dArr8[2][1]) + (dArr2[2] * dArr10[2][1]);
        double[] dArr15 = dArr4[2];
        dArr15[2] = dArr15[2] + (dArr2[0] * dArr8[2][2]) + (dArr2[2] * dArr10[2][2]);
        dArr4[0][1] = dArr4[1][0];
        dArr4[0][2] = dArr4[2][0];
        dArr4[1][2] = dArr4[2][1];
        return dArr4;
    }

    public SphericalCoordinates(double d2, double d3, double d4) {
        double dCos = FastMath.cos(d3);
        double dSin = FastMath.sin(d3);
        double dCos2 = FastMath.cos(d4);
        double dSin2 = FastMath.sin(d4);
        this.r = d2;
        this.theta = d3;
        this.phi = d4;
        this.v = new Vector3D(dCos * d2 * dSin2, d2 * dSin * dSin2, d2 * dCos2);
    }
}
