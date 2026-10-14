.class public Lcom/iflytek/cloud/a/e/b;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field public static b:I

.field public static c:I


# instance fields
.field private d:Z

.field protected volatile e:Lcom/iflytek/cloud/IdentityListener;

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Lcom/iflytek/cloud/a/e/a;

.field private j:Lcom/iflytek/cloud/msc/util/c;

.field protected k:Ljava/lang/String;

.field protected l:Lcom/iflytek/cloud/a/f/c;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/iflytek/cloud/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:I

.field r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/iflytek/cloud/a/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/a/e/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/iflytek/cloud/a/e/b;->b:I

    .line 3
    sput v0, Lcom/iflytek/cloud/a/e/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/iflytek/cloud/a/e/b;->d:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/e/b;->f:Z

    .line 5
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/e/b;->g:Z

    .line 6
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/e/b;->h:Z

    .line 7
    new-instance v0, Lcom/iflytek/cloud/a/e/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/e/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    .line 8
    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->k:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/iflytek/cloud/a/f/c;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/f/c;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    .line 10
    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->m:Ljava/util/HashMap;

    .line 11
    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->n:Ljava/util/HashMap;

    .line 12
    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->p:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/iflytek/cloud/a/e/b;->q:I

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/iflytek/cloud/a/e/b;->r:J

    .line 15
    new-instance p1, Lcom/iflytek/cloud/msc/util/c;

    invoke-direct {p1}, Lcom/iflytek/cloud/msc/util/c;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->j:Lcom/iflytek/cloud/msc/util/c;

    .line 16
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/e/b;->h:Z

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->m:Ljava/util/HashMap;

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->n:Ljava/util/HashMap;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->o:Ljava/util/HashMap;

    .line 20
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "recording stop"

    .line 9
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_lau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/iflytek/cloud/a/e/b;->o:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/a/e/a;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->updateTimeoutMsg()V

    return-void
.end method

.method private notifyResult(Z[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatusBegin:J

    if-eqz p2, :cond_2

    .line 2
    array-length v0, p2

    if-lez v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p2, "\"return\""

    const-string v1, "\"ret\""

    .line 4
    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/iflytek/cloud/a/e/b;->k:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/16 v3, 0x4e21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v0}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 10
    new-instance v0, Lcom/iflytek/cloud/IdentityResult;

    invoke-direct {v0, p2}, Lcom/iflytek/cloud/IdentityResult;-><init>(Ljava/lang/String;)V

    const-string p2, "GetNotifyResult"

    .line 11
    invoke-static {p2, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    invoke-interface {p2, v0, p1}, Lcom/iflytek/cloud/IdentityListener;->onResult(Lcom/iflytek/cloud/IdentityResult;Z)V

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msc result time:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1
    return-void

    .line 15
    :cond_2
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x2786

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/iflytek/cloud/msc/util/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->j:Lcom/iflytek/cloud/msc/util/c;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/iflytek/cloud/IdentityListener;)V
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const-string p1, "startWorking called"

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 5

    .line 20
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ssub"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/iflytek/cloud/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/b/a;-><init>()V

    .line 22
    invoke-virtual {v0, p2}, Lcom/iflytek/cloud/b/a;->c(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p2

    const-string v4, "sst"

    invoke-virtual {p2, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-virtual {v0, v4, p2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p2, "mver"

    const-string v4, "2.0"

    .line 25
    invoke-virtual {v0, p2, v4, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {v0, v2, p1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "vad_enable"

    .line 27
    invoke-virtual {v0, p2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/iflytek/cloud/a/e/b;->d:Z

    .line 28
    iget-object p2, p0, Lcom/iflytek/cloud/a/e/b;->m:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p2, p0, Lcom/iflytek/cloud/a/e/b;->n:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 31
    iget-boolean p2, p0, Lcom/iflytek/cloud/a/e/b;->f:Z

    if-nez p2, :cond_1

    .line 32
    iput-boolean v1, p0, Lcom/iflytek/cloud/a/e/b;->f:Z

    .line 33
    iget-object p2, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    const-string v0, "rec_start"

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 34
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 36
    new-array p1, p5, [B

    .line 37
    invoke-static {p3, p4, p1, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const-string p3, "data"

    .line 38
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;[BZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_0
    array-length v0, p2

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/iflytek/cloud/a/e/a;->a(Ljava/lang/StringBuffer;[BIZ)V

    if-eqz p4, :cond_1

    .line 17
    iget-object p1, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/e/a;->getAudioVolume()I

    move-result p1

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "QISRAudioWrite volume:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/iflytek/cloud/a/e/b;->callbackVolume([BI)V

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Z
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecognize, current status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " usercancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_stop"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 7
    iput-boolean p2, p0, Lcom/iflytek/cloud/a/e/b;->h:Z

    const/4 p2, 0x3

    .line 8
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 4

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-string v0, "mfv msc vadEndCall"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/16 v2, 0x271d

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v1, v3}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    const-string v0, "ivp"

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/a/e/b;->a(Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method public callbackVolume([BI)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/16 v0, 0x271c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v1, v2}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public cancel(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v0, :cond_0

    const-string v0, "cancel"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/IdentityListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/e/b;->h:Z

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    return-void
.end method

.method errCb([CI[B)V
    .locals 2

    .line 1
    sget-object p3, Lcom/iflytek/cloud/a/e/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientSessionID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "errorcode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->getSessionID()Ljava/lang/String;

    move-result-object p3

    const-string v0, "session_id"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p3, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/16 v0, 0x4e21

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, v1, p1}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 5
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/b;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerfLog()Lcom/iflytek/cloud/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/e/a;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/e/b;->p:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 5

    const-string v0, "onSessionEnd"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/e/a;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/a/e/b;->b:I

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/e/a;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/a/e/b;->c:I

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->getSessionID()Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "asr_nomatch_error"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x2786

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :cond_0
    const-string v0, "app_ret"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 8
    iget-object v2, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;JZ)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    iget-boolean v2, p0, Lcom/iflytek/cloud/a/e/b;->h:Z

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_1

    :cond_2
    const-string v2, "0"

    :goto_1
    const-string v3, "rec_ustop"

    invoke-virtual {v0, v3, v2, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    iget-object v2, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessinfo"

    invoke-virtual {v0, v3, v2}, Lcom/iflytek/cloud/a/e/a;->setParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "SessionEndBegin"

    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    const-string v3, "user abort"

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/a/e/a;->sessionEnd(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/a/e/a;->sessionEnd(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    const-string v3, "success"

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/a/e/a;->sessionEnd(Ljava/lang/String;)V

    :goto_2
    const-string v0, "SessionEndEnd"

    .line 17
    invoke-static {v0, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 19
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    if-eqz v0, :cond_7

    .line 20
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 21
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/IdentityListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 22
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/16 v0, 0x271b

    invoke-interface {p1, v0, v1, v1, v2}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 23
    :cond_7
    iput-object v2, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    return-void
.end method

.method protected onMsgProcess(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onMsgProcess(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_1

    const/16 p1, 0x9

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->b()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->proc_Msg_Netperf()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/e/b;->proc_Msg_Result(Landroid/os/Message;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/e/b;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/e/b;->proc_Msg_Record_Data(Landroid/os/Message;)V

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->proc_Msg_Session_Begin()V

    goto :goto_0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->proc_Msg_Start()V

    :goto_0
    return-void
.end method

.method protected onParseParam()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    const-string v2, "speech_timeout"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeechTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->onParseParam()V

    return-void
.end method

.method public proc_Msg_Netperf()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    const-string v1, "netperf"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/e/a;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    const/16 v3, 0x2711

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v2, v4}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x7

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    :cond_1
    return-void
.end method

.method protected proc_Msg_Record_Data(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "data"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "ssub"

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/e/b;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/cloud/b/a;

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/a/e/b;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuffer;

    const-string v3, "mfv_data_path"

    .line 6
    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 8
    iget-object v3, p0, Lcom/iflytek/cloud/a/e/b;->j:Lcom/iflytek/cloud/msc/util/c;

    invoke-virtual {v3, v1, v0}, Lcom/iflytek/cloud/msc/util/c;->a(Ljava/lang/String;[B)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/e/b;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_1
    const-string v3, "ivp"

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/iflytek/cloud/a/e/b;->d:Z

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/iflytek/cloud/a/e/b;->a(Ljava/lang/StringBuffer;[BZZ)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/iflytek/cloud/a/e/b;->a(Ljava/lang/StringBuffer;[BZZ)V

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->o:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method proc_Msg_Result(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    const-string v1, "app_frs"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/e/b;->g:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/iflytek/cloud/a/e/b;->g:Z

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_lrs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/iflytek/cloud/a/e/b;->notifyResult(Z[B)V

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/e/b;->g:Z

    if-nez v0, :cond_3

    .line 9
    iput-boolean v2, p0, Lcom/iflytek/cloud/a/e/b;->g:Z

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/iflytek/cloud/a/e/b;->notifyResult(Z[B)V

    :goto_0
    return-void
.end method

.method protected proc_Msg_Session_Begin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "net_check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/j;->a(Landroid/content/Context;)V

    :cond_0
    const-string v0, "SDKSessionBegin"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    const-string v3, "app_ssb"

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, p0}, Lcom/iflytek/cloud/a/e/a;->sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    iget-object v3, v3, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->i:Lcom/iflytek/cloud/a/e/a;

    iget-object v0, v0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    const-string v2, "rsltCb"

    const-string v3, "stusCb"

    const-string v4, "errCb"

    invoke-static {v0, v2, v3, v4, p0}, Lcom/iflytek/msc/MSC;->QMFVRegisterNotify([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 9
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    .line 10
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v2, "asr_net_perf"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_0

    .line 12
    :cond_1
    iget v3, p0, Lcom/iflytek/cloud/a/e/b;->q:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/iflytek/cloud/a/e/b;->q:I

    const/16 v4, 0x28

    if-gt v3, v4, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v3, 0xf

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 15
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    :cond_2
    :goto_0
    return-void

    .line 16
    :cond_3
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1
.end method

.method protected proc_Msg_Start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[mfv]start connecting"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method

.method rsltCb([C[BII)V
    .locals 1

    const-string p1, "rsltCb:"

    if-eqz p2, :cond_0

    .line 1
    sget-object p3, Lcom/iflytek/cloud/a/e/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p3, Lcom/iflytek/cloud/a/e/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "result:null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x4

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p0, p1, p4, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_1

    .line 6
    :cond_1
    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    :goto_1
    return-void
.end method

.method protected start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/e/b;->l:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Lcom/iflytek/cloud/b/a;)V

    .line 2
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->start()V

    return-void
.end method

.method stusCb([CII[BI)V
    .locals 2

    const-string p1, "sst"

    .line 1
    sget-object p5, Lcom/iflytek/cloud/a/e/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stusCb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p5, 0x3

    if-ne p5, p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/e/b;->b()V

    :cond_0
    const/4 p5, 0x1

    if-ne p5, p2, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p2

    const-string v0, "scenes"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\|"

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    array-length p2, p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    return-void

    .line 6
    :cond_1
    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p2, p4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 7
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "sub"

    .line 8
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sret"

    .line 9
    invoke-virtual {p4, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ret"

    .line 10
    invoke-virtual {p4, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    iget-object p3, p0, Lcom/iflytek/cloud/a/e/b;->m:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iflytek/cloud/b/a;

    .line 12
    invoke-virtual {p2, p1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object p1, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    if-eqz p1, :cond_2

    .line 15
    new-instance p1, Lcom/iflytek/cloud/IdentityResult;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/IdentityResult;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/iflytek/cloud/a/e/b;->e:Lcom/iflytek/cloud/IdentityListener;

    invoke-interface {p2, p1, p5}, Lcom/iflytek/cloud/IdentityListener;->onResult(Lcom/iflytek/cloud/IdentityResult;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
