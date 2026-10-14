.class public Lcom/iflytek/cloud/msc/ist/MscTranscripter;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# static fields
.field protected static final MSG_CUSTOM_MIN:I = 0x8015

.field private static final MSG_WAIT_RESULT:I = 0x8016

.field private static final NET_PERF_MSG_DELAY:I = 0x1f4

.field private static final STATUS_HASRESULT:I = 0x0

.field private static final STATUS_LASTRESULT:I = 0x5

.field private static final STATUS_NORESULT:I = 0x2

.field private static final WAIT_RESULT_PERIOD:I = 0x1f4

.field public static mDownflow:I

.field public static mUpflow:I


# instance fields
.field private final KEY_TOTAL_AUDIO:Ljava/lang/String;

.field private final SESSION_RETRY_PERIOD:I

.field private mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

.field protected mAudioSource:I

.field private mBuffer:[B

.field private mError:Lcom/iflytek/cloud/SpeechError;

.field private mFilePath:Ljava/lang/String;

.field protected mFirstDataArrival:Z

.field protected mFirstDataWrite:Z

.field protected mFirstRecordAudio:Z

.field private mIsFirstSession:Z

.field private mIsProcRecordDataOn:Z

.field private mIsRecording:Z

.field private mIsRestarting:Z

.field private mLastMscOffset:I

.field private mLastServerOffset:I

.field protected volatile mListener:Lcom/iflytek/cloud/TranscripterListener;

.field private mMaxSessionTry:I

.field protected mPerflog:Lcom/iflytek/cloud/a/f/c;

.field protected mRecorder:Lcom/iflytek/cloud/record/PcmRecorder;

.field private mResultSecondLeft:I

.field protected mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

.field private mSessionID:Ljava/lang/String;

.field private mSessionRetryCount:I

.field private mSyncID:I

.field private mUseBluetooth:Z

.field protected mUstopRecord:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstRecordAudio:Z

    .line 4
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstDataWrite:Z

    .line 5
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstDataArrival:Z

    .line 6
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUstopRecord:Z

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAudioSource:I

    .line 8
    new-instance v1, Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-direct {v1}, Lcom/iflytek/cloud/msc/ist/IstSession;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    .line 9
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mRecorder:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 10
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResults:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mBuffer:[B

    .line 12
    iput p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastMscOffset:I

    .line 13
    iput p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResultSecondLeft:I

    .line 15
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSyncID:I

    .line 17
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFilePath:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    const-string v1, "total"

    .line 19
    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->KEY_TOTAL_AUDIO:Ljava/lang/String;

    .line 20
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mMaxSessionTry:I

    const/16 v1, 0x1f4

    .line 21
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->SESSION_RETRY_PERIOD:I

    .line 22
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsProcRecordDataOn:Z

    .line 23
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRecording:Z

    .line 24
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mError:Lcom/iflytek/cloud/SpeechError;

    .line 25
    iput-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsFirstSession:Z

    .line 26
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRestarting:Z

    .line 27
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUseBluetooth:Z

    .line 28
    new-instance p1, Lcom/iflytek/cloud/a/f/c;

    invoke-direct {p1}, Lcom/iflytek/cloud/a/f/c;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    .line 29
    iput p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResults:Ljava/util/ArrayList;

    .line 31
    iput-boolean p3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUstopRecord:Z

    .line 32
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method

.method private assertSessionTimes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecordMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecordMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getMaxSessionTry()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getMaxSessionTry()I

    move-result v0

    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proc_Msg_Session_Begin max session try:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getMaxSessionTry()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mError:Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private closeAudioFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    :cond_0
    return-void
.end method

.method private getAudioData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mBuffer:[B

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getAudio([B)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDataLength()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataLength len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-virtual {v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getDataLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getDataLength()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "getDataLength file accesser is null."

    .line 4
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getMaxSessionTry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mMaxSessionTry:I

    return v0
.end method

.method private hasMoreData()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasMoreData >>> isRecording ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecording()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " && datalength == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getDataLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getDataLength()J

    move-result-wide v0

    iget v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastMscOffset:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRecordMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAudioSource:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v1, -0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecording()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecording:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRecording:Z

    return v0
.end method

.method private isSessionOn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    iget-object v0, v0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyResult(Z[B)V
    .locals 3
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

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    array-length v1, p2

    if-lez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getSessionID()Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    new-instance p2, Lcom/iflytek/cloud/TranscripterResult;

    invoke-direct {p2, v1}, Lcom/iflytek/cloud/TranscripterResult;-><init>(Ljava/lang/String;)V

    const-string v1, "GetNotifyResult"

    .line 9
    invoke-static {v1, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    invoke-interface {v1, p2, p1}, Lcom/iflytek/cloud/TranscripterListener;->onResult(Lcom/iflytek/cloud/TranscripterResult;Z)V

    .line 11
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msc result time:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :cond_3
    return-void
.end method

.method private proc_Msg_Record_Stoped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "recording stop"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->releaseRecord()V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_lau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/TranscripterListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method private releaseRecord()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mRecorder:Lcom/iflytek/cloud/record/PcmRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v2

    const-string v3, "record_force_stop"

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mRecorder:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v2, "rec_close"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :cond_0
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    .line 8
    iget-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUseBluetooth:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->stopBluetooth()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRecording:Z

    return-void
.end method

.method private declared-synchronized restartSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRestarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->assertSessionTimes()V

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateUploadBytes()V

    .line 4
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateSessionID()V

    .line 5
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateSyncID()V

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    const-string v1, "restart"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->sessionEnd(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastMscOffset:I

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    const-string v3, "sid"

    invoke-virtual {v0, v3, v2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "spos"

    .line 13
    invoke-virtual {v0, v3, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSyncID:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "syncid"

    .line 16
    invoke-virtual {v0, v3, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    :cond_1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    .line 18
    iput-boolean v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRestarting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopWriteAutio()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/ist/IstSession;->pushEndFlag()V

    const v0, 0x8016

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    return-void
.end method

.method private updateCatchLeft()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecordMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-virtual {v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getCacheLeft()I

    move-result v1

    const/16 v2, 0x2717

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private updateSessionID()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const/16 v2, 0x4e21

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private updateSyncID()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSyncID:I

    const-string v2, "syncid"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateSyncID"

    invoke-static {v2, v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSyncID:I

    if-eq v0, v1, :cond_0

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSyncID:I

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const/16 v2, 0x2719

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private updateUploadBytes()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    const-string v2, "spos"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateUploadBytes"

    invoke-static {v2, v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    if-eq v0, v1, :cond_2

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getAudioSource()I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getDataLength()J

    move-result-wide v1

    long-to-int v2, v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getDataLength()J

    move-result-wide v3

    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ist_upload_complete"

    .line 10
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const/16 v4, 0x2716

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public callbackVolume([BI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    invoke-interface {v0, p2, p1}, Lcom/iflytek/cloud/TranscripterListener;->onVolumeChanged(I[B)V

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

    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/TranscripterListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->releaseRecord()V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUstopRecord:Z

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    return-void
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAudioSource:I

    return v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/b;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerfLog()Lcom/iflytek/cloud/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/ist/IstSession;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSyncID:I

    return v0
.end method

.method public getTranscriptResult()Lcom/iflytek/cloud/TranscripterResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/ist/IstSession;->getResultData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/iflytek/cloud/TranscripterResult;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v2}, Lcom/iflytek/cloud/msc/ist/IstSession;->getResultData()[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/TranscripterResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e24

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method public getUploadBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    return v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 6

    const-string v0, "onSessionEnd"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->releaseRecord()V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUpflow:I

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mDownflow:I

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getSessionID()Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateUploadBytes()V

    .line 7
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateSessionID()V

    .line 8
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateSyncID()V

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const-string v1, "error"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    const-string v4, "sid"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSyncID:I

    const-string v4, "syncid"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    const-string v4, "spos"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getDataLength()J

    move-result-wide v3

    long-to-int v4, v3

    const-string v3, "total"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getAudioPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ist_audio_path"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    iget-object v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const/16 v4, 0x271b

    invoke-interface {v3, v4, v2, v2, v0}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 18
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->closeAudioFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p1, :cond_1

    .line 19
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    if-nez p1, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "asr_nomatch_error"

    invoke-virtual {v0, v4, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x2786

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :cond_2
    const-string v0, "app_ret"

    if-eqz p1, :cond_3

    .line 23
    iget-object v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;JZ)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;JZ)V

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    iget-boolean v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUstopRecord:Z

    if-eqz v3, :cond_4

    const-string v3, "1"

    goto :goto_2

    :cond_4
    const-string v3, "0"

    :goto_2
    const-string v4, "rec_ustop"

    invoke-virtual {v0, v4, v3, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessinfo"

    invoke-virtual {v0, v3, v2}, Lcom/iflytek/cloud/msc/ist/IstSession;->setParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "SessionEndBegin"

    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->sessionEnd(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 30
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->sessionEnd(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->sessionEnd(Ljava/lang/String;)V

    :goto_3
    const-string v0, "SessionEndEnd"

    .line 32
    invoke-static {v0, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 34
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v0, :cond_8

    .line 35
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_7

    const-string p1, "TranscripterListener#onCancel"

    .line 36
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, "TranscripterListener#onEnd"

    .line 37
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 38
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/TranscripterListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

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

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_8

    const/16 v1, 0x16

    if-eq v0, v1, :cond_7

    const v1, 0x8016

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->proc_Msg_Result(Landroid/os/Message;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->proc_Msg_Record_Stoped()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->proc_Msg_Record_Data(Landroid/os/Message;)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->proc_Msg_Session_Begin()V

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->proc_Msg_Start()V

    goto :goto_0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->proc_Msg_Wait_Result()V

    goto :goto_0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->requestResult()Lcom/iflytek/cloud/a/f/b$a;

    goto :goto_0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->proc_Msg_Netperf()V

    :goto_0
    return-void
.end method

.method protected onParseParam()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "audio_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAudioSource:I

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mMaxSessionTry:I

    const-string v2, "ist_session_try"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mMaxSessionTry:I

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "spos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastServerOffset:I

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastMscOffset:I

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "sid"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionID:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    sget-object v3, Lcom/iflytek/cloud/b/b;->b:Ljava/lang/String;

    const-string v4, "ist_audio_path"

    invoke-virtual {v1, v4, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFilePath:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "syncid"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSyncID:I

    .line 8
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->onParseParam()V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .locals 4

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    .line 1
    array-length p2, p1

    if-ge p2, p3, :cond_0

    goto :goto_1

    :cond_0
    if-lez p3, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    iget-boolean p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstRecordAudio:Z

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstRecordAudio:Z

    .line 5
    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "rec_start"

    invoke-virtual {p2, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    if-nez p2, :cond_3

    const/4 p2, -0x1

    .line 7
    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAudioSource:I

    if-ne p2, v1, :cond_2

    .line 8
    invoke-static {}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->createBufferAccessor()Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    move-result-object p2

    iput-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    goto :goto_0

    :cond_2
    const/4 p2, -0x2

    if-ne p2, v1, :cond_3

    .line 9
    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFilePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->createReadOnlyAccessor(Ljava/lang/String;)Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    move-result-object p2

    iput-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    .line 10
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "sample_rate"

    :try_start_1
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    sget-object v3, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->RATE:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    .line 11
    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getAudioInfo(Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p2, v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-virtual {p2, p1, p3}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->putAudio([BI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateCatchLeft()V

    .line 15
    iget-boolean p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsProcRecordDataOn:Z

    if-nez p1, :cond_4

    .line 16
    iput-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsProcRecordDataOn:Z

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 19
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onRecordReleased()V
    .locals 0

    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "rec_ready"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRecording:Z

    return-void
.end method

.method public proc_Msg_Netperf()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    const-string v1, "netperf"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const/16 v3, 0x2711

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v2, v4}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x7

    const/16 v3, 0x1f4

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
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getAudioData()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isSessionOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mBuffer:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {p0, v2, p1, v3}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->uploadData([BIZ)V

    .line 5
    iget v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastMscOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastMscOffset:I

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastMscOffset: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mLastMscOffset:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateUploadBytes()V

    .line 8
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateSessionID()V

    .line 9
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateSyncID()V

    .line 10
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateCatchLeft()V

    const/16 p1, 0x16

    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-object v2, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/16 v4, 0x64

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V
    :try_end_1
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->hasMoreData()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isSessionOn()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14
    :try_start_2
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mError:Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x2782

    .line 15
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 16
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->restartSession()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->hasMoreData()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    goto :goto_2

    .line 19
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isSessionOn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->stopWriteAutio()V

    :cond_4
    :goto_2
    return-void

    .line 21
    :cond_5
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :goto_3
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->hasMoreData()Z

    move-result v2

    if-nez v2, :cond_6

    .line 23
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isSessionOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->stopWriteAutio()V

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    .line 26
    :cond_7
    :goto_4
    throw p1

    :catch_1
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 28
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read file Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2779

    invoke-direct {v0, v1, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(ILjava/lang/String;)V

    throw v0
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
    iget-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstDataArrival:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstDataArrival:Z

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_lrs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->notifyResult(Z[B)V

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstDataArrival:Z

    if-nez v0, :cond_3

    .line 9
    iput-boolean v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstDataArrival:Z

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->notifyResult(Z[B)V

    :goto_0
    return-void
.end method

.method protected proc_Msg_Session_Begin()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isSessionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->assertSessionTimes()V

    const/16 v0, 0x271a

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "SDKSessionBegin"

    .line 3
    invoke-static {v5, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v5, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    iget-object v6, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, p0}, Lcom/iflytek/cloud/msc/ist/IstSession;->sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I

    move-result v5
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget v6, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    if-nez v5, :cond_1

    .line 6
    iget-object v5, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    iget-object v5, v5, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-eqz v5, :cond_1

    .line 7
    iput-boolean v4, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRestarting:Z

    .line 8
    iget-boolean v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsFirstSession:Z

    if-eqz v1, :cond_4

    .line 9
    iput-boolean v4, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsFirstSession:Z

    .line 10
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecordMode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v5

    const/4 v6, 0x0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 13
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-virtual {v5}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    iput-object v5, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mError:Lcom/iflytek/cloud/SpeechError;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    iget v5, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    if-nez v6, :cond_2

    .line 17
    iget-object v5, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    iget-object v5, v5, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-eqz v5, :cond_2

    .line 18
    iput-boolean v4, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRestarting:Z

    .line 19
    iget-boolean v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsFirstSession:Z

    if-eqz v1, :cond_4

    .line 20
    iput-boolean v4, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsFirstSession:Z

    .line 21
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v1, :cond_4

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    invoke-interface {v1, v0, v4, v4, v2}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecordMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    :goto_1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v3, v0, v4, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_2

    .line 26
    :cond_3
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v3, v0, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    :cond_4
    :goto_2
    return-void

    :catchall_1
    move-exception v5

    .line 27
    :goto_3
    iget v7, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSessionRetryCount:I

    if-nez v6, :cond_5

    .line 28
    iget-object v6, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    iget-object v6, v6, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-eqz v6, :cond_5

    .line 29
    iput-boolean v4, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRestarting:Z

    .line 30
    iget-boolean v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsFirstSession:Z

    if-eqz v1, :cond_7

    .line 31
    iput-boolean v4, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsFirstSession:Z

    .line 32
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v1, :cond_7

    .line 33
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    invoke-interface {v1, v0, v4, v4, v2}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_4

    .line 34
    :cond_5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->isRecordMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v3, v0, v4, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_4

    .line 37
    :cond_6
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v3, v0, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    .line 38
    :cond_7
    :goto_4
    throw v5
.end method

.method protected proc_Msg_Start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "start connecting"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getAudioSource()I

    move-result v0

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->getAudioSource()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/j;->a(Landroid/content/Context;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const/16 v3, 0x28

    const-string v4, "record_read_rate"

    invoke-virtual {v0, v4, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 7
    iget v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAudioSource:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 8
    invoke-static {}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->createBufferAccessor()Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->createReadOnlyAccessor(Ljava/lang/String;)Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    .line 10
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    sget-object v3, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->RATE:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    .line 11
    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getAudioInfo(Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sample_rate"

    .line 12
    invoke-virtual {v1, v3, v2, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    invoke-static {v1, v2}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->createWriteReadAccessor(Ljava/lang/String;I)Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    .line 14
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v1, :cond_4

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-virtual {v2}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ist_audio_path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const/16 v3, 0x2714

    invoke-interface {v2, v3, v4, v4, v1}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 18
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAccesser:Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-virtual {v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getBufferLength()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mBuffer:[B

    .line 19
    iget v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAudioSource:I

    if-ltz v1, :cond_6

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "start  record"

    .line 20
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUseBluetooth:Z

    const-string v3, "bluetooth"

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUseBluetooth:Z

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->startBluetooth()V

    .line 23
    :cond_5
    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v2

    iget v3, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mAudioSource:I

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mRecorder:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 24
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "rec_open"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mRecorder:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    .line 26
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/TranscripterListener;->onBeginOfSpeech()V

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_ssb"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    .line 30
    iput-boolean v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mIsRecording:Z

    return-void
.end method

.method protected proc_Msg_Wait_Result()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateUploadBytes()V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateSessionID()V

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->updateSyncID()V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    sget-object v1, Lcom/iflytek/cloud/b/b;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/msc/ist/IstSession;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWaiting msc waitTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 6
    iget v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResultSecondLeft:I

    if-eq v0, v2, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/cloud/a/f/a;->mStatusBegin:J

    .line 8
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResultSecondLeft:I

    .line 9
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    div-int/lit16 v0, v0, 0x3e8

    const/16 v3, 0x2718

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 11
    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/f/b$a;->c:Lcom/iflytek/cloud/a/f/b$a;

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->requestResult()Lcom/iflytek/cloud/a/f/b$a;

    move-result-object v0
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 13
    invoke-virtual {v2}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    const/16 v4, 0x2782

    if-ne v4, v3, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->restartSession()V

    .line 15
    :goto_0
    iget v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mResultSecondLeft:I

    if-gez v2, :cond_1

    sget-object v3, Lcom/iflytek/cloud/a/f/b$a;->c:Lcom/iflytek/cloud/a/f/b$a;

    if-eq v3, v0, :cond_2

    .line 16
    :cond_1
    iget-wide v3, p0, Lcom/iflytek/cloud/a/f/a;->mStatusBegin:J

    iget v0, p0, Lcom/iflytek/cloud/a/f/a;->mNetTimeOut:I

    add-int/2addr v2, v0

    invoke-static {v3, v4, v2}, Lcom/iflytek/cloud/a/f/a;->timeOutCheck(JI)V

    .line 17
    :cond_2
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const v2, 0x8016

    const/16 v3, 0x1f4

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void

    .line 18
    :cond_3
    throw v2
.end method

.method protected requestResult()Lcom/iflytek/cloud/a/f/b$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/ist/IstSession;->getStatus()Lcom/iflytek/cloud/a/f/b$a;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/iflytek/cloud/a/f/b$a;->c:Lcom/iflytek/cloud/a/f/b$a;

    if-eq v1, v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->getResultData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v1}, Lcom/iflytek/cloud/msc/ist/IstSession;->getResultData()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v2}, Lcom/iflytek/cloud/msc/ist/IstSession;->getResultData()[B

    move-result-object v2

    const-string v3, "gb2312"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "utf-8"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    sget-object v2, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_1

    .line 10
    :cond_1
    sget-object v2, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    :goto_1
    return-object v0
.end method

.method protected start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Lcom/iflytek/cloud/b/a;)V

    .line 2
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->start()V

    return-void
.end method

.method public declared-synchronized startTranscripting(Lcom/iflytek/cloud/TranscripterListener;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mListener:Lcom/iflytek/cloud/TranscripterListener;

    const-string p1, "startTranscripting called"

    .line 2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopTranscripting(Z)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopTranscript, current status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " usercancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_stop"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->releaseRecord()V

    .line 4
    iput-boolean p1, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mUstopRecord:Z

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V
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

.method protected uploadData([BIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstDataWrite:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mFirstDataWrite:Z

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mPerflog:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_fau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/msc/ist/IstSession;->pushAudioData([BI)V

    if-eqz p3, :cond_1

    .line 5
    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->mSession:Lcom/iflytek/cloud/msc/ist/IstSession;

    invoke-virtual {p2}, Lcom/iflytek/cloud/msc/ist/IstSession;->getAudioVolume()I

    move-result p2

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QISRAudioWrite volume:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/msc/ist/MscTranscripter;->callbackVolume([BI)V

    :cond_1
    return-void
.end method
