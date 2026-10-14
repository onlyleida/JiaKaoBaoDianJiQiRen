.class public Lcom/iflytek/cloud/a/h/c;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/h/c$f;
    }
.end annotation


# instance fields
.field private e:Lcom/iflytek/cloud/record/c;

.field private f:Lcom/iflytek/cloud/record/b;

.field private g:Lcom/iflytek/cloud/SynthesizerListener;

.field private h:Lcom/iflytek/cloud/SynthesizerListener;

.field private i:Lcom/iflytek/cloud/a/h/c$f;

.field private j:I

.field private k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Lcom/iflytek/cloud/SpeechError;

.field private p:Lcom/iflytek/cloud/a/h/b;

.field private q:Lcom/iflytek/cloud/record/c$c;

.field private r:Landroid/os/Handler;

.field private s:Z

.field final t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/f/e;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    .line 3
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    .line 4
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->g:Lcom/iflytek/cloud/SynthesizerListener;

    .line 5
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->h:Lcom/iflytek/cloud/SynthesizerListener;

    .line 6
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->i:Lcom/iflytek/cloud/a/h/c$f;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/iflytek/cloud/a/h/c;->j:I

    .line 8
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/h/c;->k:Z

    .line 9
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/h/c;->l:Z

    .line 10
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/h/c;->m:Z

    .line 11
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->n:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->o:Lcom/iflytek/cloud/SpeechError;

    .line 13
    new-instance p1, Lcom/iflytek/cloud/a/h/c$a;

    invoke-direct {p1, p0}, Lcom/iflytek/cloud/a/h/c$a;-><init>(Lcom/iflytek/cloud/a/h/c;)V

    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->p:Lcom/iflytek/cloud/a/h/b;

    .line 14
    new-instance p1, Lcom/iflytek/cloud/a/h/c$b;

    invoke-direct {p1, p0}, Lcom/iflytek/cloud/a/h/c$b;-><init>(Lcom/iflytek/cloud/a/h/c;)V

    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->q:Lcom/iflytek/cloud/record/c$c;

    .line 15
    new-instance p1, Lcom/iflytek/cloud/a/h/c$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/iflytek/cloud/a/h/c$c;-><init>(Lcom/iflytek/cloud/a/h/c;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->r:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/iflytek/cloud/a/h/c;->s:Z

    .line 17
    new-instance p1, Lcom/iflytek/cloud/a/h/c$e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/iflytek/cloud/a/h/c$e;-><init>(Lcom/iflytek/cloud/a/h/c;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->t:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/h/c;->g:Lcom/iflytek/cloud/SynthesizerListener;

    return-object p0
.end method

.method static synthetic b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/h/c;->r:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/iflytek/cloud/a/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/a/h/c;->s:Z

    return p0
.end method

.method static synthetic d(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic e(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic f(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic g(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic h(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/h/c;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    iget v1, p0, Lcom/iflytek/cloud/a/h/c;->j:I

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/b;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/h/c;->k:Z

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    iget-object v2, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    iget-object v3, p0, Lcom/iflytek/cloud/a/h/c;->q:Lcom/iflytek/cloud/record/c$c;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/b;Lcom/iflytek/cloud/record/c$c;)Z

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/a/h/c;->g:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/a/h/c;->r:Landroid/os/Handler;

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic j(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic k(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic l(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic m(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    return-object p0
.end method

.method static synthetic n(Lcom/iflytek/cloud/a/h/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/h/c;->h()V

    return-void
.end method

.method static synthetic o(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic p(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic q(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/h/c$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/h/c;->i:Lcom/iflytek/cloud/a/h/c$f;

    return-object p0
.end method

.method static synthetic r(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic s(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    return-object p0
.end method

.method static synthetic t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/h/c;->h:Lcom/iflytek/cloud/SynthesizerListener;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;ZLjava/lang/String;)I
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 6
    iput-object p3, p0, Lcom/iflytek/cloud/a/h/c;->g:Lcom/iflytek/cloud/SynthesizerListener;

    .line 7
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->n:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    const-string p3, "stream_type"

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p2, p3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v4

    const-string p3, "request_audio_focus"

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p2, p3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz p4, :cond_0

    .line 11
    iget-object p3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string p4, "tts_buf_fading"

    invoke-virtual {p3, p4}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-static {p3, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Z)Z

    move-result v7

    .line 13
    iget-object p3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string p4, "tts_fading"

    invoke-virtual {p3, p4}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-static {p3, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Z)Z

    move-result v6

    .line 15
    new-instance p3, Lcom/iflytek/cloud/record/c;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    move-object v2, p3

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/cloud/record/c;-><init>(Landroid/content/Context;IZZZ)V

    iput-object p3, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    .line 16
    :cond_0
    new-instance p3, Lcom/iflytek/cloud/a/h/a;

    iget-object p4, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    const-string v2, "tts"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-direct {p3, p4, p2, v2}, Lcom/iflytek/cloud/a/h/a;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object p3, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    const-string p3, "tts_min_audio_len"

    .line 17
    invoke-virtual {p2, p3, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result p3

    div-int/lit16 p3, p3, 0x3e8

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    const-string v2, "tts_proc_scale"

    const/16 v3, 0x64

    .line 19
    invoke-virtual {p2, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v9

    .line 20
    new-instance v2, Lcom/iflytek/cloud/record/b;

    iget-object v5, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v3}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v6

    add-int v7, p3, p4

    move-object v4, v2

    move-object v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/iflytek/cloud/record/b;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    .line 21
    iget-object p3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string p4, "end_with_null"

    invoke-virtual {p3, p4}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 22
    iget-object p4, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    invoke-static {p3, v1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p4, p3}, Lcom/iflytek/cloud/record/b;->a(Z)V

    const-string p3, "tts_buffer_time"

    .line 23
    invoke-virtual {p2, p3, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/iflytek/cloud/a/h/c;->j:I

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "minPlaySec:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/iflytek/cloud/a/h/c;->j:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 25
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/h/c;->k:Z

    .line 26
    iget-object p2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast p2, Lcom/iflytek/cloud/a/h/a;

    iget-object p3, p0, Lcom/iflytek/cloud/a/h/c;->p:Lcom/iflytek/cloud/a/h/b;

    invoke-virtual {p2, p1, p3}, Lcom/iflytek/cloud/a/h/a;->a(Ljava/lang/String;Lcom/iflytek/cloud/a/h/b;)V

    .line 27
    iput-boolean v1, p0, Lcom/iflytek/cloud/a/h/c;->l:Z
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const/16 v0, 0x5207

    .line 28
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    .line 30
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "message_main_thread"

    const/4 v2, 0x1

    .line 32
    invoke-virtual {p3, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/cloud/a/h/c;->s:Z

    .line 33
    iput-object p4, p0, Lcom/iflytek/cloud/a/h/c;->h:Lcom/iflytek/cloud/SynthesizerListener;

    .line 34
    new-instance p4, Lcom/iflytek/cloud/a/h/a;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    const-string v3, "tts"

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-direct {p4, v1, p3, v3}, Lcom/iflytek/cloud/a/h/a;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object p4, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    const-string p4, "tts_min_audio_len"

    .line 35
    invoke-virtual {p3, p4, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result p4

    div-int/lit16 p4, p4, 0x3e8

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "tts_proc_scale"

    const/16 v3, 0x64

    .line 37
    invoke-virtual {p3, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v9

    .line 38
    new-instance p3, Lcom/iflytek/cloud/record/b;

    iget-object v5, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v6

    add-int v7, p4, v1

    move-object v4, p3

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/iflytek/cloud/record/b;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object p3, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    .line 39
    new-instance p3, Lcom/iflytek/cloud/a/h/c$d;

    invoke-direct {p3, p0, p2}, Lcom/iflytek/cloud/a/h/c$d;-><init>(Lcom/iflytek/cloud/a/h/c;Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast p2, Lcom/iflytek/cloud/a/h/a;

    invoke-virtual {p2, p1, p3}, Lcom/iflytek/cloud/a/h/a;->a(Ljava/lang/String;Lcom/iflytek/cloud/a/h/b;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const/16 v0, 0x5207

    .line 41
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    .line 43
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method public a(Lcom/iflytek/cloud/SynthesizerListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->g:Lcom/iflytek/cloud/SynthesizerListener;

    return-void
.end method

.method public a(Lcom/iflytek/cloud/a/h/c$f;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->i:Lcom/iflytek/cloud/a/h/c$f;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    .line 3
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c;->n:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v0

    return v0
.end method

.method public cancel(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakSession cancel notifyError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/c;->isSpeaking()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->g:Lcom/iflytek/cloud/SynthesizerListener;

    const/16 v3, 0x520a

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v3, v2, v2, v1}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->h:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, v3, v2, v2, v1}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_1
    if-eqz p1, :cond_4

    .line 7
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x4e31

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->g:Lcom/iflytek/cloud/SynthesizerListener;

    const/4 v3, 0x6

    if-eqz v0, :cond_2

    const-string v0, "tts-onCompleted-cancel"

    .line 9
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->r:Landroid/os/Handler;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->h:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_4

    .line 12
    iget-boolean v4, p0, Lcom/iflytek/cloud/a/h/c;->s:Z

    if-eqz v4, :cond_3

    .line 13
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->t:Landroid/os/Handler;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    .line 15
    :cond_4
    :goto_0
    iput-object v1, p0, Lcom/iflytek/cloud/a/h/c;->g:Lcom/iflytek/cloud/SynthesizerListener;

    .line 16
    iput-object v1, p0, Lcom/iflytek/cloud/a/h/c;->h:Lcom/iflytek/cloud/SynthesizerListener;

    .line 17
    invoke-super {p0, v2}, Lcom/iflytek/cloud/a/f/e;->cancel(Z)V

    .line 18
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/iflytek/cloud/record/c;->k()V

    :cond_5
    return-void
.end method

.method public destroy()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    const/4 v1, 0x1

    .line 3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public g()V
    .locals 8

    .line 2
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/h/c;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "tts_next_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/c;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/iflytek/cloud/a/h/c;->a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;ZLjava/lang/String;)I

    return-void
.end method

.method public isSpeaking()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/c;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/c;->f()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/c;->f()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pauseSpeaking()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->d()Z

    :cond_0
    return-void
.end method

.method public resumeSpeaking()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->f:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->g()Z

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/iflytek/cloud/record/c;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/record/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/h/c;->e:Lcom/iflytek/cloud/record/c;

    .line 4
    invoke-direct {p0}, Lcom/iflytek/cloud/a/h/c;->h()V

    :goto_0
    return-void
.end method
