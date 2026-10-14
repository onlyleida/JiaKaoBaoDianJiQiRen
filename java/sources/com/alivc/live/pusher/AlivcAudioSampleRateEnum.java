package com.alivc.live.pusher;

import com.google.android.exoplayer2.audio.OpusUtil;

/* JADX INFO: loaded from: classes5.dex */
public enum AlivcAudioSampleRateEnum {
    AUDIO_SAMPLE_RATE_16000(16000),
    AUDIO_SAMPLE_RATE_32000(AlivcLivePushConstants.DEFAULT_VALUE_INT_AUDIO_SAMPLE_RATE),
    AUDIO_SAMPLE_RATE_44100(44100),
    AUDIO_SAMPLE_RATE_48000(OpusUtil.SAMPLE_RATE);

    private int mAudioSampleRate;

    AlivcAudioSampleRateEnum(int i) {
        this.mAudioSampleRate = i;
    }

    public int getAudioSampleRate() {
        return this.mAudioSampleRate;
    }
}
