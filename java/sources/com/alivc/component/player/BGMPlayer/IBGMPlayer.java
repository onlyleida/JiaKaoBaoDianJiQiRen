package com.alivc.component.player.BGMPlayer;

/* JADX INFO: loaded from: classes5.dex */
public interface IBGMPlayer {
    public static final String kMinSupportSdkVersion = "5.4.1";
    public static final int outputAudioChannels = 2;
    public static final int outputAudioFormat = 2;
    public static final String outputAudioFormatStr = "s16";
    public static final int outputAudioSampleRate = 44100;

    long getDuration();

    boolean isSDKReady();

    void pause();

    void prepare();

    void release();

    void setAutoPlay(boolean z);

    void setListenerHandler(long j);

    void setLoop(boolean z);

    void setUrlSource(String str);

    void start();

    void stop();
}
