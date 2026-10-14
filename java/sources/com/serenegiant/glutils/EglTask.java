package com.serenegiant.glutils;

import com.serenegiant.utils.MessageTask;

/* JADX INFO: loaded from: classes6.dex */
public abstract class EglTask extends MessageTask {
    public static final int EGL_FLAG_DEPTH_BUFFER = 1;
    public static final int EGL_FLAG_RECORDABLE = 2;
    public static final int EGL_FLAG_STENCIL_1BIT = 4;
    public static final int EGL_FLAG_STENCIL_8BIT = 32;
    private EGLBase mEgl = null;
    private EGLBase.IEglSurface mEglHolder;

    public EglTask(EGLBase.IContext iContext, int i) {
        init(i, 3, iContext);
    }

    protected EGLBase.IConfig getConfig() {
        return this.mEgl.getConfig();
    }

    protected EGLBase.IContext getContext() {
        EGLBase eGLBase = this.mEgl;
        if (eGLBase != null) {
            return eGLBase.getContext();
        }
        return null;
    }

    protected EGLBase.IContext getEGLContext() {
        return this.mEgl.getContext();
    }

    protected EGLBase getEgl() {
        return this.mEgl;
    }

    protected boolean isGLES3() {
        EGLBase eGLBase = this.mEgl;
        return eGLBase != null && eGLBase.getGlVersion() > 2;
    }

    protected void makeCurrent() {
        this.mEglHolder.makeCurrent();
    }

    @Override // com.serenegiant.utils.MessageTask
    protected void onBeforeStop() {
        this.mEglHolder.makeCurrent();
    }

    @Override // com.serenegiant.utils.MessageTask
    protected void onInit(int i, int i2, Object obj) {
        int i3;
        if (obj == null || (obj instanceof EGLBase.IContext)) {
            if ((i & 4) == 4) {
                i3 = 1;
            } else {
                i3 = (i & 32) == 32 ? 8 : 0;
            }
            this.mEgl = EGLBase.createFrom(i2, (EGLBase.IContext) obj, (i & 1) == 1, i3, (i & 2) == 2);
        }
        EGLBase eGLBase = this.mEgl;
        if (eGLBase == null) {
            callOnError(new RuntimeException("failed to create EglCore"));
            releaseSelf();
        } else {
            EGLBase.IEglSurface iEglSurfaceCreateOffscreen = eGLBase.createOffscreen(1, 1);
            this.mEglHolder = iEglSurfaceCreateOffscreen;
            iEglSurfaceCreateOffscreen.makeCurrent();
        }
    }

    @Override // com.serenegiant.utils.MessageTask
    protected void onRelease() {
        this.mEglHolder.release();
        this.mEgl.release();
    }

    @Override // com.serenegiant.utils.MessageTask
    protected MessageTask.Request takeRequest() throws InterruptedException {
        MessageTask.Request requestTakeRequest = super.takeRequest();
        this.mEglHolder.makeCurrent();
        return requestTakeRequest;
    }

    public EglTask(int i, EGLBase.IContext iContext, int i2) {
        init(i2, i, iContext);
    }
}
