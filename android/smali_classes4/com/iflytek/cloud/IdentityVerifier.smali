.class public final Lcom/iflytek/cloud/IdentityVerifier;
.super Lcom/iflytek/cloud/a/f/d;
.source "SourceFile"


# static fields
.field private static a:Lcom/iflytek/cloud/IdentityVerifier;


# instance fields
.field private b:Lcom/iflytek/cloud/c/a/c;

.field private c:Lcom/iflytek/cloud/InitListener;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->c:Lcom/iflytek/cloud/InitListener;

    .line 4
    new-instance v1, Lcom/iflytek/cloud/IdentityVerifier$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/iflytek/cloud/IdentityVerifier$a;-><init>(Lcom/iflytek/cloud/IdentityVerifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/iflytek/cloud/IdentityVerifier;->c:Lcom/iflytek/cloud/InitListener;

    .line 6
    new-instance v1, Lcom/iflytek/cloud/c/a/c;

    invoke-direct {v1, p1}, Lcom/iflytek/cloud/c/a/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/iflytek/cloud/IdentityVerifier;->d:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/IdentityVerifier;)Lcom/iflytek/cloud/InitListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/IdentityVerifier;->c:Lcom/iflytek/cloud/InitListener;

    return-object p0
.end method

.method public static declared-synchronized createVerifier(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/IdentityVerifier;
    .locals 3

    const-class v0, Lcom/iflytek/cloud/IdentityVerifier;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object v2, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcom/iflytek/cloud/IdentityVerifier;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/cloud/IdentityVerifier;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v2, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    .line 4
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    sget-object p0, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getVerifier()Lcom/iflytek/cloud/IdentityVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/c;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/c;->cancel(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "IdentityVerifier cancel failed, is not running"

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public destroy()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/e;->destroy()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/d;->destroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    sput-object v2, Lcom/iflytek/cloud/IdentityVerifier;->a:Lcom/iflytek/cloud/IdentityVerifier;

    .line 6
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return v0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/IdentityListener;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/c/a/c;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/IdentityListener;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x4e2c

    goto :goto_0

    :cond_1
    const-string p1, "IdentityVerifier execute failed, is not running"

    .line 4
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/16 p1, 0x5209

    :goto_0
    return p1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/c;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startWorking(Lcom/iflytek/cloud/IdentityListener;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-nez v0, :cond_0

    const/16 p1, 0x5209

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/c/a/c;->startWorking(Lcom/iflytek/cloud/IdentityListener;)I

    move-result p1

    return p1
.end method

.method public stopWrite(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/c;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/c/a/c;->stopWrite(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "IdentityVerifier stopListening failed, is not running"

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/c;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVerifierImpl is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mVerifierImpl.isWorking() is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    invoke-virtual {v1}, Lcom/iflytek/cloud/c/a/c;->isWorking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/IdentityVerifier;->b:Lcom/iflytek/cloud/c/a/c;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/cloud/c/a/c;->writeData(Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result p1

    return p1

    :cond_1
    const-string p1, "IdentityVerifier writeAudio failed, is not running"

    .line 4
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/16 p1, 0x520c

    return p1
.end method
