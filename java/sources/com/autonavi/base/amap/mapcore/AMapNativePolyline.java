package com.autonavi.base.amap.mapcore;

/* JADX INFO: loaded from: classes5.dex */
public class AMapNativePolyline {
    public static native long nativeCreate();

    public static native long nativeDestroy(long j);

    public static native void nativeDrawLineByTextureID(long j, float[] fArr, int i, float f2, int i2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2, boolean z3, float[] fArr2, int i3, int i4);

    public static native void nativeSetGLShaderManager(long j, long j2);
}
