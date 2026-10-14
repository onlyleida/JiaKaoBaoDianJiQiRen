package com.serenegiant.glutils;

import com.serenegiant.utils.MessageTask;

/* JADX INFO: loaded from: classes6.dex */
public class GLMasterContext {
    private static final String TAG = "GLMasterContext";
    private MasterTask mMasterTask;

    private static class MasterTask extends EglTask {
        public MasterTask(int i, int i2) {
            super(i, null, i2);
        }

        @Override // com.serenegiant.utils.MessageTask
        protected void onStart() {
        }

        @Override // com.serenegiant.utils.MessageTask
        protected void onStop() {
        }

        @Override // com.serenegiant.utils.MessageTask
        protected Object processRequest(int i, int i2, int i3, Object obj) throws MessageTask.TaskBreak {
            return null;
        }
    }

    public GLMasterContext(int i, int i2) {
        this.mMasterTask = new MasterTask(i, i2);
        new Thread(this.mMasterTask, TAG).start();
        this.mMasterTask.waitReady();
    }

    protected void finalize() throws Throwable {
        try {
            release();
        } finally {
            super.finalize();
        }
    }

    public synchronized EGLBase.IContext getContext() throws IllegalStateException {
        MasterTask masterTask;
        masterTask = this.mMasterTask;
        if (masterTask == null) {
            throw new IllegalStateException("already released");
        }
        return masterTask.getContext();
    }

    public synchronized void release() {
        MasterTask masterTask = this.mMasterTask;
        if (masterTask != null) {
            masterTask.release();
            this.mMasterTask = null;
        }
    }
}
