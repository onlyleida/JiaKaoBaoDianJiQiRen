.class Lcom/serenegiant/media/MediaMovieRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/media/IMediaCodecCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/MediaMovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/MediaMovieRecorder;


# direct methods
.method constructor <init>(Lcom/serenegiant/media/MediaMovieRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/serenegiant/media/IMediaCodec;Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFrameAvailable(Lcom/serenegiant/media/IMediaCodec;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Lcom/serenegiant/media/IMediaCodec;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    iget-object p1, p1, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {p1}, Lcom/serenegiant/media/MediaEncoder;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    .line 2
    invoke-static {p1}, Lcom/serenegiant/media/MediaMovieRecorder;->access$000(Lcom/serenegiant/media/MediaMovieRecorder;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    iget-object p1, p1, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {p1}, Lcom/serenegiant/media/MediaEncoder;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-static {p1}, Lcom/serenegiant/media/MediaMovieRecorder;->access$100(Lcom/serenegiant/media/MediaMovieRecorder;)Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-static {p1}, Lcom/serenegiant/media/MediaMovieRecorder;->access$100(Lcom/serenegiant/media/MediaMovieRecorder;)Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-interface {p1, v0}, Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;->onPrepared(Lcom/serenegiant/media/MediaMovieRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "MediaMovieRecorder"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onRelease(Lcom/serenegiant/media/IMediaCodec;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/serenegiant/media/IMediaCodec;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    iget-object p1, p1, Lcom/serenegiant/media/AbstractRecorder;->mVideoEncoder:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {p1}, Lcom/serenegiant/media/MediaEncoder;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    .line 2
    invoke-static {p1}, Lcom/serenegiant/media/MediaMovieRecorder;->access$000(Lcom/serenegiant/media/MediaMovieRecorder;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    iget-object p1, p1, Lcom/serenegiant/media/AbstractRecorder;->mAudioEncoder:Lcom/serenegiant/media/MediaEncoder;

    invoke-virtual {p1}, Lcom/serenegiant/media/MediaEncoder;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-static {p1}, Lcom/serenegiant/media/MediaMovieRecorder;->access$100(Lcom/serenegiant/media/MediaMovieRecorder;)Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-static {p1}, Lcom/serenegiant/media/MediaMovieRecorder;->access$100(Lcom/serenegiant/media/MediaMovieRecorder;)Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-interface {p1, v0}, Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;->onStart(Lcom/serenegiant/media/MediaMovieRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "MediaMovieRecorder"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onStop(Lcom/serenegiant/media/IMediaCodec;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-static {p1}, Lcom/serenegiant/media/MediaMovieRecorder;->access$100(Lcom/serenegiant/media/MediaMovieRecorder;)Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-static {p1}, Lcom/serenegiant/media/MediaMovieRecorder;->access$100(Lcom/serenegiant/media/MediaMovieRecorder;)Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-interface {p1, v0}, Lcom/serenegiant/media/MediaMovieRecorder$IRecorderCallback;->onStop(Lcom/serenegiant/media/MediaMovieRecorder;)V

    .line 3
    iget-object p1, p0, Lcom/serenegiant/media/MediaMovieRecorder$1;->this$0:Lcom/serenegiant/media/MediaMovieRecorder;

    invoke-virtual {p1}, Lcom/serenegiant/media/AbstractRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaMovieRecorder"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
