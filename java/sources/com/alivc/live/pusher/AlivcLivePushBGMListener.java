package com.alivc.live.pusher;

/* JADX INFO: loaded from: classes5.dex */
public interface AlivcLivePushBGMListener {
    void onCompleted();

    void onDownloadTimeout();

    void onOpenFailed();

    void onPaused();

    void onProgress(long j, long j2);

    void onResumed();

    void onStarted();

    void onStoped();
}
