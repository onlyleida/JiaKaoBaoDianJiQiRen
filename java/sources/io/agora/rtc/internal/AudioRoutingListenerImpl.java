package io.agora.rtc.internal;

/* JADX INFO: loaded from: classes6.dex */
class AudioRoutingListenerImpl implements AudioRoutingListener {
    private long mAudioRoutingNativeHandle;

    AudioRoutingListenerImpl(long j) {
        this.mAudioRoutingNativeHandle = 0L;
        this.mAudioRoutingNativeHandle = j;
    }

    native void nativeAudioRoutingChanged(long j, int i);

    native void nativeAudioRoutingError(long j, int i);

    @Override // io.agora.rtc.internal.AudioRoutingListener
    public void onAudioRoutingChanged(int i) {
        synchronized (this) {
            nativeAudioRoutingChanged(this.mAudioRoutingNativeHandle, i);
        }
    }

    @Override // io.agora.rtc.internal.AudioRoutingListener
    public void onAudioRoutingDestroyed() {
        synchronized (this) {
            this.mAudioRoutingNativeHandle = 0L;
        }
    }

    @Override // io.agora.rtc.internal.AudioRoutingListener
    public void onAudioRoutingError(int i) {
        synchronized (this) {
            nativeAudioRoutingError(this.mAudioRoutingNativeHandle, i);
        }
    }
}
