.class public interface abstract Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final kMinSupportSdkVersion:Ljava/lang/String; = "5.4.1"

.field public static final outputAudioChannels:I = 0x2

.field public static final outputAudioFormat:I = 0x2

.field public static final outputAudioFormatStr:Ljava/lang/String; = "s16"

.field public static final outputAudioSampleRate:I = 0xac44


# virtual methods
.method public abstract getDuration()J
.end method

.method public abstract isSDKReady()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract setAutoPlay(Z)V
.end method

.method public abstract setListenerHandler(J)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract setUrlSource(Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
