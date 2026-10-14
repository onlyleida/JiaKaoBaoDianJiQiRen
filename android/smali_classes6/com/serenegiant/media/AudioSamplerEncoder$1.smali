.class Lcom/serenegiant/media/AudioSamplerEncoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/media/IAudioSampler$SoundSamplerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AudioSamplerEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/AudioSamplerEncoder;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/AudioSamplerEncoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$1;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/nio/ByteBuffer;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder$1;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-object v0, v0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$1;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$1;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$1;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    iget-boolean v1, v1, Lcom/serenegiant/media/AbstractEncoder;->mIsEOS:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder$1;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    invoke-virtual {v0}, Lcom/serenegiant/media/AbstractEncoder;->frameAvailableSoon()V

    .line 5
    iget-object v0, p0, Lcom/serenegiant/media/AudioSamplerEncoder$1;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/serenegiant/media/AbstractEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 6
    iget-object p1, p0, Lcom/serenegiant/media/AudioSamplerEncoder$1;->this$0:Lcom/serenegiant/media/AudioSamplerEncoder;

    invoke-static {p1}, Lcom/serenegiant/media/AudioSamplerEncoder;->access$008(Lcom/serenegiant/media/AudioSamplerEncoder;)I

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
