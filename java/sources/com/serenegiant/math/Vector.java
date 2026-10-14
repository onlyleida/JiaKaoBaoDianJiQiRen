package com.serenegiant.math;

import android.opengl.Matrix;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class Vector implements Serializable, Cloneable {
    public static final float TO_DEGREE = 57.29578f;
    public static final float TO_RADIAN = 0.017453292f;
    private static final long serialVersionUID = 1620440892067002860L;
    public float x;
    public float y;
    public float z;
    public static final Vector zeroVector = new Vector();
    public static final Vector normVector = new Vector(1.0f, 1.0f, 1.0f);
    private static final float[] matrix = new float[16];
    private static final float[] inVec = new float[4];
    private static final float[] outVec = new float[4];

    public Vector() {
    }

    public static Vector vector(float f2, float f3, float f4) {
        return new Vector(f2, f3, f4);
    }

    public Vector add(float f2, float f3) {
        return add(f2, f3, BitmapDescriptorFactory.HUE_RED);
    }

    public float angleXY() {
        float fAtan2 = ((float) Math.atan2(this.y, this.x)) * 57.29578f;
        return fAtan2 < BitmapDescriptorFactory.HUE_RED ? fAtan2 + 360.0f : fAtan2;
    }

    public float angleXZ() {
        float fAtan2 = ((float) Math.atan2(this.z, this.x)) * 57.29578f;
        return fAtan2 < BitmapDescriptorFactory.HUE_RED ? fAtan2 + 360.0f : fAtan2;
    }

    public float angleYZ() {
        float fAtan2 = ((float) Math.atan2(this.z, this.y)) * 57.29578f;
        return fAtan2 < BitmapDescriptorFactory.HUE_RED ? fAtan2 + 360.0f : fAtan2;
    }

    public Vector clear(float f2) {
        this.z = f2;
        this.y = f2;
        this.x = f2;
        return this;
    }

    public Vector cross(Vector vector) {
        return crossProduct(this, this, vector);
    }

    public float cross2(Vector vector) {
        return (this.x * vector.y) - (vector.x * this.y);
    }

    public Vector crossProduct(Vector vector) {
        return crossProduct(this, this, vector);
    }

    public float crossProduct2(Vector vector) {
        return (this.x * vector.y) - (vector.x * this.y);
    }

    public float distSquared(Vector vector) {
        return distSquared(vector.x, vector.y, vector.z);
    }

    public float distance(Vector vector) {
        return distance(vector.x, vector.y, vector.z);
    }

    public Vector div(Vector vector) {
        this.x /= vector.x;
        this.y /= vector.y;
        this.z /= vector.z;
        return this;
    }

    public float dot(Vector vector) {
        return (this.x * vector.x) + (this.y * vector.y) + (this.z * vector.z);
    }

    public float dotProduct(Vector vector) {
        return (this.x * vector.x) + (this.y * vector.y) + (this.z * vector.z);
    }

    public float getAngle(Vector vector) {
        return ((float) Math.acos(dotProduct(vector) / ((float) Math.sqrt(lenSquared() * vector.lenSquared())))) * 57.29578f;
    }

    public float[] getQuat() {
        return new float[]{this.x, this.y, this.z, 1.0f};
    }

    public float len() {
        float f2 = this.x;
        float f3 = this.y;
        float f4 = (f2 * f2) + (f3 * f3);
        float f5 = this.z;
        return (float) Math.sqrt(f4 + (f5 * f5));
    }

    public float lenSquared() {
        float f2 = this.x;
        float f3 = this.y;
        float f4 = (f2 * f2) + (f3 * f3);
        float f5 = this.z;
        return f4 + (f5 * f5);
    }

    public Vector limit(float f2) {
        float f3;
        float f4 = this.x;
        if (f4 >= f2) {
            f4 = f2;
        } else {
            float f5 = -f2;
            if (f4 < f5) {
                f4 = f5;
            }
        }
        this.x = f4;
        float f6 = this.y;
        if (f6 >= f2) {
            f6 = f2;
        } else {
            float f7 = -f2;
            if (f6 < f7) {
                f6 = f7;
            }
        }
        this.y = f6;
        float f8 = this.z;
        if (f8 >= f2) {
            f8 = f2;
        } else {
            float f9 = -f2;
            if (f8 < f9) {
                f8 = f9;
            }
        }
        this.z = f8;
        while (true) {
            float f10 = this.x;
            if (f10 < f2) {
                break;
            }
            this.x = f10 - f2;
        }
        while (true) {
            float f11 = this.x;
            f3 = -f2;
            if (f11 >= f3) {
                break;
            }
            this.x = f11 + f2;
        }
        while (true) {
            float f12 = this.y;
            if (f12 < f2) {
                break;
            }
            this.y = f12 - f2;
        }
        while (true) {
            float f13 = this.y;
            if (f13 >= f3) {
                break;
            }
            this.y = f13 + f2;
        }
        while (true) {
            float f14 = this.z;
            if (f14 < f2) {
                break;
            }
            this.z = f14 - f2;
        }
        while (true) {
            float f15 = this.z;
            if (f15 >= f3) {
                return this;
            }
            this.z = f15 + f2;
        }
    }

    public Vector mod(float f2) {
        this.x %= f2;
        this.y %= f2;
        this.z %= f2;
        return this;
    }

    public Vector mult(Vector vector) {
        this.x *= vector.x;
        this.y *= vector.y;
        this.z *= vector.z;
        return this;
    }

    public Vector normalize() {
        float fLen = len();
        if (fLen != BitmapDescriptorFactory.HUE_RED) {
            this.x /= fLen;
            this.y /= fLen;
            this.z /= fLen;
        }
        return this;
    }

    public Vector rotate(float f2, float f3, float f4, float f5) {
        float[] fArr = inVec;
        fArr[0] = this.x;
        fArr[1] = this.y;
        fArr[2] = this.z;
        fArr[3] = 1.0f;
        float[] fArr2 = matrix;
        Matrix.setIdentityM(fArr2, 0);
        Matrix.rotateM(fArr2, 0, f2, f3, f4, f5);
        float[] fArr3 = outVec;
        Matrix.multiplyMV(fArr3, 0, fArr2, 0, fArr, 0);
        this.x = fArr3[0];
        this.y = fArr3[1];
        this.z = fArr3[2];
        return this;
    }

    public Vector rotateXY(float f2) {
        double d2 = f2 * 0.017453292f;
        float fCos = (float) Math.cos(d2);
        float fSin = (float) Math.sin(d2);
        float f3 = this.x;
        float f4 = this.y;
        this.x = (f3 * fCos) - (f4 * fSin);
        this.y = (f3 * fSin) + (f4 * fCos);
        return this;
    }

    public Vector rotateXZ(float f2) {
        double d2 = f2 * 0.017453292f;
        float fCos = (float) Math.cos(d2);
        float fSin = (float) Math.sin(d2);
        float f3 = this.x;
        float f4 = this.z;
        this.x = (f3 * fCos) - (f4 * fSin);
        this.z = (f3 * fSin) + (f4 * fCos);
        return this;
    }

    public Vector rotateYZ(float f2) {
        double d2 = f2 * 0.017453292f;
        float fCos = (float) Math.cos(d2);
        float fSin = (float) Math.sin(d2);
        float f3 = this.y;
        float f4 = this.z;
        this.y = (f3 * fCos) - (f4 * fSin);
        this.z = (f3 * fSin) + (f4 * fCos);
        return this;
    }

    public Vector rotate_inv(float f2, float f3, float f4) {
        float[] fArr = inVec;
        fArr[0] = this.x;
        fArr[1] = this.y;
        fArr[2] = this.z;
        fArr[3] = 1.0f;
        float[] fArr2 = matrix;
        Matrix.setIdentityM(fArr2, 0);
        if (f4 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr2, 0, f4, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        }
        if (f3 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr2, 0, f3, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
        }
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr2, 0, f2, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        float[] fArr3 = outVec;
        Matrix.multiplyMV(fArr3, 0, fArr2, 0, fArr, 0);
        this.x = fArr3[0];
        this.y = fArr3[1];
        this.z = fArr3[2];
        return this;
    }

    public Vector set(float f2, float f3) {
        return set(f2, f3, BitmapDescriptorFactory.HUE_RED);
    }

    public Vector setQuat(float[] fArr) {
        this.x = fArr[0];
        this.y = fArr[1];
        this.z = fArr[2];
        return this;
    }

    public Vector sign() {
        this.x = Math.signum(this.x);
        this.y = Math.signum(this.y);
        this.z = Math.signum(this.z);
        return this;
    }

    public float slope(Vector vector) {
        float f2 = vector.x;
        float f3 = this.x;
        if (f2 != f3) {
            return (vector.y - this.y) / (f2 - f3);
        }
        return vector.y - this.y >= BitmapDescriptorFactory.HUE_RED ? Float.MAX_VALUE : Float.MIN_VALUE;
    }

    public Vector sub(float f2, float f3) {
        return add(-f2, -f3, BitmapDescriptorFactory.HUE_RED);
    }

    public Vector swap(Vector vector) {
        float f2 = this.x;
        this.x = vector.x;
        vector.x = f2;
        float f3 = this.y;
        this.y = vector.y;
        vector.y = f3;
        float f4 = this.z;
        this.z = vector.z;
        vector.z = f4;
        return this;
    }

    public Vector swapXY() {
        float f2 = this.x;
        this.x = this.y;
        this.y = f2;
        return this;
    }

    public Vector toDegree() {
        return mult(57.29578f);
    }

    public Vector toRadian() {
        return mult(0.017453292f);
    }

    public String toString() {
        return String.format(Locale.US, "(%f,%f,%f)", Float.valueOf(this.x), Float.valueOf(this.y), Float.valueOf(this.z));
    }

    public float x() {
        return this.x;
    }

    public float y() {
        return this.y;
    }

    public float z() {
        return this.z;
    }

    public Vector(float f2, float f3) {
        this(f2, f3, BitmapDescriptorFactory.HUE_RED);
    }

    public static Vector cross(Vector vector, Vector vector2, Vector vector3) {
        float f2 = vector2.y;
        float f3 = vector3.z;
        float f4 = vector2.z;
        float f5 = vector3.y;
        float f6 = (f2 * f3) - (f4 * f5);
        float f7 = vector3.x;
        float f8 = vector2.x;
        vector.x = f6;
        vector.y = (f4 * f7) - (f3 * f8);
        vector.z = (f8 * f5) - (f2 * f7);
        return vector;
    }

    public static Vector crossProduct(Vector vector, Vector vector2, Vector vector3) {
        float f2 = vector2.y;
        float f3 = vector3.z;
        float f4 = vector2.z;
        float f5 = vector3.y;
        float f6 = (f2 * f3) - (f4 * f5);
        float f7 = vector3.x;
        float f8 = vector2.x;
        vector.x = f6;
        vector.y = (f4 * f7) - (f3 * f8);
        vector.z = (f8 * f5) - (f2 * f7);
        return vector;
    }

    public static Vector vector(Vector vector) {
        return new Vector(vector.x, vector.y, vector.z);
    }

    public Vector add(float f2, float f3, float f4) {
        this.x += f2;
        this.y += f3;
        this.z += f4;
        return this;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Vector m136clone() throws CloneNotSupportedException {
        return (Vector) super.clone();
    }

    public float distSquared(float f2, float f3) {
        return distSquared(f2, f3, this.z);
    }

    public float distance(float f2, float f3) {
        return distance(f2, f3, this.z);
    }

    public float dot(float f2, float f3, float f4) {
        return (this.x * f2) + (this.y * f3) + (this.z * f4);
    }

    public float dotProduct(float f2, float f3, float f4) {
        return (this.x * f2) + (this.y * f3) + (this.z * f4);
    }

    public Vector set(Vector vector) {
        return set(vector.x, vector.y, vector.z);
    }

    public Vector sub(Vector vector) {
        return add(-vector.x, -vector.y, -vector.z);
    }

    public String toString(String str) {
        return String.format(Locale.US, str, Float.valueOf(this.x), Float.valueOf(this.y), Float.valueOf(this.z));
    }

    public void x(float f2) {
        this.x = f2;
    }

    public void y(float f2) {
        this.y = f2;
    }

    public void z(float f2) {
        this.z = f2;
    }

    public Vector(Vector vector) {
        this(vector.x, vector.y, vector.z);
    }

    public float distSquared(float f2, float f3, float f4) {
        float f5 = this.x - f2;
        float f6 = this.y - f3;
        float f7 = this.z - f4;
        return (f5 * f5) + (f6 * f6) + (f7 * f7);
    }

    public float distance(float f2, float f3, float f4) {
        return (float) Math.sqrt(distSquared(f2, f3, f4));
    }

    public Vector set(Vector vector, float f2) {
        return set(vector.x, vector.y, vector.z, f2);
    }

    public Vector sub(Vector vector, float f2) {
        return add(-vector.x, -vector.y, -vector.z, f2);
    }

    public Vector(float f2, float f3, float f4) {
        this.x = f2;
        this.y = f3;
        this.z = f4;
    }

    public Vector div(float f2) {
        this.x /= f2;
        this.y /= f2;
        this.z /= f2;
        return this;
    }

    public Vector mult(float f2) {
        this.x *= f2;
        this.y *= f2;
        this.z *= f2;
        return this;
    }

    public Vector set(float f2, float f3, float f4) {
        this.x = f2;
        this.y = f3;
        this.z = f4;
        return this;
    }

    public float slope() {
        float f2 = this.x;
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            return this.y / f2;
        }
        return this.y >= BitmapDescriptorFactory.HUE_RED ? Float.MAX_VALUE : Float.MIN_VALUE;
    }

    public Vector sub(float f2, float f3, float f4) {
        return add(-f2, -f3, -f4);
    }

    public Vector add(float f2, float f3, float f4, float f5) {
        this.x += f2 * f5;
        this.y += f3 * f5;
        this.z += f4 * f5;
        return this;
    }

    public Vector sub(float f2, float f3, float f4, float f5) {
        return add(-f2, -f3, -f4, f5);
    }

    public Vector div(float f2, float f3) {
        this.x /= f2;
        this.y /= f3;
        return this;
    }

    public Vector mult(float f2, float f3) {
        this.x *= f2;
        this.y *= f3;
        return this;
    }

    public Vector set(float f2, float f3, float f4, float f5) {
        this.x = f2 * f5;
        this.y = f3 * f5;
        this.z = f4 * f5;
        return this;
    }

    public Vector add(Vector vector) {
        return add(vector.x, vector.y, vector.z);
    }

    public Vector add(Vector vector, float f2) {
        return add(vector.x, vector.y, vector.z, f2);
    }

    public Vector div(float f2, float f3, float f4) {
        this.x /= f2;
        this.y /= f3;
        this.z /= f4;
        return this;
    }

    public Vector mult(float f2, float f3, float f4) {
        this.x *= f2;
        this.y *= f3;
        this.z *= f4;
        return this;
    }

    public Vector limit(float f2, float f3) {
        float f4 = this.x;
        if (f4 >= f3) {
            f4 = f3;
        } else if (f4 < f2) {
            f4 = f2;
        }
        this.x = f4;
        float f5 = this.y;
        if (f5 >= f3) {
            f5 = f3;
        } else if (f5 < f2) {
            f5 = f2;
        }
        this.y = f5;
        float f6 = this.z;
        if (f6 >= f3) {
            f2 = f3;
        } else if (f6 >= f2) {
            f2 = f6;
        }
        this.z = f2;
        return this;
    }

    public Vector rotate(float f2, float f3, float f4) {
        return rotate(this, f2, f3, f4);
    }

    public static Vector rotate(Vector vector, float f2, float f3, float f4) {
        float[] fArr = inVec;
        fArr[0] = vector.x;
        fArr[1] = vector.y;
        fArr[2] = vector.z;
        fArr[3] = 1.0f;
        float[] fArr2 = matrix;
        Matrix.setIdentityM(fArr2, 0);
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr2, 0, f2, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        if (f3 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr2, 0, f3, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
        }
        if (f4 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr2, 0, f4, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        }
        float[] fArr3 = outVec;
        Matrix.multiplyMV(fArr3, 0, fArr2, 0, fArr, 0);
        vector.x = fArr3[0];
        vector.y = fArr3[1];
        vector.z = fArr3[2];
        return vector;
    }

    public Vector rotate_inv(Vector vector, float f2) {
        rotate_inv(vector.x * f2, vector.y * f2, vector.z * f2);
        return this;
    }

    public Vector rotate_inv(Vector vector) {
        rotate_inv(vector, -1.0f);
        return this;
    }

    public static Vector[] rotate(Vector[] vectorArr, float f2, float f3, float f4) {
        float[] fArr = matrix;
        Matrix.setIdentityM(fArr, 0);
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr, 0, f2, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        if (f3 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr, 0, f3, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
        }
        if (f4 != BitmapDescriptorFactory.HUE_RED) {
            Matrix.rotateM(fArr, 0, f4, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        }
        int length = vectorArr != null ? vectorArr.length : 0;
        for (int i = 0; i < length; i++) {
            if (vectorArr[i] != null) {
                float[] fArr2 = inVec;
                fArr2[0] = vectorArr[i].x;
                fArr2[1] = vectorArr[i].y;
                fArr2[2] = vectorArr[i].z;
                fArr2[3] = 1.0f;
                float[] fArr3 = outVec;
                Matrix.multiplyMV(fArr3, 0, matrix, 0, fArr2, 0);
                vectorArr[i].x = fArr3[0];
                vectorArr[i].y = fArr3[1];
                vectorArr[i].z = fArr3[2];
            }
        }
        return vectorArr;
    }

    public Vector rotate(Vector vector, float f2) {
        rotate(vector.x * f2, vector.y * f2, vector.z * f2);
        return this;
    }

    public Vector rotate(Vector vector) {
        return rotate(vector.x, vector.y, vector.z);
    }
}
