package com.unity3d.player;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;

/* JADX INFO: loaded from: classes6.dex */
public class Camera2Wrapper implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f14183a;
    private b b = null;
    private final int c = 100;

    public Camera2Wrapper(Context context) {
        this.f14183a = context;
        initCamera2Jni();
    }

    private static int a(float f2) {
        return (int) Math.min(Math.max((f2 * 2000.0f) - 1000.0f, -900.0f), 900.0f);
    }

    private final native void deinitCamera2Jni();

    private final native void initCamera2Jni();

    private final native void nativeFrameReady(Object obj, Object obj2, Object obj3, int i, int i2, int i3);

    private final native void nativeSurfaceTextureReady(Object obj);

    public final void a() {
        deinitCamera2Jni();
        closeCamera2();
    }

    @Override // com.unity3d.player.d
    public final void a(Object obj) {
        nativeSurfaceTextureReady(obj);
    }

    @Override // com.unity3d.player.d
    public final void a(Object obj, Object obj2, Object obj3, int i, int i2, int i3) {
        nativeFrameReady(obj, obj2, obj3, i, i2, i3);
    }

    protected void closeCamera2() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.b();
        }
        this.b = null;
    }

    protected int getCamera2Count() {
        if (j.f14303a) {
            return b.a(this.f14183a);
        }
        return 0;
    }

    protected int[] getCamera2Resolutions(int i) {
        if (j.f14303a) {
            return b.d(this.f14183a, i);
        }
        return null;
    }

    protected int getCamera2SensorOrientation(int i) {
        if (j.f14303a) {
            return b.a(this.f14183a, i);
        }
        return 0;
    }

    protected Object getCameraFocusArea(float f2, float f3) {
        int iA = a(f2);
        int iA2 = a(1.0f - f3);
        return new Camera.Area(new Rect(iA - 100, iA2 - 100, iA + 100, iA2 + 100), 1000);
    }

    protected Rect getFrameSizeCamera2() {
        b bVar = this.b;
        return bVar != null ? bVar.a() : new Rect();
    }

    protected boolean initializeCamera2(int i, int i2, int i3, int i4, int i5) {
        if (!j.f14303a || this.b != null || UnityPlayer.currentActivity == null) {
            return false;
        }
        b bVar = new b(this);
        this.b = bVar;
        return bVar.a(this.f14183a, i, i2, i3, i4, i5);
    }

    protected boolean isCamera2AutoFocusPointSupported(int i) {
        if (j.f14303a) {
            return b.c(this.f14183a, i);
        }
        return false;
    }

    protected boolean isCamera2FrontFacing(int i) {
        if (j.f14303a) {
            return b.b(this.f14183a, i);
        }
        return false;
    }

    protected void pauseCamera2() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.d();
        }
    }

    protected boolean setAutoFocusPoint(float f2, float f3) {
        b bVar;
        if (!j.f14303a || (bVar = this.b) == null) {
            return false;
        }
        return bVar.a(f2, f3);
    }

    protected void startCamera2() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.c();
        }
    }

    protected void stopCamera2() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.e();
        }
    }
}
