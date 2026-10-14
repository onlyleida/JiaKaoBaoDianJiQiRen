package com.serenegiant.media;

/* JADX INFO: loaded from: classes6.dex */
public interface IFrameCallback {
    void onFinished();

    boolean onFrameAvailable(long j);

    void onPrepared();
}
