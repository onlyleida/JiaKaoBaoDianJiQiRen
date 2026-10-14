.class final Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->play(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $resName:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    iput-object p2, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->$resName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$setMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Landroid/media/MediaPlayer;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$setMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Landroid/media/MediaPlayer;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "JiaKaoBaoDian"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->$resName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 10
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 11
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64ad\u653e\u8003\u573a\u8bed\u97f3\u9519\u8bef\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
