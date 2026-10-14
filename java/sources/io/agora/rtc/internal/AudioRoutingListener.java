package io.agora.rtc.internal;

/* JADX INFO: loaded from: classes6.dex */
interface AudioRoutingListener {
    void onAudioRoutingChanged(int i);

    void onAudioRoutingDestroyed();

    void onAudioRoutingError(int i);
}
