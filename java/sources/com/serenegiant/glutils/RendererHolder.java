package com.serenegiant.glutils;

/* JADX INFO: loaded from: classes6.dex */
public class RendererHolder extends AbstractRendererHolder {
    private static final String TAG = "RendererHolder";

    protected static final class MyRendererTask extends AbstractRendererHolder.RendererTask {
        public MyRendererTask(RendererHolder rendererHolder, int i, int i2) {
            super(rendererHolder, i, i2);
        }

        public MyRendererTask(AbstractRendererHolder abstractRendererHolder, int i, int i2, int i3, EGLBase.IContext iContext, int i4) {
            super(abstractRendererHolder, i, i2, i3, iContext, i4);
        }
    }

    public RendererHolder(int i, int i2, RenderHolderCallback renderHolderCallback) {
        this(i, i2, 3, null, 2, renderHolderCallback);
    }

    @Override // com.serenegiant.glutils.AbstractRendererHolder
    protected AbstractRendererHolder.RendererTask createRendererTask(int i, int i2, int i3, EGLBase.IContext iContext, int i4) {
        return new MyRendererTask(this, i, i2, i3, iContext, i4);
    }

    public RendererHolder(int i, int i2, int i3, EGLBase.IContext iContext, int i4, RenderHolderCallback renderHolderCallback) {
        super(i, i2, i3, iContext, i4, renderHolderCallback);
    }
}
