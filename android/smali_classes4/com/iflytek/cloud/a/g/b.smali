.class public Lcom/iflytek/cloud/a/g/b;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/g/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/SpeechListener;

.field private b:Lcom/iflytek/cloud/a/g/a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    .line 8
    new-instance v0, Lcom/iflytek/cloud/a/g/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/g/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/g/b;->b:Lcom/iflytek/cloud/a/g/a;

    .line 9
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    .line 3
    new-instance p3, Lcom/iflytek/cloud/a/g/a;

    invoke-direct {p3}, Lcom/iflytek/cloud/a/g/a;-><init>()V

    iput-object p3, p0, Lcom/iflytek/cloud/a/g/b;->b:Lcom/iflytek/cloud/a/g/a;

    .line 4
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechError;
    .locals 2

    const-string v0, " occur Error = "

    const-string v1, "auth"

    .line 13
    iput-object v1, p0, Lcom/iflytek/cloud/a/g/b;->c:Ljava/lang/String;

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p0}, Lcom/iflytek/cloud/a/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 16
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x520b

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 18
    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 19
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x4e2a

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 21
    :try_start_3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 23
    :goto_1
    throw p1
.end method

.method public a(Lcom/iflytek/cloud/SpeechListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    const/16 p1, 0xb

    .line 2
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->b:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    const-string v0, "sch"

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/a/g/b;->c:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    const/16 p1, 0xc

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;[B)V
    .locals 1

    const-string v0, "uup"

    .line 8
    iput-object v0, p0, Lcom/iflytek/cloud/a/g/b;->c:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    .line 10
    new-instance p1, Lcom/iflytek/cloud/a/g/b$a;

    invoke-direct {p1, p0, p3, p2}, Lcom/iflytek/cloud/a/g/b$a;-><init>(Lcom/iflytek/cloud/a/g/b;[BLjava/lang/String;)V

    const/16 p2, 0xa

    .line 11
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    return-void
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SpeechListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    return-void
.end method

.method protected onMsgProcess(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onMsgProcess(Landroid/os/Message;)V

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "MscCommon process while utility is null!"

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x4e2f

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void

    .line 5
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4e29

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move-object p1, v2

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->d:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/a/g/b;->b:Lcom/iflytek/cloud/a/g/a;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/iflytek/cloud/a/g/a;->a(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    .line 11
    :pswitch_1
    iget-object p1, p0, Lcom/iflytek/cloud/a/g/b;->b:Lcom/iflytek/cloud/a/g/a;

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/iflytek/cloud/a/g/a;->a(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)[B

    move-result-object p1

    goto :goto_0

    .line 12
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/iflytek/cloud/a/g/b$a;

    .line 13
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/g/b$a;->b()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/g/b$a;->b()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/a/g/b;->b:Lcom/iflytek/cloud/a/g/a;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/g/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/g/b$a;->b()[B

    move-result-object p1

    invoke-virtual {v0, v1, v3, p1, p0}, Lcom/iflytek/cloud/a/g/a;->a(Landroid/content/Context;Ljava/lang/String;[BLcom/iflytek/cloud/a/f/a;)[B

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_2
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    :goto_0
    if-eqz p1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v0, :cond_3

    .line 17
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/iflytek/cloud/a/g/b;->a:Lcom/iflytek/cloud/SpeechListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SpeechListener;->onBufferReceived([B)V

    .line 19
    :cond_3
    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void

    .line 20
    :cond_4
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x4e24

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
