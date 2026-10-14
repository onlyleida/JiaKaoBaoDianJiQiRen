.class Lcom/alivc/component/voice/AudioRecordJNI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/voice/AudioRecordJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/voice/AudioRecordJNI;


# direct methods
.method constructor <init>(Lcom/alivc/component/voice/AudioRecordJNI;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/voice/AudioRecordJNI$2;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebRtcAudioRecordError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI$2;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    const-string v1, "AudioRecordJNI"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lcom/alivc/component/voice/AudioRecordJNI;->access$300(Lcom/alivc/component/voice/AudioRecordJNI;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onWebRtcAudioRecordInitError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI$2;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    const-string v1, "AudioRecordJNI"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lcom/alivc/component/voice/AudioRecordJNI;->access$300(Lcom/alivc/component/voice/AudioRecordJNI;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onWebRtcAudioRecordStartError(Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI$2;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "AudioRecordJNI"

    invoke-static {v0, v1, p1, p2}, Lcom/alivc/component/voice/AudioRecordJNI;->access$300(Lcom/alivc/component/voice/AudioRecordJNI;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
