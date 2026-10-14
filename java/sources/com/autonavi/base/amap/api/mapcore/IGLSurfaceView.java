package com.autonavi.base.amap.api.mapcore;

import android.opengl.GLSurfaceView;
import android.view.SurfaceHolder;
import android.view.ViewParent;
import com.amap.api.mapcore.util.x2;
import com.amap.api.mapcore.util.y2;

/* JADX INFO: loaded from: classes5.dex */
public interface IGLSurfaceView {
    int getHeight();

    SurfaceHolder getHolder();

    ViewParent getParent();

    int getRenderMode();

    int getWidth();

    boolean isEnabled();

    void onDetachedGLThread();

    boolean post(Runnable runnable);

    boolean postDelayed(Runnable runnable, long j);

    void queueEvent(Runnable runnable);

    void requestRender();

    void setBackgroundColor(int i);

    void setEGLConfigChooser(x2 x2Var);

    void setEGLContextFactory(y2 y2Var);

    void setRenderMode(int i);

    void setRenderer(GLSurfaceView.Renderer renderer);

    void setVisibility(int i);

    void setZOrderOnTop(boolean z);
}
