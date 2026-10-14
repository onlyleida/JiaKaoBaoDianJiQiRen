.class public Lcom/iflytek/cloud/a/d/c;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/d/c$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field protected volatile b:Lcom/iflytek/cloud/WakeuperListener;

.field protected c:Z

.field protected d:I

.field protected e:Lcom/iflytek/cloud/a/d/b;

.field protected f:Lcom/iflytek/cloud/record/PcmRecorder;

.field protected g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field protected final j:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field protected final k:I

.field protected l:Ljava/lang/String;

.field protected m:I

.field protected n:I

.field protected o:Z

.field protected final p:I

.field protected q:I

.field protected r:J

.field protected s:J

.field protected t:J

.field protected final u:I

.field protected v:I

.field private w:Z

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/d/c;->c:Z

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/a/d/c;->d:I

    .line 5
    new-instance v0, Lcom/iflytek/cloud/a/d/b;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/d/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    .line 6
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/c;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 7
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/c;->g:Ljava/util/ArrayList;

    .line 8
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/d/c;->h:Z

    .line 9
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/d/c;->i:Z

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/c;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const v0, 0xea60

    .line 11
    iput v0, p0, Lcom/iflytek/cloud/a/d/c;->k:I

    .line 12
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/c;->l:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/iflytek/cloud/a/d/c;->m:I

    .line 14
    iput p3, p0, Lcom/iflytek/cloud/a/d/c;->n:I

    .line 15
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/d/c;->o:Z

    const/16 p1, 0x7d0

    .line 16
    iput p1, p0, Lcom/iflytek/cloud/a/d/c;->p:I

    .line 17
    iput p3, p0, Lcom/iflytek/cloud/a/d/c;->q:I

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->r:J

    .line 19
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->s:J

    .line 20
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->t:J

    const/16 p1, 0x64

    .line 21
    iput p1, p0, Lcom/iflytek/cloud/a/d/c;->u:I

    .line 22
    iput p3, p0, Lcom/iflytek/cloud/a/d/c;->v:I

    .line 23
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/d/c;->w:Z

    .line 24
    iput p3, p0, Lcom/iflytek/cloud/a/d/c;->x:I

    .line 25
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/d/c;->c:Z

    .line 26
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/c;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a([B)I
    .locals 1

    .line 53
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/iflytek/cloud/util/VolumeUtil;->computeVolume([BI)I

    move-result p1

    return p1
.end method

.method private a(Z[BILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x2786

    if-ne p3, v0, :cond_4

    if-eqz p2, :cond_0

    .line 13
    array-length p3, p2

    if-lez p3, :cond_0

    .line 14
    new-instance p3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getResultEncoding()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    const-string p2, "local_grammar"

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "sms.irf"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x4e25

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    :cond_2
    const-string p3, ""

    .line 20
    :goto_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 22
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 23
    new-instance p4, Lcom/iflytek/cloud/RecognizerResult;

    invoke-direct {p4, p3}, Lcom/iflytek/cloud/RecognizerResult;-><init>(Ljava/lang/String;)V

    const-string p3, "rec_result"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    iget-object p3, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 p4, 0x55f1

    invoke-interface {p3, p4, p1, v1, p2}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 25
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "msc result time:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v4, "utf-8"

    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    .line 26
    array-length p3, p2

    if-lez p3, :cond_6

    .line 27
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz p4, :cond_5

    const-string p2, "ivw_audio"

    .line 29
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_1

    :cond_5
    move-object p2, v2

    .line 30
    :goto_1
    new-instance p4, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {p4, p3, p2}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;[B)V

    const-string p2, "GetNotifyResult"

    .line 31
    invoke-static {p2, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {p2, p4}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    goto :goto_3

    .line 33
    :cond_6
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    :cond_7
    const/4 p4, 0x2

    if-ne p3, p4, :cond_c

    if-eqz p2, :cond_b

    .line 34
    array-length p3, p2

    if-lez p3, :cond_b

    .line 35
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    const-string p4, "enroll"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 37
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz p2, :cond_8

    .line 38
    new-instance p2, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {p2, p3}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object p4, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {p4, p2}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    .line 40
    :cond_8
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p4, "suc_times"

    .line 41
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p4

    const-string v4, "total_times"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eq p4, p2, :cond_a

    .line 42
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 43
    :catch_0
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    :cond_9
    :goto_2
    const/4 v0, 0x0

    .line 44
    :cond_a
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 45
    new-instance p2, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {p2, p3}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object p3, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {p3, p2}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    if-eqz v0, :cond_c

    .line 47
    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_3

    .line 48
    :cond_b
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    :cond_c
    :goto_3
    if-eqz p1, :cond_d

    .line 49
    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :cond_d
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
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    const-string v1, "enroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/c;->releaseRecord()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/b;->pushEndFlag()V

    return-void
.end method

.method private releaseRecord()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "record_force_stop"

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/c;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 4
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/d/c;->w:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->stopBluetooth()V

    :cond_0
    return-void
.end method


# virtual methods
.method MsgProcCallBack([CIII[B)I
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cur rec buf: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->s:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", cur sync auw size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->r:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", cur writen size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->t:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string p1, "MscWakeuper"

    const-string v0, "param2:"

    const-string v1, "param1:"

    const-string v2, "msg:"

    if-eqz p5, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "result:"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "result:null"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/iflytek/cloud/a/d/c$b;->values()[Lcom/iflytek/cloud/a/d/c$b;

    move-result-object p4

    aget-object p1, p4, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    const-string p4, "unmatched ivw message!"

    .line 5
    invoke-static {p4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 7
    sget-object p4, Lcom/iflytek/cloud/a/d/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p4, p1

    const/4 p4, 0x1

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, v0, p2, p1, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    sget-object p3, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_4

    .line 10
    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {p1, p3}, Lcom/iflytek/cloud/WakeuperListener;->onVolumeChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :pswitch_2
    const/4 p1, 0x3

    if-ne p3, p1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/d/c;->b()V

    goto :goto_4

    .line 13
    :pswitch_3
    invoke-virtual {p0, v0, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 15
    sget-object p3, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_4

    .line 16
    :cond_1
    sget-object p3, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_4

    .line 17
    :pswitch_4
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, p3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/d/c;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_4

    .line 18
    :pswitch_5
    iput-boolean p4, p0, Lcom/iflytek/cloud/a/d/c;->h:Z

    .line 19
    iget-boolean p1, p0, Lcom/iflytek/cloud/a/d/c;->i:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    const-string p3, "oneshot"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x5

    .line 20
    invoke-virtual {p0, v0, p1, p2, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_3

    .line 21
    :cond_3
    :goto_2
    invoke-virtual {p0, v0, p2, p2, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 22
    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 23
    sget-object p3, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_4

    .line 24
    :cond_4
    sget-object p3, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    :catch_0
    :cond_5
    :goto_4
    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a([BII)I
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/cloud/a/d/c;->onRecordBuffer([BII)V

    const/4 p1, 0x0

    return p1
.end method

.method public a()Lcom/iflytek/cloud/WakeuperListener;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/iflytek/cloud/WakeuperListener;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    const-string p1, "[ivw]startListening called"

    .line 2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a([BZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 50
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    array-length v0, p1

    invoke-virtual {p2, p1, v0}, Lcom/iflytek/cloud/a/d/b;->pushAudioData([BI)V

    return-void
.end method

.method public declared-synchronized a(Z)Z
    .locals 3

    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopListening, current status is :"

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

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    const-string v1, "enroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 6
    iput-boolean p1, p0, Lcom/iflytek/cloud/a/d/c;->c:Z

    .line 7
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    const-string v2, "oneshot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/cloud/a/d/c;->h:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/c;->releaseRecord()V

    .line 10
    iput-boolean p1, p0, Lcom/iflytek/cloud/a/d/c;->c:Z

    .line 11
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/d/c;->cancel(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "ivw msc vadEndCall"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/d/c;->a(Z)Z

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

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/WakeuperListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    const-string v0, "cancel"

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/c;->releaseRecord()V

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/c;->c:Z

    .line 7
    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    return-void
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/a/d/c;->d:I

    return v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/b;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLongInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 4

    const-string v0, "onSessionEnd"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/c;->releaseRecord()V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lcom/iflytek/cloud/a/d/c;->l:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/iflytek/cloud/msc/util/FileUtil;->saveFile(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v2, "audio_format"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/iflytek/cloud/a/d/c;->l:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/iflytek/cloud/msc/util/FileUtil;->formatPcm(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save ivw audio succeed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/cloud/a/d/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save ivw audio failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/cloud/a/d/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    const-string v2, "oneshot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/iflytek/cloud/a/d/c;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "asr_nomatch_error"

    invoke-virtual {v0, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x2786

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :cond_2
    const-string v0, "SessionEndBegin"

    .line 13
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    const-string v2, "user abort"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/d/b;->sessionEnd(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/d/b;->sessionEnd(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/d/b;->sessionEnd(Ljava/lang/String;)V

    :goto_1
    const-string v0, "SessionEndEnd"

    .line 18
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 20
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_6

    .line 21
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_5

    const-string p1, "WakeuperListener#onCancel"

    .line 22
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "WakeuperListener#onEnd"

    .line 23
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 24
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/WakeuperListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 25
    :cond_6
    :goto_2
    iput-object v1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

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

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/d/c;->proc_Msg_Result(Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/c;->proc_Msg_Record_Stoped()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/d/c;->proc_Msg_Record_Data(Landroid/os/Message;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/d/c;->proc_Msg_Session_Begin()V

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/d/c;->proc_Msg_Start()V

    :goto_0
    return-void
.end method

.method protected onParseParam()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "sst"

    const-string v2, "wakeup"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "keep_alive"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/c;->i:Z

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "audio_source"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/d/c;->d:I

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/b;->a(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/b;

    move-result-object v0

    const-string v1, "ivw_netval"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;I)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->onParseParam()V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .locals 4

    if-eqz p1, :cond_2

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->s:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->s:J

    .line 3
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/c;->a([B)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/iflytek/cloud/WakeuperListener;->onVolumeChanged(I)V

    :cond_1
    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRecordReleased()V
    .locals 0

    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 0

    return-void
.end method

.method protected proc_Msg_Record_Data(Landroid/os/Message;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_7

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/a/d/c;->a([BZ)V

    .line 4
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/c;->t:J

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/c;->t:J

    .line 5
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/c;->r:J

    iget-wide v3, p0, Lcom/iflytek/cloud/a/d/c;->s:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 6
    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/c;->r:J

    .line 7
    :cond_1
    iget v1, p0, Lcom/iflytek/cloud/a/d/c;->v:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/iflytek/cloud/a/d/c;->v:I

    .line 8
    iget-wide v5, p0, Lcom/iflytek/cloud/a/d/c;->r:J

    sub-long/2addr v3, v5

    iget v0, p0, Lcom/iflytek/cloud/a/d/c;->q:I

    int-to-long v5, v0

    const-string v0, ", cur writen size: "

    const-string v2, ", cur sync auw size: "

    const-string v7, "cur rec buf: "

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-ltz v9, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/iflytek/cloud/a/d/c;->s:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/c;->r:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/c;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", diff match max buf size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/iflytek/cloud/a/d/c;->q:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cur bufs in msg will be ignored!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogW(Ljava/lang/String;)V

    .line 10
    iget-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->s:J

    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/c;->r:J

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    if-gt v3, v1, :cond_3

    .line 13
    iput v8, p0, Lcom/iflytek/cloud/a/d/c;->v:I

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/iflytek/cloud/a/d/c;->s:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/c;->r:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/c;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 15
    :cond_3
    :goto_0
    iget v0, p0, Lcom/iflytek/cloud/a/d/c;->m:I

    if-lez v0, :cond_6

    .line 16
    :goto_1
    iget v0, p0, Lcom/iflytek/cloud/a/d/c;->m:I

    iget v1, p0, Lcom/iflytek/cloud/a/d/c;->n:I

    if-ge v0, v1, :cond_5

    .line 17
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 18
    iget v1, p0, Lcom/iflytek/cloud/a/d/c;->n:I

    if-eqz v0, :cond_4

    array-length v0, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/iflytek/cloud/a/d/c;->n:I

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 20
    iget v0, p0, Lcom/iflytek/cloud/a/d/c;->n:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/cloud/a/d/c;->n:I

    .line 21
    :cond_6
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/d/c;->o:Z

    if-eqz v0, :cond_7

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 24
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 v1, 0x520b

    invoke-interface {p1, v1, v8, v8, v0}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_7
    :goto_3
    return-void
.end method

.method proc_Msg_Result(Landroid/os/Message;)V
    .locals 3
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
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/iflytek/cloud/a/d/c;->a(Z[BILandroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x4e2a

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    .line 5
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/iflytek/cloud/a/d/c;->a(Z[BILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method protected proc_Msg_Session_Begin()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    iget-object v0, v0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "SDKSessionBegin"

    .line 2
    invoke-static {v1, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/a/d/b;->sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    iget-object v1, v1, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    iget-object v0, v0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    const-string v1, "MsgProcCallBack"

    invoke-static {v0, v1, p0}, Lcom/iflytek/msc/MSC;->QIVWRegisterNotify([CLjava/lang/String;Ljava/lang/Object;)I

    .line 7
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 8
    iget v1, p0, Lcom/iflytek/cloud/a/d/c;->x:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/iflytek/cloud/a/d/c;->x:I

    const/16 v3, 0x28

    if-gt v1, v3, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0xf

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 11
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current csid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/c;->e:Lcom/iflytek/cloud/a/d/b;

    iget-object v1, v1, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x5207

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method protected proc_Msg_Start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[ivw]start connecting"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/c;->h:Z

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "record_read_rate"

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/cloud/a/d/c;->o:Z

    const-string v4, "notify_record_data"

    invoke-virtual {v2, v4, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/cloud/a/d/c;->o:Z

    .line 5
    iget v2, p0, Lcom/iflytek/cloud/a/d/c;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v2

    const-string v3, "ivw_audio_path"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/cloud/a/d/c;->l:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v2

    const v3, 0xea60

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/iflytek/cloud/a/d/c;->m:I

    :cond_0
    const-string v2, "[ivw]start  record"

    .line 9
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/c;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/cloud/a/d/c;->w:Z

    const-string v4, "bluetooth"

    invoke-virtual {v2, v4, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/cloud/a/d/c;->w:Z

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->startBluetooth()V

    .line 13
    :cond_1
    new-instance v2, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v3

    iget v4, p0, Lcom/iflytek/cloud/a/d/c;->d:I

    invoke-direct {v2, v3, v1, v4}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/d/c;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 14
    invoke-virtual {v2, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    goto :goto_0

    .line 15
    :cond_2
    iput v0, p0, Lcom/iflytek/cloud/a/d/c;->m:I

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v1

    mul-int/lit16 v1, v1, 0x7d0

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/iflytek/cloud/a/d/c;->q:I

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max saved buf byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/iflytek/cloud/a/d/c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max auw buf byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/iflytek/cloud/a/d/c;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/a/f/a$b;->e:Lcom/iflytek/cloud/a/f/a$b;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v1}, Lcom/iflytek/cloud/WakeuperListener;->onBeginOfSpeech()V

    .line 20
    :cond_4
    sget-object v1, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method
