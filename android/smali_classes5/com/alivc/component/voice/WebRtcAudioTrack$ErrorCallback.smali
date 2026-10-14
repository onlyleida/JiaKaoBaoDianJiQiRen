.class public interface abstract Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/voice/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorCallback"
.end annotation


# virtual methods
.method public abstract onWebRtcAudioTrackError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioTrackInitError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioTrackStartError(Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V
.end method
