.class Lcom/alivc/component/voice/AudioTrackJNI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/voice/AudioTrackJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/voice/AudioTrackJNI;


# direct methods
.method constructor <init>(Lcom/alivc/component/voice/AudioTrackJNI;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/voice/AudioTrackJNI$2;->this$0:Lcom/alivc/component/voice/AudioTrackJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebRtcAudioTrackError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI$2;->this$0:Lcom/alivc/component/voice/AudioTrackJNI;

    const-string v1, "AudioTrackJNI"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lcom/alivc/component/voice/AudioTrackJNI;->access$300(Lcom/alivc/component/voice/AudioTrackJNI;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onWebRtcAudioTrackInitError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI$2;->this$0:Lcom/alivc/component/voice/AudioTrackJNI;

    const-string v1, "AudioTrackJNI"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lcom/alivc/component/voice/AudioTrackJNI;->access$300(Lcom/alivc/component/voice/AudioTrackJNI;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onWebRtcAudioTrackStartError(Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI$2;->this$0:Lcom/alivc/component/voice/AudioTrackJNI;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "AudioTrackJNI"

    invoke-static {v0, v1, p1, p2}, Lcom/alivc/component/voice/AudioTrackJNI;->access$300(Lcom/alivc/component/voice/AudioTrackJNI;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
