package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class Rotation implements Serializable {
    public static final Rotation IDENTITY = new Rotation(1.0d, 0.0d, 0.0d, 0.0d, false);
    private static final long serialVersionUID = -2153622329907944313L;
    private final double q0;
    private final double q1;
    private final double q2;
    private final double q3;

    public Rotation(double d2, double d3, double d4, double d5, boolean z) {
        if (z) {
            double dSqrt = 1.0d / FastMath.sqrt((((d2 * d2) + (d3 * d3)) + (d4 * d4)) + (d5 * d5));
            d2 *= dSqrt;
            d3 *= dSqrt;
            d4 *= dSqrt;
            d5 *= dSqrt;
        }
        this.q0 = d2;
        this.q1 = d3;
        this.q2 = d4;
        this.q3 = d5;
    }

    private Rotation composeInternal(Rotation rotation) {
        double d2 = rotation.q0;
        double d3 = this.q0;
        double d4 = d2 * d3;
        double d5 = rotation.q1;
        double d6 = this.q1;
        double d7 = rotation.q2;
        double d8 = this.q2;
        double d9 = (d5 * d6) + (d7 * d8);
        double d10 = rotation.q3;
        double d11 = this.q3;
        return new Rotation(d4 - (d9 + (d10 * d11)), (d5 * d3) + (d2 * d6) + ((d7 * d11) - (d10 * d8)), (d7 * d3) + (d2 * d8) + ((d10 * d6) - (d5 * d11)), ((d5 * d8) - (d7 * d6)) + (d10 * d3) + (d2 * d11), false);
    }

    private Rotation composeInverseInternal(Rotation rotation) {
        double d2 = rotation.q0;
        double d3 = this.q0;
        double d4 = (-d2) * d3;
        double d5 = rotation.q1;
        double d6 = this.q1;
        double d7 = rotation.q2;
        double d8 = this.q2;
        double d9 = (d5 * d6) + (d7 * d8);
        double d10 = rotation.q3;
        double d11 = this.q3;
        return new Rotation(d4 - (d9 + (d10 * d11)), ((-d5) * d3) + (d2 * d6) + ((d7 * d11) - (d10 * d8)), ((-d7) * d3) + (d2 * d8) + ((d10 * d6) - (d5 * d11)), ((d5 * d8) - (d7 * d6)) + ((-d10) * d3) + (d2 * d11), false);
    }

    public static double distance(Rotation rotation, Rotation rotation2) {
        return rotation.composeInverseInternal(rotation2).getAngle();
    }

    private static double[] mat2quat(double[][] dArr) {
        double[] dArr2 = new double[4];
        double d2 = dArr[0][0] + dArr[1][1] + dArr[2][2];
        if (d2 > -0.19d) {
            dArr2[0] = FastMath.sqrt(d2 + 1.0d) * 0.5d;
            double d3 = 0.25d / dArr2[0];
            dArr2[1] = (dArr[1][2] - dArr[2][1]) * d3;
            dArr2[2] = (dArr[2][0] - dArr[0][2]) * d3;
            dArr2[3] = d3 * (dArr[0][1] - dArr[1][0]);
        } else {
            double d4 = (dArr[0][0] - dArr[1][1]) - dArr[2][2];
            if (d4 > -0.19d) {
                dArr2[1] = FastMath.sqrt(d4 + 1.0d) * 0.5d;
                double d5 = 0.25d / dArr2[1];
                dArr2[0] = (dArr[1][2] - dArr[2][1]) * d5;
                dArr2[2] = (dArr[0][1] + dArr[1][0]) * d5;
                dArr2[3] = d5 * (dArr[0][2] + dArr[2][0]);
            } else {
                double d6 = (dArr[1][1] - dArr[0][0]) - dArr[2][2];
                if (d6 > -0.19d) {
                    dArr2[2] = FastMath.sqrt(d6 + 1.0d) * 0.5d;
                    double d7 = 0.25d / dArr2[2];
                    dArr2[0] = (dArr[2][0] - dArr[0][2]) * d7;
                    dArr2[1] = (dArr[0][1] + dArr[1][0]) * d7;
                    dArr2[3] = d7 * (dArr[2][1] + dArr[1][2]);
                } else {
                    dArr2[3] = FastMath.sqrt(((dArr[2][2] - dArr[0][0]) - dArr[1][1]) + 1.0d) * 0.5d;
                    double d8 = 0.25d / dArr2[3];
                    dArr2[0] = (dArr[0][1] - dArr[1][0]) * d8;
                    dArr2[1] = (dArr[0][2] + dArr[2][0]) * d8;
                    dArr2[2] = d8 * (dArr[2][1] + dArr[1][2]);
                }
            }
        }
        return dArr2;
    }

    private double[][] orthogonalizeMatrix(double[][] dArr, double d2) throws NotARotationMatrixException {
        double[] dArr2 = dArr[0];
        double[] dArr3 = dArr[1];
        double[] dArr4 = dArr[2];
        double d3 = dArr2[0];
        double d4 = dArr2[1];
        double d5 = dArr2[2];
        double d6 = dArr3[0];
        double d7 = dArr3[1];
        double d8 = dArr3[2];
        double d9 = dArr4[0];
        double d10 = dArr4[1];
        double d11 = dArr4[2];
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) double.class, 3, 3);
        double[] dArr6 = dArr5[0];
        char c = 1;
        double[] dArr7 = dArr5[1];
        double[] dArr8 = dArr5[2];
        double d12 = 0.0d;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            double[][] dArr9 = dArr5;
            if (i2 >= 11) {
                throw new NotARotationMatrixException(LocalizedFormats.UNABLE_TO_ORTHOGONOLIZE_MATRIX, Integer.valueOf(i2 - 1));
            }
            double d13 = (dArr2[0] * d3) + (dArr3[0] * d6) + (dArr4[0] * d9);
            double d14 = (dArr2[c] * d3) + (dArr3[c] * d6) + (dArr4[c] * d9);
            double d15 = (dArr2[2] * d3) + (dArr3[2] * d6) + (dArr4[2] * d9);
            double d16 = (dArr2[0] * d4) + (dArr3[0] * d7) + (dArr4[0] * d10);
            double d17 = (dArr2[1] * d4) + (dArr3[1] * d7) + (dArr4[1] * d10);
            double d18 = (dArr2[2] * d4) + (dArr3[2] * d7) + (dArr4[2] * d10);
            double d19 = (dArr2[0] * d5) + (dArr3[0] * d8) + (dArr4[0] * d11);
            double d20 = (dArr2[1] * d5) + (dArr3[1] * d8) + (dArr4[1] * d11);
            double d21 = (dArr2[2] * d5) + (dArr3[2] * d8) + (dArr4[2] * d11);
            dArr6[0] = d3 - (((((d3 * d13) + (d4 * d14)) + (d5 * d15)) - dArr2[0]) * 0.5d);
            dArr6[1] = d4 - (((((d3 * d16) + (d4 * d17)) + (d5 * d18)) - dArr2[1]) * 0.5d);
            dArr6[2] = d5 - (((((d3 * d19) + (d4 * d20)) + (d5 * d21)) - dArr2[2]) * 0.5d);
            dArr7[0] = d6 - (((((d6 * d13) + (d7 * d14)) + (d8 * d15)) - dArr3[0]) * 0.5d);
            dArr7[1] = d7 - (((((d6 * d16) + (d7 * d17)) + (d8 * d18)) - dArr3[1]) * 0.5d);
            dArr7[2] = d8 - (((((d6 * d19) + (d7 * d20)) + (d8 * d21)) - dArr3[2]) * 0.5d);
            dArr8[0] = d9 - (((((d13 * d9) + (d14 * d10)) + (d15 * d11)) - dArr4[0]) * 0.5d);
            dArr8[1] = d10 - (((((d16 * d9) + (d17 * d10)) + (d18 * d11)) - dArr4[1]) * 0.5d);
            dArr8[2] = d11 - (((((d9 * d19) + (d10 * d20)) + (d21 * d11)) - dArr4[2]) * 0.5d);
            double d22 = dArr6[0] - dArr2[0];
            double d23 = dArr6[1] - dArr2[1];
            double d24 = dArr6[2] - dArr2[2];
            double d25 = dArr7[0] - dArr3[0];
            double d26 = dArr7[1] - dArr3[1];
            double d27 = dArr7[2] - dArr3[2];
            double d28 = dArr8[0] - dArr4[0];
            double d29 = dArr8[1] - dArr4[1];
            double d30 = dArr8[2] - dArr4[2];
            double d31 = (d22 * d22) + (d23 * d23) + (d24 * d24) + (d25 * d25) + (d26 * d26) + (d27 * d27) + (d28 * d28) + (d29 * d29) + (d30 * d30);
            if (FastMath.abs(d31 - d12) <= d2) {
                return dArr9;
            }
            double d32 = dArr6[0];
            double d33 = dArr6[1];
            double d34 = dArr6[2];
            double d35 = dArr7[0];
            double d36 = dArr7[1];
            double d37 = dArr7[2];
            double d38 = dArr8[0];
            double d39 = dArr8[1];
            dArr5 = dArr9;
            i = i2;
            c = 1;
            d11 = dArr8[2];
            d12 = d31;
            d3 = d32;
            d4 = d33;
            d5 = d34;
            d6 = d35;
            d7 = d36;
            d8 = d37;
            d9 = d38;
            d10 = d39;
        }
    }

    public Vector3D applyInverseTo(Vector3D vector3D) {
        double x = vector3D.getX();
        double y = vector3D.getY();
        double z = vector3D.getZ();
        double d2 = (this.q1 * x) + (this.q2 * y) + (this.q3 * z);
        double d3 = -this.q0;
        double d4 = this.q2;
        double d5 = d4 * z;
        double d6 = this.q3;
        double d7 = this.q1;
        return new Vector3D((((((x * d3) - (d5 - (d6 * y))) * d3) + (d2 * d7)) * 2.0d) - x, (((((y * d3) - ((d6 * x) - (d7 * z))) * d3) + (d2 * d4)) * 2.0d) - y, (((d3 * ((z * d3) - ((d7 * y) - (x * d4)))) + (d2 * d6)) * 2.0d) - z);
    }

    public Vector3D applyTo(Vector3D vector3D) {
        double x = vector3D.getX();
        double y = vector3D.getY();
        double z = vector3D.getZ();
        double d2 = (this.q1 * x) + (this.q2 * y) + (this.q3 * z);
        double d3 = this.q0;
        double d4 = this.q2;
        double d5 = d4 * z;
        double d6 = this.q3;
        double d7 = this.q1;
        return new Vector3D((((((x * d3) - (d5 - (d6 * y))) * d3) + (d2 * d7)) * 2.0d) - x, (((((y * d3) - ((d6 * x) - (d7 * z))) * d3) + (d2 * d4)) * 2.0d) - y, (((d3 * ((z * d3) - ((d7 * y) - (x * d4)))) + (d2 * d6)) * 2.0d) - z);
    }

    public Rotation compose(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInternal(rotation) : rotation.composeInternal(this);
    }

    public Rotation composeInverse(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInverseInternal(rotation) : rotation.composeInternal(revert());
    }

    public double getAngle() {
        double dAsin;
        double d2 = this.q0;
        if (d2 < -0.1d || d2 > 0.1d) {
            double d3 = this.q1;
            double d4 = this.q2;
            double d5 = (d3 * d3) + (d4 * d4);
            double d6 = this.q3;
            dAsin = FastMath.asin(FastMath.sqrt(d5 + (d6 * d6)));
        } else {
            dAsin = d2 < 0.0d ? FastMath.acos(-d2) : FastMath.acos(d2);
        }
        return dAsin * 2.0d;
    }

    @Deprecated
    public double[] getAngles(RotationOrder rotationOrder) throws CardanEulerSingularityException {
        return getAngles(rotationOrder, RotationConvention.VECTOR_OPERATOR);
    }

    @Deprecated
    public Vector3D getAxis() {
        return getAxis(RotationConvention.VECTOR_OPERATOR);
    }

    public double[][] getMatrix() {
        double d2 = this.q0;
        double d3 = d2 * d2;
        double d4 = this.q1;
        double d5 = d2 * d4;
        double d6 = this.q2;
        double d7 = d2 * d6;
        double d8 = this.q3;
        double d9 = d2 * d8;
        double d10 = d4 * d4;
        double d11 = d4 * d6;
        double d12 = d4 * d8;
        double d13 = d6 * d6;
        double d14 = d6 * d8;
        double d15 = d8 * d8;
        double[][] dArr = {new double[3], new double[3], new double[3]};
        dArr[0][0] = ((d10 + d3) * 2.0d) - 1.0d;
        dArr[1][0] = (d11 - d9) * 2.0d;
        dArr[2][0] = (d12 + d7) * 2.0d;
        dArr[0][1] = (d11 + d9) * 2.0d;
        dArr[1][1] = ((d3 + d13) * 2.0d) - 1.0d;
        dArr[2][1] = (d14 - d5) * 2.0d;
        dArr[0][2] = (d12 - d7) * 2.0d;
        dArr[1][2] = (d14 + d5) * 2.0d;
        dArr[2][2] = ((d3 + d15) * 2.0d) - 1.0d;
        return dArr;
    }

    public double getQ0() {
        return this.q0;
    }

    public double getQ1() {
        return this.q1;
    }

    public double getQ2() {
        return this.q2;
    }

    public double getQ3() {
        return this.q3;
    }

    public Rotation revert() {
        return new Rotation(-this.q0, this.q1, this.q2, this.q3, false);
    }

    public double[] getAngles(RotationOrder rotationOrder, RotationConvention rotationConvention) throws CardanEulerSingularityException {
        if (rotationConvention == RotationConvention.VECTOR_OPERATOR) {
            if (rotationOrder == RotationOrder.XYZ) {
                Vector3D vector3DApplyTo = applyTo(Vector3D.PLUS_K);
                Vector3D vector3DApplyInverseTo = applyInverseTo(Vector3D.PLUS_I);
                if (vector3DApplyInverseTo.getZ() < -0.9999999999d || vector3DApplyInverseTo.getZ() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(-vector3DApplyTo.getY(), vector3DApplyTo.getZ()), FastMath.asin(vector3DApplyInverseTo.getZ()), FastMath.atan2(-vector3DApplyInverseTo.getY(), vector3DApplyInverseTo.getX())};
            }
            if (rotationOrder == RotationOrder.XZY) {
                Vector3D vector3DApplyTo2 = applyTo(Vector3D.PLUS_J);
                Vector3D vector3DApplyInverseTo2 = applyInverseTo(Vector3D.PLUS_I);
                if (vector3DApplyInverseTo2.getY() < -0.9999999999d || vector3DApplyInverseTo2.getY() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(vector3DApplyTo2.getZ(), vector3DApplyTo2.getY()), -FastMath.asin(vector3DApplyInverseTo2.getY()), FastMath.atan2(vector3DApplyInverseTo2.getZ(), vector3DApplyInverseTo2.getX())};
            }
            if (rotationOrder == RotationOrder.YXZ) {
                Vector3D vector3DApplyTo3 = applyTo(Vector3D.PLUS_K);
                Vector3D vector3DApplyInverseTo3 = applyInverseTo(Vector3D.PLUS_J);
                if (vector3DApplyInverseTo3.getZ() < -0.9999999999d || vector3DApplyInverseTo3.getZ() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(vector3DApplyTo3.getX(), vector3DApplyTo3.getZ()), -FastMath.asin(vector3DApplyInverseTo3.getZ()), FastMath.atan2(vector3DApplyInverseTo3.getX(), vector3DApplyInverseTo3.getY())};
            }
            if (rotationOrder == RotationOrder.YZX) {
                Vector3D vector3DApplyTo4 = applyTo(Vector3D.PLUS_I);
                Vector3D vector3DApplyInverseTo4 = applyInverseTo(Vector3D.PLUS_J);
                if (vector3DApplyInverseTo4.getX() < -0.9999999999d || vector3DApplyInverseTo4.getX() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(-vector3DApplyTo4.getZ(), vector3DApplyTo4.getX()), FastMath.asin(vector3DApplyInverseTo4.getX()), FastMath.atan2(-vector3DApplyInverseTo4.getZ(), vector3DApplyInverseTo4.getY())};
            }
            if (rotationOrder == RotationOrder.ZXY) {
                Vector3D vector3DApplyTo5 = applyTo(Vector3D.PLUS_J);
                Vector3D vector3DApplyInverseTo5 = applyInverseTo(Vector3D.PLUS_K);
                if (vector3DApplyInverseTo5.getY() < -0.9999999999d || vector3DApplyInverseTo5.getY() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(-vector3DApplyTo5.getX(), vector3DApplyTo5.getY()), FastMath.asin(vector3DApplyInverseTo5.getY()), FastMath.atan2(-vector3DApplyInverseTo5.getX(), vector3DApplyInverseTo5.getZ())};
            }
            if (rotationOrder == RotationOrder.ZYX) {
                Vector3D vector3DApplyTo6 = applyTo(Vector3D.PLUS_I);
                Vector3D vector3DApplyInverseTo6 = applyInverseTo(Vector3D.PLUS_K);
                if (vector3DApplyInverseTo6.getX() < -0.9999999999d || vector3DApplyInverseTo6.getX() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(vector3DApplyTo6.getY(), vector3DApplyTo6.getX()), -FastMath.asin(vector3DApplyInverseTo6.getX()), FastMath.atan2(vector3DApplyInverseTo6.getY(), vector3DApplyInverseTo6.getZ())};
            }
            if (rotationOrder == RotationOrder.XYX) {
                Vector3D vector3D = Vector3D.PLUS_I;
                Vector3D vector3DApplyTo7 = applyTo(vector3D);
                Vector3D vector3DApplyInverseTo7 = applyInverseTo(vector3D);
                if (vector3DApplyInverseTo7.getX() < -0.9999999999d || vector3DApplyInverseTo7.getX() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(vector3DApplyTo7.getY(), -vector3DApplyTo7.getZ()), FastMath.acos(vector3DApplyInverseTo7.getX()), FastMath.atan2(vector3DApplyInverseTo7.getY(), vector3DApplyInverseTo7.getZ())};
            }
            if (rotationOrder == RotationOrder.XZX) {
                Vector3D vector3D2 = Vector3D.PLUS_I;
                Vector3D vector3DApplyTo8 = applyTo(vector3D2);
                Vector3D vector3DApplyInverseTo8 = applyInverseTo(vector3D2);
                if (vector3DApplyInverseTo8.getX() < -0.9999999999d || vector3DApplyInverseTo8.getX() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(vector3DApplyTo8.getZ(), vector3DApplyTo8.getY()), FastMath.acos(vector3DApplyInverseTo8.getX()), FastMath.atan2(vector3DApplyInverseTo8.getZ(), -vector3DApplyInverseTo8.getY())};
            }
            if (rotationOrder == RotationOrder.YXY) {
                Vector3D vector3D3 = Vector3D.PLUS_J;
                Vector3D vector3DApplyTo9 = applyTo(vector3D3);
                Vector3D vector3DApplyInverseTo9 = applyInverseTo(vector3D3);
                if (vector3DApplyInverseTo9.getY() < -0.9999999999d || vector3DApplyInverseTo9.getY() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(vector3DApplyTo9.getX(), vector3DApplyTo9.getZ()), FastMath.acos(vector3DApplyInverseTo9.getY()), FastMath.atan2(vector3DApplyInverseTo9.getX(), -vector3DApplyInverseTo9.getZ())};
            }
            if (rotationOrder == RotationOrder.YZY) {
                Vector3D vector3D4 = Vector3D.PLUS_J;
                Vector3D vector3DApplyTo10 = applyTo(vector3D4);
                Vector3D vector3DApplyInverseTo10 = applyInverseTo(vector3D4);
                if (vector3DApplyInverseTo10.getY() < -0.9999999999d || vector3DApplyInverseTo10.getY() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(vector3DApplyTo10.getZ(), -vector3DApplyTo10.getX()), FastMath.acos(vector3DApplyInverseTo10.getY()), FastMath.atan2(vector3DApplyInverseTo10.getZ(), vector3DApplyInverseTo10.getX())};
            }
            if (rotationOrder == RotationOrder.ZXZ) {
                Vector3D vector3D5 = Vector3D.PLUS_K;
                Vector3D vector3DApplyTo11 = applyTo(vector3D5);
                Vector3D vector3DApplyInverseTo11 = applyInverseTo(vector3D5);
                if (vector3DApplyInverseTo11.getZ() < -0.9999999999d || vector3DApplyInverseTo11.getZ() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(vector3DApplyTo11.getX(), -vector3DApplyTo11.getY()), FastMath.acos(vector3DApplyInverseTo11.getZ()), FastMath.atan2(vector3DApplyInverseTo11.getX(), vector3DApplyInverseTo11.getY())};
            }
            Vector3D vector3D6 = Vector3D.PLUS_K;
            Vector3D vector3DApplyTo12 = applyTo(vector3D6);
            Vector3D vector3DApplyInverseTo12 = applyInverseTo(vector3D6);
            if (vector3DApplyInverseTo12.getZ() < -0.9999999999d || vector3DApplyInverseTo12.getZ() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(vector3DApplyTo12.getY(), vector3DApplyTo12.getX()), FastMath.acos(vector3DApplyInverseTo12.getZ()), FastMath.atan2(vector3DApplyInverseTo12.getY(), -vector3DApplyInverseTo12.getX())};
        }
        if (rotationOrder == RotationOrder.XYZ) {
            Vector3D vector3DApplyTo13 = applyTo(Vector3D.PLUS_I);
            Vector3D vector3DApplyInverseTo13 = applyInverseTo(Vector3D.PLUS_K);
            if (vector3DApplyInverseTo13.getX() < -0.9999999999d || vector3DApplyInverseTo13.getX() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(-vector3DApplyInverseTo13.getY(), vector3DApplyInverseTo13.getZ()), FastMath.asin(vector3DApplyInverseTo13.getX()), FastMath.atan2(-vector3DApplyTo13.getY(), vector3DApplyTo13.getX())};
        }
        if (rotationOrder == RotationOrder.XZY) {
            Vector3D vector3DApplyTo14 = applyTo(Vector3D.PLUS_I);
            Vector3D vector3DApplyInverseTo14 = applyInverseTo(Vector3D.PLUS_J);
            if (vector3DApplyInverseTo14.getX() < -0.9999999999d || vector3DApplyInverseTo14.getX() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(vector3DApplyInverseTo14.getZ(), vector3DApplyInverseTo14.getY()), -FastMath.asin(vector3DApplyInverseTo14.getX()), FastMath.atan2(vector3DApplyTo14.getZ(), vector3DApplyTo14.getX())};
        }
        if (rotationOrder == RotationOrder.YXZ) {
            Vector3D vector3DApplyTo15 = applyTo(Vector3D.PLUS_J);
            Vector3D vector3DApplyInverseTo15 = applyInverseTo(Vector3D.PLUS_K);
            if (vector3DApplyInverseTo15.getY() < -0.9999999999d || vector3DApplyInverseTo15.getY() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(vector3DApplyInverseTo15.getX(), vector3DApplyInverseTo15.getZ()), -FastMath.asin(vector3DApplyInverseTo15.getY()), FastMath.atan2(vector3DApplyTo15.getX(), vector3DApplyTo15.getY())};
        }
        if (rotationOrder == RotationOrder.YZX) {
            Vector3D vector3DApplyTo16 = applyTo(Vector3D.PLUS_J);
            Vector3D vector3DApplyInverseTo16 = applyInverseTo(Vector3D.PLUS_I);
            if (vector3DApplyInverseTo16.getY() < -0.9999999999d || vector3DApplyInverseTo16.getY() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(-vector3DApplyInverseTo16.getZ(), vector3DApplyInverseTo16.getX()), FastMath.asin(vector3DApplyInverseTo16.getY()), FastMath.atan2(-vector3DApplyTo16.getZ(), vector3DApplyTo16.getY())};
        }
        if (rotationOrder == RotationOrder.ZXY) {
            Vector3D vector3DApplyTo17 = applyTo(Vector3D.PLUS_K);
            Vector3D vector3DApplyInverseTo17 = applyInverseTo(Vector3D.PLUS_J);
            if (vector3DApplyInverseTo17.getZ() < -0.9999999999d || vector3DApplyInverseTo17.getZ() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(-vector3DApplyInverseTo17.getX(), vector3DApplyInverseTo17.getY()), FastMath.asin(vector3DApplyInverseTo17.getZ()), FastMath.atan2(-vector3DApplyTo17.getX(), vector3DApplyTo17.getZ())};
        }
        if (rotationOrder == RotationOrder.ZYX) {
            Vector3D vector3DApplyTo18 = applyTo(Vector3D.PLUS_K);
            Vector3D vector3DApplyInverseTo18 = applyInverseTo(Vector3D.PLUS_I);
            if (vector3DApplyInverseTo18.getZ() < -0.9999999999d || vector3DApplyInverseTo18.getZ() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(vector3DApplyInverseTo18.getY(), vector3DApplyInverseTo18.getX()), -FastMath.asin(vector3DApplyInverseTo18.getZ()), FastMath.atan2(vector3DApplyTo18.getY(), vector3DApplyTo18.getZ())};
        }
        if (rotationOrder == RotationOrder.XYX) {
            Vector3D vector3D7 = Vector3D.PLUS_I;
            Vector3D vector3DApplyTo19 = applyTo(vector3D7);
            Vector3D vector3DApplyInverseTo19 = applyInverseTo(vector3D7);
            if (vector3DApplyInverseTo19.getX() < -0.9999999999d || vector3DApplyInverseTo19.getX() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(vector3DApplyInverseTo19.getY(), -vector3DApplyInverseTo19.getZ()), FastMath.acos(vector3DApplyInverseTo19.getX()), FastMath.atan2(vector3DApplyTo19.getY(), vector3DApplyTo19.getZ())};
        }
        if (rotationOrder == RotationOrder.XZX) {
            Vector3D vector3D8 = Vector3D.PLUS_I;
            Vector3D vector3DApplyTo20 = applyTo(vector3D8);
            Vector3D vector3DApplyInverseTo20 = applyInverseTo(vector3D8);
            if (vector3DApplyInverseTo20.getX() < -0.9999999999d || vector3DApplyInverseTo20.getX() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(vector3DApplyInverseTo20.getZ(), vector3DApplyInverseTo20.getY()), FastMath.acos(vector3DApplyInverseTo20.getX()), FastMath.atan2(vector3DApplyTo20.getZ(), -vector3DApplyTo20.getY())};
        }
        if (rotationOrder == RotationOrder.YXY) {
            Vector3D vector3D9 = Vector3D.PLUS_J;
            Vector3D vector3DApplyTo21 = applyTo(vector3D9);
            Vector3D vector3DApplyInverseTo21 = applyInverseTo(vector3D9);
            if (vector3DApplyInverseTo21.getY() < -0.9999999999d || vector3DApplyInverseTo21.getY() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(vector3DApplyInverseTo21.getX(), vector3DApplyInverseTo21.getZ()), FastMath.acos(vector3DApplyInverseTo21.getY()), FastMath.atan2(vector3DApplyTo21.getX(), -vector3DApplyTo21.getZ())};
        }
        if (rotationOrder == RotationOrder.YZY) {
            Vector3D vector3D10 = Vector3D.PLUS_J;
            Vector3D vector3DApplyTo22 = applyTo(vector3D10);
            Vector3D vector3DApplyInverseTo22 = applyInverseTo(vector3D10);
            if (vector3DApplyInverseTo22.getY() < -0.9999999999d || vector3DApplyInverseTo22.getY() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(vector3DApplyInverseTo22.getZ(), -vector3DApplyInverseTo22.getX()), FastMath.acos(vector3DApplyInverseTo22.getY()), FastMath.atan2(vector3DApplyTo22.getZ(), vector3DApplyTo22.getX())};
        }
        if (rotationOrder == RotationOrder.ZXZ) {
            Vector3D vector3D11 = Vector3D.PLUS_K;
            Vector3D vector3DApplyTo23 = applyTo(vector3D11);
            Vector3D vector3DApplyInverseTo23 = applyInverseTo(vector3D11);
            if (vector3DApplyInverseTo23.getZ() < -0.9999999999d || vector3DApplyInverseTo23.getZ() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(vector3DApplyInverseTo23.getX(), -vector3DApplyInverseTo23.getY()), FastMath.acos(vector3DApplyInverseTo23.getZ()), FastMath.atan2(vector3DApplyTo23.getX(), vector3DApplyTo23.getY())};
        }
        Vector3D vector3D12 = Vector3D.PLUS_K;
        Vector3D vector3DApplyTo24 = applyTo(vector3D12);
        Vector3D vector3DApplyInverseTo24 = applyInverseTo(vector3D12);
        if (vector3DApplyInverseTo24.getZ() < -0.9999999999d || vector3DApplyInverseTo24.getZ() > 0.9999999999d) {
            throw new CardanEulerSingularityException(false);
        }
        return new double[]{FastMath.atan2(vector3DApplyInverseTo24.getY(), vector3DApplyInverseTo24.getX()), FastMath.acos(vector3DApplyInverseTo24.getZ()), FastMath.atan2(vector3DApplyTo24.getY(), -vector3DApplyTo24.getX())};
    }

    public Vector3D getAxis(RotationConvention rotationConvention) {
        double d2 = this.q1;
        double d3 = this.q2;
        double d4 = (d2 * d2) + (d3 * d3);
        double d5 = this.q3;
        double d6 = d4 + (d5 * d5);
        if (d6 == 0.0d) {
            return rotationConvention == RotationConvention.VECTOR_OPERATOR ? Vector3D.PLUS_I : Vector3D.MINUS_I;
        }
        double d7 = rotationConvention == RotationConvention.VECTOR_OPERATOR ? 1.0d : -1.0d;
        if (this.q0 < 0.0d) {
            double dSqrt = d7 / FastMath.sqrt(d6);
            return new Vector3D(this.q1 * dSqrt, this.q2 * dSqrt, this.q3 * dSqrt);
        }
        double dSqrt2 = (-d7) / FastMath.sqrt(d6);
        return new Vector3D(this.q1 * dSqrt2, this.q2 * dSqrt2, this.q3 * dSqrt2);
    }

    public void applyTo(double[] dArr, double[] dArr2) {
        double d2 = dArr[0];
        double d3 = dArr[1];
        double d4 = dArr[2];
        double d5 = this.q1;
        double d6 = this.q2;
        double d7 = this.q3;
        double d8 = (d5 * d2) + (d6 * d3) + (d7 * d4);
        double d9 = this.q0;
        dArr2[0] = (((((d2 * d9) - ((d6 * d4) - (d7 * d3))) * d9) + (d8 * d5)) * 2.0d) - d2;
        dArr2[1] = (((((d3 * d9) - ((d7 * d2) - (d5 * d4))) * d9) + (d8 * d6)) * 2.0d) - d3;
        dArr2[2] = (((d9 * ((d4 * d9) - ((d5 * d3) - (d6 * d2)))) + (d8 * d7)) * 2.0d) - d4;
    }

    @Deprecated
    public Rotation(Vector3D vector3D, double d2) throws MathIllegalArgumentException {
        this(vector3D, d2, RotationConvention.VECTOR_OPERATOR);
    }

    public void applyInverseTo(double[] dArr, double[] dArr2) {
        double d2 = dArr[0];
        double d3 = dArr[1];
        double d4 = dArr[2];
        double d5 = this.q1;
        double d6 = this.q2;
        double d7 = this.q3;
        double d8 = (d5 * d2) + (d6 * d3) + (d7 * d4);
        double d9 = -this.q0;
        dArr2[0] = (((((d2 * d9) - ((d6 * d4) - (d7 * d3))) * d9) + (d8 * d5)) * 2.0d) - d2;
        dArr2[1] = (((((d3 * d9) - ((d7 * d2) - (d5 * d4))) * d9) + (d8 * d6)) * 2.0d) - d3;
        dArr2[2] = (((d9 * ((d4 * d9) - ((d5 * d3) - (d6 * d2)))) + (d8 * d7)) * 2.0d) - d4;
    }

    public Rotation(Vector3D vector3D, double d2, RotationConvention rotationConvention) throws MathIllegalArgumentException {
        double norm = vector3D.getNorm();
        if (norm != 0.0d) {
            double d3 = d2 * (rotationConvention == RotationConvention.VECTOR_OPERATOR ? -0.5d : 0.5d);
            double dSin = FastMath.sin(d3) / norm;
            this.q0 = FastMath.cos(d3);
            this.q1 = vector3D.getX() * dSin;
            this.q2 = vector3D.getY() * dSin;
            this.q3 = dSin * vector3D.getZ();
            return;
        }
        throw new MathIllegalArgumentException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_AXIS, new Object[0]);
    }

    public Rotation applyTo(Rotation rotation) {
        return compose(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public Rotation applyInverseTo(Rotation rotation) {
        return composeInverse(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public Rotation(double[][] dArr, double d2) throws NotARotationMatrixException {
        if (dArr.length == 3 && dArr[0].length == 3 && dArr[1].length == 3 && dArr[2].length == 3) {
            double[][] dArrOrthogonalizeMatrix = orthogonalizeMatrix(dArr, d2);
            double d3 = ((dArrOrthogonalizeMatrix[0][0] * ((dArrOrthogonalizeMatrix[1][1] * dArrOrthogonalizeMatrix[2][2]) - (dArrOrthogonalizeMatrix[2][1] * dArrOrthogonalizeMatrix[1][2]))) - (dArrOrthogonalizeMatrix[1][0] * ((dArrOrthogonalizeMatrix[0][1] * dArrOrthogonalizeMatrix[2][2]) - (dArrOrthogonalizeMatrix[2][1] * dArrOrthogonalizeMatrix[0][2])))) + (dArrOrthogonalizeMatrix[2][0] * ((dArrOrthogonalizeMatrix[0][1] * dArrOrthogonalizeMatrix[1][2]) - (dArrOrthogonalizeMatrix[1][1] * dArrOrthogonalizeMatrix[0][2])));
            if (d3 >= 0.0d) {
                double[] dArrMat2quat = mat2quat(dArrOrthogonalizeMatrix);
                this.q0 = dArrMat2quat[0];
                this.q1 = dArrMat2quat[1];
                this.q2 = dArrMat2quat[2];
                this.q3 = dArrMat2quat[3];
                return;
            }
            throw new NotARotationMatrixException(LocalizedFormats.CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT, Double.valueOf(d3));
        }
        throw new NotARotationMatrixException(LocalizedFormats.ROTATION_MATRIX_DIMENSIONS, Integer.valueOf(dArr.length), Integer.valueOf(dArr[0].length));
    }

    public Rotation(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3, Vector3D vector3D4) throws MathArithmeticException {
        Vector3D vector3DNormalize = vector3D.crossProduct(vector3D2).normalize();
        Vector3D vector3DNormalize2 = vector3DNormalize.crossProduct(vector3D).normalize();
        Vector3D vector3DNormalize3 = vector3D.normalize();
        Vector3D vector3DNormalize4 = vector3D3.crossProduct(vector3D4).normalize();
        Vector3D vector3DNormalize5 = vector3DNormalize4.crossProduct(vector3D3).normalize();
        Vector3D vector3DNormalize6 = vector3D3.normalize();
        double[] dArrMat2quat = mat2quat(new double[][]{new double[]{MathArrays.linearCombination(vector3DNormalize3.getX(), vector3DNormalize6.getX(), vector3DNormalize2.getX(), vector3DNormalize5.getX(), vector3DNormalize.getX(), vector3DNormalize4.getX()), MathArrays.linearCombination(vector3DNormalize3.getY(), vector3DNormalize6.getX(), vector3DNormalize2.getY(), vector3DNormalize5.getX(), vector3DNormalize.getY(), vector3DNormalize4.getX()), MathArrays.linearCombination(vector3DNormalize3.getZ(), vector3DNormalize6.getX(), vector3DNormalize2.getZ(), vector3DNormalize5.getX(), vector3DNormalize.getZ(), vector3DNormalize4.getX())}, new double[]{MathArrays.linearCombination(vector3DNormalize3.getX(), vector3DNormalize6.getY(), vector3DNormalize2.getX(), vector3DNormalize5.getY(), vector3DNormalize.getX(), vector3DNormalize4.getY()), MathArrays.linearCombination(vector3DNormalize3.getY(), vector3DNormalize6.getY(), vector3DNormalize2.getY(), vector3DNormalize5.getY(), vector3DNormalize.getY(), vector3DNormalize4.getY()), MathArrays.linearCombination(vector3DNormalize3.getZ(), vector3DNormalize6.getY(), vector3DNormalize2.getZ(), vector3DNormalize5.getY(), vector3DNormalize.getZ(), vector3DNormalize4.getY())}, new double[]{MathArrays.linearCombination(vector3DNormalize3.getX(), vector3DNormalize6.getZ(), vector3DNormalize2.getX(), vector3DNormalize5.getZ(), vector3DNormalize.getX(), vector3DNormalize4.getZ()), MathArrays.linearCombination(vector3DNormalize3.getY(), vector3DNormalize6.getZ(), vector3DNormalize2.getY(), vector3DNormalize5.getZ(), vector3DNormalize.getY(), vector3DNormalize4.getZ()), MathArrays.linearCombination(vector3DNormalize3.getZ(), vector3DNormalize6.getZ(), vector3DNormalize2.getZ(), vector3DNormalize5.getZ(), vector3DNormalize.getZ(), vector3DNormalize4.getZ())}});
        this.q0 = dArrMat2quat[0];
        this.q1 = dArrMat2quat[1];
        this.q2 = dArrMat2quat[2];
        this.q3 = dArrMat2quat[3];
    }

    public Rotation(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        double norm = vector3D.getNorm() * vector3D2.getNorm();
        if (norm != 0.0d) {
            double dDotProduct = vector3D.dotProduct(vector3D2);
            if (dDotProduct < (-0.999999999999998d) * norm) {
                Vector3D vector3DOrthogonal = vector3D.orthogonal();
                this.q0 = 0.0d;
                this.q1 = -vector3DOrthogonal.getX();
                this.q2 = -vector3DOrthogonal.getY();
                this.q3 = -vector3DOrthogonal.getZ();
                return;
            }
            double dSqrt = FastMath.sqrt(((dDotProduct / norm) + 1.0d) * 0.5d);
            this.q0 = dSqrt;
            double d2 = 1.0d / ((dSqrt * 2.0d) * norm);
            Vector3D vector3DCrossProduct = vector3D2.crossProduct(vector3D);
            this.q1 = vector3DCrossProduct.getX() * d2;
            this.q2 = vector3DCrossProduct.getY() * d2;
            this.q3 = d2 * vector3DCrossProduct.getZ();
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR, new Object[0]);
    }

    @Deprecated
    public Rotation(RotationOrder rotationOrder, double d2, double d3, double d4) {
        this(rotationOrder, RotationConvention.VECTOR_OPERATOR, d2, d3, d4);
    }

    public Rotation(RotationOrder rotationOrder, RotationConvention rotationConvention, double d2, double d3, double d4) {
        Rotation rotationCompose = new Rotation(rotationOrder.getA1(), d2, rotationConvention).compose(new Rotation(rotationOrder.getA2(), d3, rotationConvention).compose(new Rotation(rotationOrder.getA3(), d4, rotationConvention), rotationConvention), rotationConvention);
        this.q0 = rotationCompose.q0;
        this.q1 = rotationCompose.q1;
        this.q2 = rotationCompose.q2;
        this.q3 = rotationCompose.q3;
    }
}
