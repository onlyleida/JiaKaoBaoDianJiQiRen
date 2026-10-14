.class public final Lcn/mucang/android/jiakaoyi/speech/c/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\u0017\u001a\u00020\u000eJ\u0006\u0010\u0018\u001a\u00020\u000eJ\u0006\u0010\u0019\u001a\u00020\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0016J\u0006\u0010\u001b\u001a\u00020\u0016J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0008\u0010\u001d\u001a\u00020\u0016H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/audio/SpeechRecordThread;",
        "Ljava/lang/Thread;",
        "recordCallback",
        "Lcn/mucang/android/jiakaoyi/speech/callback/IRecordCallback;",
        "(Lcn/mucang/android/jiakaoyi/speech/callback/IRecordCallback;)V",
        "mAudioFormat",
        "",
        "mAudioRecorder",
        "Landroid/media/AudioRecord;",
        "mBuffer",
        "",
        "mBufferSize",
        "mChannel",
        "mIsRecording",
        "",
        "mLock",
        "Ljava/lang/Object;",
        "mSampleSize",
        "mSpeex",
        "Lcn/mucang/android/voice/interaction/speex/Speex;",
        "mThreadRunning",
        "createAudioRecordIfNeed",
        "",
        "isRecording",
        "isRunning",
        "release",
        "run",
        "startRecord",
        "force",
        "stopRecord",
        "Companion",
        "speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/speech/d/b;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[B

.field private g:Landroid/media/AudioRecord;

.field private h:Z

.field private volatile i:Z

.field private final j:Ljava/lang/Object;

.field private final k:Lcn/mucang/android/voice/interaction/speex/Speex;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/speech/d/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->a:Lcn/mucang/android/jiakaoyi/speech/d/b;

    const/16 p1, 0x3e80

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->b:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->c:I

    const/16 v1, 0x10

    .line 4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->d:I

    .line 5
    invoke-static {p1, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->e:I

    .line 6
    new-array p1, p1, [B

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->f:[B

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->j:Ljava/lang/Object;

    .line 8
    new-instance p1, Lcn/mucang/android/voice/interaction/speex/Speex;

    invoke-direct {p1}, Lcn/mucang/android/voice/interaction/speex/Speex;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->k:Lcn/mucang/android/voice/interaction/speex/Speex;

    const-string v1, "speech_audio_thread"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->a()V

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->e:I

    div-int/2addr v1, v0

    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->b:I

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/voice/interaction/speex/Speex;->speexInit(II)I

    return-void
.end method

.method private final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    .line 3
    iget v3, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->b:I

    .line 4
    iget v4, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->d:I

    .line 5
    iget v5, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->c:I

    .line 6
    iget v6, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->e:I

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method private final declared-synchronized f(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechRecordThread"

    const-string v1, "startRecord"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->i:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p1, "SpeechRecordThread"

    const-string v0, "already recording..."

    .line 3
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->a()V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->i:Z

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->j:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    :try_start_5
    monitor-exit p1

    const-string p1, "SpeechRecordThread"

    const-string v0, "startRecord success!!"

    .line 14
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :goto_1
    monitor-exit p1

    throw v0

    :cond_1
    const-string p1, "SpeechRecordThread"

    const-string v0, "AudioRecorder state = "

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 17
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 18
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final g()V
    .locals 2

    const-string v0, "SpeechRecordThread"

    const-string v1, "stopRecord"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->i:Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    const-string v1, "stopRecord success!!"

    .line 6
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->i:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->h:Z

    return v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechRecordThread"

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->g()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->f(Z)V

    return-void
.end method

.method public run()V
    .locals 8

    const-string v0, "SpeechRecordThread"

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " start run"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->h:Z

    const/16 v1, -0x13

    .line 3
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->h:Z

    if-eqz v1, :cond_7

    .line 6
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->i:Z

    const-wide/16 v2, 0x1388

    if-eqz v1, :cond_6

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->f:[B

    const/4 v6, 0x0

    iget v7, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->e:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->k:Lcn/mucang/android/voice/interaction/speex/Speex;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->f:[B

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Lcn/mucang/android/voice/interaction/speex/Speex;->speexProcess([BII)I

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->a:Lcn/mucang/android/jiakaoyi/speech/d/b;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->f:[B

    array-length v3, v2

    invoke-interface {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/speech/d/b;->a([BI)V

    goto :goto_0

    :cond_3
    const-string v5, "SpeechRecordThread"

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioRecord read count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , release and sleep 5s"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 15
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 16
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 18
    :goto_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 19
    :goto_4
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->g:Landroid/media/AudioRecord;

    .line 20
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->f(Z)V

    goto/16 :goto_0

    .line 22
    :cond_6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_2
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/speech/c/a;->j:Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v2

    .line 24
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_5
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    monitor-exit v1

    goto/16 :goto_0

    :goto_6
    monitor-exit v1

    throw v0

    :cond_7
    const-string v0, "SpeechRecordThread"

    .line 27
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " stop run"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
