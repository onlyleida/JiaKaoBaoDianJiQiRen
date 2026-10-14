package com.amap.api.mapcore.util;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.ViewParent;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.IGLSurfaceView;

/* JADX INFO: loaded from: classes5.dex */
public class c2 implements IGLSurfaceView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f10594a;

    public c2(Context context) {
        this(context, null);
    }

    public IAMapDelegate a() {
        return this.f10594a;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public int getHeight() {
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public ViewParent getParent() {
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public int getRenderMode() {
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public int getWidth() {
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public boolean isEnabled() {
        return this.f10594a != null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void onDetachedGLThread() {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public boolean post(Runnable runnable) {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public boolean postDelayed(Runnable runnable, long j) {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void queueEvent(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void requestRender() {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setBackgroundColor(int i) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setEGLConfigChooser(x2 x2Var) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setEGLContextFactory(y2 y2Var) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setRenderMode(int i) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setRenderer(GLSurfaceView.Renderer renderer) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setVisibility(int i) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setZOrderOnTop(boolean z) {
    }

    public c2(Context context, AttributeSet attributeSet) {
        this.f10594a = null;
        this.f10594a = new c1(this, context, attributeSet);
    }
}
