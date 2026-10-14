package com.serenegiant.glutils;

import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.C;
import com.serenegiant.utils.Time;

/* JADX INFO: loaded from: classes6.dex */
class RendererSurfaceRec {
    protected volatile boolean mEnable;
    final float[] mMvpMatrix;
    private Object mSurface;
    private EGLBase.IEglSurface mTargetSurface;

    private static class RendererSurfaceRecHasWait extends RendererSurfaceRec {
        private final long mIntervalsNs;
        private long mNextDraw;

        @Override // com.serenegiant.glutils.RendererSurfaceRec
        public boolean canDraw() {
            return this.mEnable && Time.nanoTime() - this.mNextDraw > 0;
        }

        @Override // com.serenegiant.glutils.RendererSurfaceRec
        public void draw(GLDrawer2D gLDrawer2D, int i, float[] fArr) {
            this.mNextDraw = Time.nanoTime() + this.mIntervalsNs;
            super.draw(gLDrawer2D, i, fArr);
        }

        private RendererSurfaceRecHasWait(EGLBase eGLBase, Object obj, int i) {
            super(eGLBase, obj);
            long j = C.NANOS_PER_SECOND / ((long) i);
            this.mIntervalsNs = j;
            this.mNextDraw = Time.nanoTime() + j;
        }
    }

    private void check() throws IllegalStateException {
        if (this.mTargetSurface == null) {
            throw new IllegalStateException("already released");
        }
    }

    static RendererSurfaceRec newInstance(EGLBase eGLBase, Object obj, int i) {
        return i > 0 ? new RendererSurfaceRecHasWait(eGLBase, obj, i) : new RendererSurfaceRec(eGLBase, obj);
    }

    public boolean canDraw() {
        return this.mEnable;
    }

    public void clear(int i) {
        EGLBase.IEglSurface iEglSurface = this.mTargetSurface;
        if (iEglSurface != null) {
            iEglSurface.makeCurrent();
            GLES20.glClearColor(((16711680 & i) >>> 16) / 255.0f, ((65280 & i) >>> 8) / 255.0f, (i & 255) / 255.0f, ((i & ViewCompat.MEASURED_STATE_MASK) >>> 24) / 255.0f);
            GLES20.glClear(16384);
            this.mTargetSurface.swap();
        }
    }

    public void draw(GLDrawer2D gLDrawer2D, int i, float[] fArr) {
        EGLBase.IEglSurface iEglSurface = this.mTargetSurface;
        if (iEglSurface != null) {
            iEglSurface.makeCurrent();
            GLES20.glClear(16384);
            gLDrawer2D.setMvpMatrix(this.mMvpMatrix, 0);
            gLDrawer2D.draw(i, fArr, 0);
            this.mTargetSurface.swap();
        }
    }

    public boolean isEnabled() {
        return this.mEnable;
    }

    public boolean isValid() {
        EGLBase.IEglSurface iEglSurface = this.mTargetSurface;
        return iEglSurface != null && iEglSurface.isValid();
    }

    public void makeCurrent() throws IllegalStateException {
        check();
        this.mTargetSurface.makeCurrent();
    }

    public void release() {
        EGLBase.IEglSurface iEglSurface = this.mTargetSurface;
        if (iEglSurface != null) {
            iEglSurface.release();
            this.mTargetSurface = null;
        }
        this.mSurface = null;
    }

    public void setEnabled(boolean z) {
        this.mEnable = z;
    }

    public void swap() throws IllegalStateException {
        check();
        this.mTargetSurface.swap();
    }

    private RendererSurfaceRec(EGLBase eGLBase, Object obj) {
        float[] fArr = new float[16];
        this.mMvpMatrix = fArr;
        this.mEnable = true;
        this.mSurface = obj;
        this.mTargetSurface = eGLBase.createFromSurface(obj);
        Matrix.setIdentityM(fArr, 0);
    }
}
