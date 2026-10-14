.class public abstract Lcom/iflytek/cloud/a/f/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/f/a$a;,
        Lcom/iflytek/cloud/a/f/a$b;
    }
.end annotation


# static fields
.field protected static final MSG_CLEAR:I = 0x14

.field protected static final MSG_DOWNLOAD:I = 0xb

.field protected static final MSG_END:I = 0x15

.field protected static final MSG_ISV_REQUEST:I = 0xd

.field protected static final MSG_NET_PERF:I = 0x7

.field protected static final MSG_NET_TIMEOUT:I = 0x8

.field protected static final MSG_RECORD_AUDIO:I = 0x2

.field protected static final MSG_RECORD_STOPD:I = 0x3

.field protected static final MSG_REQUEST_RESULT:I = 0x16

.field protected static final MSG_RESULT:I = 0x4

.field protected static final MSG_SEARCH:I = 0xc

.field protected static final MSG_SESSION_BEGIN:I = 0x1

.field protected static final MSG_SPEECH_TIMEOUT:I = 0x9

.field protected static final MSG_START:I = 0x0

.field protected static final MSG_TTS_AUDIO:I = 0x5

.field protected static final MSG_UPLOAD:I = 0xa

.field public static final TAG_DOWNFLOW:Ljava/lang/String; = "downflow"

.field public static final TAG_LOGIN_ID:Ljava/lang/String; = "loginid"

.field public static final TAG_NETPERF:Ljava/lang/String; = "netperf"

.field public static final TAG_UPFLOW:Ljava/lang/String; = "upflow"

.field protected static final sInstances:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/iflytek/cloud/a/f/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNetTimeOut:I

.field private mParam:Lcom/iflytek/cloud/b/a;

.field public mSampleRate:I

.field protected mSpeechTimeOut:I

.field private volatile mStatus:Lcom/iflytek/cloud/a/f/a$b;

.field protected mStatusBegin:J

.field private mThread:Landroid/os/HandlerThread;

.field protected volatile mUserCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/a/f/a;->sInstances:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    .line 15
    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    const/16 v0, 0x3e80

    .line 16
    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    .line 18
    new-instance v0, Lcom/iflytek/cloud/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/b/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    .line 20
    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->a:Lcom/iflytek/cloud/a/f/a$b;

    iput-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Lcom/iflytek/cloud/a/f/a;->mStatusBegin:J

    const/16 v1, 0x4e20

    .line 22
    iput v1, p0, Lcom/iflytek/cloud/a/f/a;->mNetTimeOut:I

    .line 23
    iput-object p1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    .line 24
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    .line 2
    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    const/16 v0, 0x3e80

    .line 3
    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    .line 5
    new-instance v0, Lcom/iflytek/cloud/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/b/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    .line 7
    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->a:Lcom/iflytek/cloud/a/f/a$b;

    iput-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/iflytek/cloud/a/f/a;->mStatusBegin:J

    const/16 v1, 0x4e20

    .line 9
    iput v1, p0, Lcom/iflytek/cloud/a/f/a;->mNetTimeOut:I

    .line 10
    iput-object p2, p0, Lcom/iflytek/cloud/a/f/a;->mThread:Landroid/os/HandlerThread;

    .line 11
    iput-object p1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    .line 12
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    .line 13
    sget-object p1, Lcom/iflytek/cloud/a/f/a;->sInstances:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private destroyThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->clearAllMsg()V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/a;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "quit current Msc Handler thread"

    .line 7
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 8
    :cond_2
    iput-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mThread:Landroid/os/HandlerThread;

    .line 9
    :cond_3
    sget-object v0, Lcom/iflytek/cloud/a/f/a;->sInstances:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isEmpty()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/a;->sInstances:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static timeOutCheck(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    int-to-long p0, p2

    cmp-long p2, v0, p0

    if-gtz p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lcom/iflytek/cloud/SpeechError;

    const/16 p1, 0x4e22

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->clearAllMsg()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method protected clearAllMsg()V
    .locals 2

    const-string v0, "clear all message"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected declared-synchronized exit(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->clearAllMsg()V

    :cond_0
    const/16 v0, 0x15

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract getClientID()Ljava/lang/String;
.end method

.method public getParam()Lcom/iflytek/cloud/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    return-object v0
.end method

.method public getParamEncoding()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    const-string v1, "pte"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultEncoding()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    const-string v1, "rse"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    return v0
.end method

.method public abstract getSessionID()Ljava/lang/String;
.end method

.method protected declared-synchronized getStatus()Lcom/iflytek/cloud/a/f/a$b;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextEncoding()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    const-string v1, "text_encoding"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    const-string v2, " occur Error = "

    if-eq v0, v1, :cond_2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SDK is not init while session begin"

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x4e2f

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onMsgProcess(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 6
    :cond_2
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x4e22

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 8
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x5207

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 12
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x4e35

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 15
    :try_start_3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 19
    :try_start_4
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 22
    :try_start_5
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 23
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x4e2a

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 26
    throw p1

    .line 27
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/iflytek/cloud/SpeechError;

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 28
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/a;->destroyThread()V

    :goto_1
    return-void
.end method

.method public isLongInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->f:Lcom/iflytek/cloud/a/f/a$b;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->e:Lcom/iflytek/cloud/a/f/a$b;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->a:Lcom/iflytek/cloud/a/f/a$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/iflytek/cloud/a/f/a$b;->f:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->clearAllMsg()V

    return-void
.end method

.method protected onMsgProcess(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    return-void
.end method

.method protected onParseParam()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mNetTimeOut:I

    const-string v2, "timeout"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mNetTimeOut:I

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    const-string v2, "sample_rate"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    return-void
.end method

.method protected sendMsg(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method

.method protected sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method

.method protected sendMsg(Landroid/os/Message;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method

.method protected sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->f:Lcom/iflytek/cloud/a/f/a$b;

    if-eq v0, v1, :cond_6

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->e:Lcom/iflytek/cloud/a/f/a$b;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->d:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->b:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    :goto_0
    if-eqz p3, :cond_4

    .line 10
    iget p3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    :cond_4
    sget-object p3, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    if-ne p2, p3, :cond_5

    if-gtz p4, :cond_5

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    int-to-long p2, p4

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    .line 14
    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "send msg failed while status is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method protected setParams(Lcom/iflytek/cloud/b/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/a;->mParam:Lcom/iflytek/cloud/b/a;

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->onParseParam()V

    return-void
.end method

.method protected declared-synchronized setStatus(Lcom/iflytek/cloud/a/f/a$b;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",setStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->f:Lcom/iflytek/cloud/a/f/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    sget-object v2, Lcom/iflytek/cloud/a/f/a$b;->e:Lcom/iflytek/cloud/a/f/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_1

    if-eq p1, v1, :cond_1

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/iflytek/cloud/a/f/a;->mStatus:Lcom/iflytek/cloud/a/f/a$b;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatusBegin:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected start()V
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method

.method public startBluetooth()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "startBluetooth enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    return-void
.end method

.method public stopBluetooth()V
    .locals 2

    const-string v0, "stopBluetooth enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected updateTimeoutMsg()V
    .locals 4

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    sget-object v1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    iget v2, p0, Lcom/iflytek/cloud/a/f/a;->mNetTimeOut:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method
