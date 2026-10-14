package cn.mucang.android.jiakaoyi.signal.communicate.utils;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class Quaternion implements Serializable {
    public float w;
    public float x;
    public float y;
    public float z;

    public Quaternion() {
    }

    public static Quaternion multiplication(Quaternion quaternion, Quaternion quaternion2) {
        Quaternion quaternion3 = new Quaternion();
        float f2 = quaternion.w * quaternion2.w;
        float f3 = quaternion.x;
        float f4 = quaternion2.x;
        float f5 = quaternion.y;
        float f6 = quaternion2.y;
        float f7 = quaternion.z;
        float f8 = quaternion2.z;
        quaternion3.w = ((f2 - (f3 * f4)) - (f5 * f6)) - (f7 * f8);
        float f9 = quaternion.w;
        float f10 = quaternion2.w;
        quaternion3.x = (((f4 * f9) + (f3 * f10)) + (f5 * f8)) - (f7 * f6);
        float f11 = quaternion2.x;
        float f12 = quaternion.x;
        quaternion3.y = (((f6 * f9) + (f5 * f10)) + (f7 * f11)) - (f12 * f8);
        quaternion3.z = (((f9 * f8) + (f7 * f10)) + (f12 * quaternion2.y)) - (quaternion.y * f11);
        return quaternion3;
    }

    public static void vectorRotation(float[] fArr, Quaternion quaternion) {
        Quaternion quaternionMultiplication = multiplication(multiplication(quaternion, new Quaternion(BitmapDescriptorFactory.HUE_RED, fArr[0], fArr[1], fArr[2])), quaternion.inverse());
        fArr[0] = quaternionMultiplication.x;
        fArr[1] = quaternionMultiplication.y;
        fArr[2] = quaternionMultiplication.z;
    }

    public Quaternion inverse() {
        this.x *= -1.0f;
        this.y *= -1.0f;
        this.z *= -1.0f;
        return this;
    }

    public b toEulerAngles() {
        return new b(this.w, this.x, this.y, this.z);
    }

    public String toString() {
        return "Quaternion{w=" + this.w + ", x=" + this.x + ", y=" + this.y + ", z=" + this.z + '}';
    }

    public Quaternion(float f2, float f3, float f4, float f5) {
        this.w = f2;
        this.x = f3;
        this.y = f4;
        this.z = f5;
    }
}
