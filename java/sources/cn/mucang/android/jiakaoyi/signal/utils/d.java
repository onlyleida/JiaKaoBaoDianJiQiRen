package cn.mucang.android.jiakaoyi.signal.utils;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class d {
    public static float a(float f2) {
        return c(f2);
    }

    public static float b(float f2, float f3) {
        return f2 + c(c(f3) - c(f2));
    }

    public static float c(float f2) {
        while (f2 < -180.0f) {
            f2 += 360.0f;
        }
        while (f2 >= 180.0f) {
            f2 -= 360.0f;
        }
        return f2;
    }

    public static float d(float f2) {
        while (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 += 360.0f;
        }
        while (f2 >= 360.0f) {
            f2 -= 360.0f;
        }
        return f2;
    }
}
