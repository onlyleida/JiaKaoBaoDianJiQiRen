.class public Lcom/iflytek/cloud/a/d/a;
.super Lcom/iflytek/cloud/a/d/c;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/a/d/e/a$b;
.implements Lcom/iflytek/cloud/a/d/e/a$a;


# instance fields
.field private final A:I

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private G:I

.field private H:Lcom/iflytek/cloud/a/d/e/a;

.field private final I:I

.field private final y:Ljava/lang/String;

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/a/d/c;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    const-string p1, "ivw_caller"

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/a;->y:Ljava/lang/String;

    const/16 p2, 0x16

    .line 3
    iput p2, p0, Lcom/iflytek/cloud/a/d/a;->z:I

    const/16 p2, 0x17

    .line 4
    iput p2, p0, Lcom/iflytek/cloud/a/d/a;->A:I

    const-string p2, "sid"

    .line 5
    iput-object p2, p0, Lcom/iflytek/cloud/a/d/a;->B:Ljava/lang/String;

    const-string p2, "msg"

    .line 6
    iput-object p2, p0, Lcom/iflytek/cloud/a/d/a;->C:Ljava/lang/String;

    const-string p2, "arg1"

    .line 7
    iput-object p2, p0, Lcom/iflytek/cloud/a/d/a;->D:Ljava/lang/String;

    const-string p2, "arg2"

    .line 8
    iput-object p2, p0, Lcom/iflytek/cloud/a/d/a;->E:Ljava/lang/String;

    const-string p2, "result"

    .line 9
    iput-object p2, p0, Lcom/iflytek/cloud/a/d/a;->F:Ljava/lang/String;

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/iflytek/cloud/a/d/a;->G:I

    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    .line 12
    iput p2, p0, Lcom/iflytek/cloud/a/d/a;->I:I

    .line 13
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p3

    const-string v0, "ivw_channel_num"

    invoke-virtual {p3, v0, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/iflytek/cloud/a/d/a;->G:I

    .line 14
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p3

    const-string v0, "1"

    invoke-virtual {p3, p1, v0, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    invoke-static {}, Lcom/iflytek/cloud/a/d/e/a;->b()Lcom/iflytek/cloud/a/d/e/a;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    if-nez p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    const-string p2, "aimic_init_param"

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;)Lcom/iflytek/cloud/a/d/e/a;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/a/d/e/a;->a(Lcom/iflytek/cloud/a/d/e/a$b;)V

    .line 19
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/a/d/e/a;->a(Lcom/iflytek/cloud/a/d/e/a$a;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/iflytek/cloud/SpeechError;)Lcom/iflytek/cloud/SpeechError;
    .locals 4

    const-string v0, "AIMicEnd enter"

    .line 28
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/a/d/e/a;->b(Lcom/iflytek/cloud/a/d/e/a$b;)V

    .line 31
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/a/d/e/a;->b(Lcom/iflytek/cloud/a/d/e/a$a;)V

    .line 32
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/a;->g()V

    const/4 v0, 0x0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v1, "user abort"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const-string v1, "success"

    .line 35
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    const-string v3, "ivw_sse"

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/16 v1, 0x5207

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v1, 0x4e35

    :goto_1
    if-nez p1, :cond_3

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const-string p1, "AIMicEnd error!"

    .line 36
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 37
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    :cond_3
    const-string v0, "AIMicEnd leave"

    .line 38
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "proc_Wakeup_Angle enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "msg"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/iflytek/cloud/a/d/c$b;->values()[Lcom/iflytek/cloud/a/d/c$b;

    move-result-object v1

    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :catchall_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warn: unmatched ivw message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/iflytek/cloud/a/d/c$b;->a:Lcom/iflytek/cloud/a/d/c$b;

    :goto_0
    const-string v1, "arg1"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 9
    sget-object v2, Lcom/iflytek/cloud/a/d/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-string v2, "result"

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "proc_Wakeup_Msg reset msg"

    .line 10
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v3, v4, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 12
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p1, v0, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_2

    .line 13
    :pswitch_2
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {p1, v1}, Lcom/iflytek/cloud/WakeuperListener;->onVolumeChanged(I)V

    goto :goto_2

    .line 15
    :pswitch_3
    sget-object p1, Lcom/iflytek/cloud/b/b$a;->d:Lcom/iflytek/cloud/b/b$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/d/c;->b()V

    goto :goto_2

    .line 17
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 18
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    .line 19
    :goto_1
    invoke-virtual {p0, p1, v0, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_2

    .line 20
    :pswitch_5
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    goto :goto_3

    .line 21
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/d/a;->a(Landroid/os/Bundle;)V

    :cond_1
    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    const-string p1, "proc_Wakeup_Angle error: listener is null"

    .line 22
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x5207

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :goto_3
    if-nez p1, :cond_3

    return-void

    .line 24
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeup msg error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 25
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/iflytek/cloud/SpeechError;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method private c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/a/d/a;->G:I

    if-lez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    if-eqz v0, :cond_5

    .line 3
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getShowLog()Z

    move-result v1

    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/a/d/e/a;->a(ZI)V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/a;->e()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/b/a;->c()Ljava/util/HashMap;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIMicBegin param count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "aimic_ssb_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v4, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIMicBegin for count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    iget v1, p0, Lcom/iflytek/cloud/a/d/a;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ivw_thread_num"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    .line 17
    invoke-static {v1, v2, p0}, Lcom/iflytek/cloud/b/c;->c(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ivw_ssb"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    return-void

    .line 19
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic init error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 20
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_5
    const-string v0, "create AIMIC failed!"

    .line 21
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x520b

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    .line 23
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/cloud/a/d/a;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is less than 1 !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2c

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/a;->e()V

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->e:Lcom/iflytek/cloud/a/f/a$b;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/WakeuperListener;->onBeginOfSpeech()V

    goto :goto_0

    :cond_0
    const-string v0, "It\'s not running while start aimic listening!"

    .line 5
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "alsa_card"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-virtual {v2, v1, v0}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "alsa_rate"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "alsa_save"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_4

    .line 10
    iget v0, p0, Lcom/iflytek/cloud/a/d/c;->d:I

    const/4 v1, -0x3

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio_source"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/a;->f()I

    move-result v0

    :cond_5
    if-nez v0, :cond_6

    return-void

    .line 13
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start aimic listening failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1
.end method


# virtual methods
.method public a([BII)I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/a/d/e/a;->a([BII)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x55f1

    :goto_0
    return p1
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/c;->h:Z

    .line 40
    sget-object v0, Lcom/iflytek/cloud/a/f/b$a;->f:Lcom/iflytek/cloud/a/f/b$a;

    .line 41
    iget-boolean v1, p0, Lcom/iflytek/cloud/a/d/c;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/c;->a:Ljava/lang/String;

    const-string v2, "oneshot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/f/b$a;->a:Lcom/iflytek/cloud/a/f/b$a;

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    .line 46
    :goto_0
    invoke-virtual {p0, v0, p1, v3, v3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    const-string v0, "Aimic Wakeuper onEnd enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/a;->a(Lcom/iflytek/cloud/SpeechError;)Lcom/iflytek/cloud/SpeechError;

    move-result-object p1

    .line 3
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/d/c;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public onError(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/d/c;->onError(Lcom/iflytek/cloud/SpeechError;)V

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
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/d/c;->onMsgProcess(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 p1, 0x17

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/a;->d()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/a;->a(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public onRecogAudio([BIILjava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-array p4, p2, [B

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0, p4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p1, "data"

    .line 4
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 p2, 0x520b

    invoke-interface {p1, p2, v0, v0, p3}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 7
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    const/16 p3, 0x5207

    invoke-direct {p2, p1, p3}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/d/c;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :goto_0
    return-void
.end method

.method public onWakeupAudio([BIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onWakeupMsg(III[BI[BI[BI)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/iflytek/cloud/a/d/c$b;->b:Lcom/iflytek/cloud/a/d/c$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    .line 3
    new-array v1, p9, [B

    .line 4
    invoke-static {p8, v3, v1, v3, p9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeupMsg audio length:"

    invoke-virtual {p8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-static {p8}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    :cond_0
    const-string p8, "ivw_audio"

    .line 6
    invoke-virtual {v0, p8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    if-eqz p4, :cond_1

    .line 7
    new-array p8, p5, [B

    .line 8
    invoke-static {p4, v3, p8, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p4, "sid"

    .line 9
    invoke-virtual {v0, p4, p8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    if-eqz p6, :cond_2

    .line 10
    new-array p4, p7, [B

    .line 11
    invoke-static {p6, v3, p4, v3, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p5, "result"

    .line 12
    invoke-virtual {v0, p5, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2
    const-string p4, "msg"

    .line 13
    invoke-virtual {v0, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "arg1"

    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "arg2"

    .line 15
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x16

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 17
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    .line 19
    :goto_0
    invoke-virtual {p0, p2, p1, v3, v3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 22
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x5207

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/a;->b(Lcom/iflytek/cloud/SpeechError;)V

    :goto_1
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
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/a;->c()V

    .line 2
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/c;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 v2, 0x271a

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v1, v3}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
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
    iget v2, p0, Lcom/iflytek/cloud/a/d/c;->d:I

    const/4 v3, -0x3

    if-ne v3, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/a;->H:Lcom/iflytek/cloud/a/d/e/a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "create AIMIC failed!"

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x520b

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "start  record"

    .line 9
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/c;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-nez v2, :cond_2

    .line 11
    new-instance v2, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v3

    iget v4, p0, Lcom/iflytek/cloud/a/d/c;->d:I

    invoke-direct {v2, v3, v1, v4}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/d/c;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 12
    invoke-virtual {v2, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    .line 13
    :cond_2
    :goto_0
    sget-object v1, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method
