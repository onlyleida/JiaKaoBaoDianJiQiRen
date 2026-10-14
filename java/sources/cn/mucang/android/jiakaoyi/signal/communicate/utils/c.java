package cn.mucang.android.jiakaoyi.signal.communicate.utils;

import android.os.SystemClock;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    private float b = -1.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f5479a = BitmapDescriptorFactory.HUE_RED;

    public float a(float f2, float f3) {
        if (f3 == BitmapDescriptorFactory.HUE_RED) {
            f3 = SystemClock.elapsedRealtime() * 0.001f;
        }
        float f4 = this.f5479a;
        if (f4 > BitmapDescriptorFactory.HUE_RED && f3 - f4 < 0.5d && Math.abs(f2 - this.b) > 15.0f) {
            return this.b;
        }
        this.b = f2;
        this.f5479a = f3;
        return f2;
    }
}
