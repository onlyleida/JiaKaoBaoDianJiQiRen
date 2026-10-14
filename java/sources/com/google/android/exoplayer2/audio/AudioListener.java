package com.google.android.exoplayer2.audio;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public interface AudioListener {
    void onAudioAttributesChanged(AudioAttributes audioAttributes);

    void onAudioSessionIdChanged(int i);

    void onSkipSilenceEnabledChanged(boolean z);

    void onVolumeChanged(float f2);
}
