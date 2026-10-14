.class Lcom/alivc/component/voice/AudioRecordJNI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;


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

    iput-object p1, p0, Lcom/alivc/component/voice/AudioRecordJNI$1;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI$1;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    invoke-static {v0}, Lcom/alivc/component/voice/AudioRecordJNI;->access$000(Lcom/alivc/component/voice/AudioRecordJNI;)Lcom/alivc/component/voice/WebRtcAudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI$1;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    invoke-static {v0, p1, p2, p3}, Lcom/alivc/component/voice/AudioRecordJNI;->access$100(Lcom/alivc/component/voice/AudioRecordJNI;Ljava/nio/ByteBuffer;J)V

    :cond_0
    return-void
.end method

.method public DataIsRecorded(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI$1;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    invoke-static {v0}, Lcom/alivc/component/voice/AudioRecordJNI;->access$000(Lcom/alivc/component/voice/AudioRecordJNI;)Lcom/alivc/component/voice/WebRtcAudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI$1;->this$0:Lcom/alivc/component/voice/AudioRecordJNI;

    invoke-static {v0, p1, p2, p3}, Lcom/alivc/component/voice/AudioRecordJNI;->access$200(Lcom/alivc/component/voice/AudioRecordJNI;IJ)V

    :cond_0
    return-void
.end method
