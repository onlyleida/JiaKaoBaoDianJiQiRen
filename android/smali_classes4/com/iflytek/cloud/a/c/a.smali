.class public Lcom/iflytek/cloud/a/c/a;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/c/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/a/c/c;

.field private b:Lcom/iflytek/cloud/SpeechListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 2
    new-instance p1, Lcom/iflytek/cloud/a/c/c;

    invoke-direct {p1}, Lcom/iflytek/cloud/a/c/c;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/c/a;->a:Lcom/iflytek/cloud/a/c/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/a/c/a$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/iflytek/cloud/a/c/a;->b:Lcom/iflytek/cloud/SpeechListener;

    .line 2
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0xd

    .line 4
    iput p2, p1, Landroid/os/Message;->what:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    return-void
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/a;->a:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/b;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/a;->a:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/c/c;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/a;->b:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SpeechListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    return-void
.end method

.method protected onMsgProcess(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class p1, Lcom/iflytek/cloud/a/c/a;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/a;->a:Lcom/iflytek/cloud/a/c/c;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/iflytek/cloud/a/c/c;->a(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "{\'ret\':%d,\'cmd\':%s}"

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v3

    const-string v4, "cmd"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/a/c/a;->b:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechListener;->onBufferReceived([B)V

    :cond_1
    const/16 v0, 0x15

    .line 8
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    .line 9
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
