package com.amap.api.location;

/* JADX INFO: loaded from: classes5.dex */
public class CoordUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f10414a = false;

    public static native int convertToGcj(double[] dArr, double[] dArr2);

    public static boolean isLoadedSo() {
        return f10414a;
    }

    public static void setLoadedSo(boolean z) {
        f10414a = z;
    }
}
