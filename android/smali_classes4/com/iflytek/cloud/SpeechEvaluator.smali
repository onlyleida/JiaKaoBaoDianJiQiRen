.class public Lcom/iflytek/cloud/SpeechEvaluator;
.super Lcom/iflytek/cloud/a/f/d;
.source "SourceFile"


# static fields
.field private static a:Lcom/iflytek/cloud/SpeechEvaluator;


# instance fields
.field private b:Lcom/iflytek/cloud/c/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/d;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    .line 3
    new-instance p2, Lcom/iflytek/cloud/c/a/e;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/c/a/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    return-void
.end method

.method public static createEvaluator(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechEvaluator;
    .locals 2

    .line 1
    sget-object p1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    sget-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/iflytek/cloud/SpeechEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/SpeechEvaluator;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    .line 4
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object p0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getEvaluator()Lcom/iflytek/cloud/SpeechEvaluator;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/e;->isEvaluating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/e;->cancel(Z)V

    :cond_0
    return-void
.end method

.method public destroy()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

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
    sput-object v2, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

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

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEvaluating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/e;->isEvaluating()Z

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

.method public startEvaluating(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    if-nez v0, :cond_0

    const/16 p1, 0x5209

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/c/a/e;->startEvaluating(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I

    move-result p1

    return p1
.end method

.method public startEvaluating([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    if-nez v0, :cond_0

    const/16 p1, 0x5209

    return p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/c/a/e;->startEvaluating([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I

    move-result p1

    return p1
.end method

.method public stopEvaluating()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/e;->isEvaluating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/e;->stopEvaluating()V

    goto :goto_0

    :cond_0
    const-string v0, "SpeechEvaluator stopEvaluating failed, is not running"

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeAudio([BII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/e;->isEvaluating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/c/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/c/a/e;->writeAudio([BII)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "SpeechEvaluator writeAudio failed, is not running"

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
