.class public Lcom/iflytek/cloud/SpeechUnderstander;
.super Lcom/iflytek/cloud/a/f/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/SpeechUnderstander$b;
    }
.end annotation


# static fields
.field protected static a:Lcom/iflytek/cloud/SpeechUnderstander;


# instance fields
.field private b:Lcom/iflytek/cloud/c/a/i;

.field private c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

.field private d:Lcom/iflytek/cloud/SpeechUnderstander$b;

.field private e:Lcom/iflytek/cloud/InitListener;

.field private f:Landroid/os/Handler;


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
    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    .line 5
    new-instance v1, Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/iflytek/cloud/SpeechUnderstander$a;-><init>(Lcom/iflytek/cloud/SpeechUnderstander;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    .line 7
    new-instance v1, Lcom/iflytek/cloud/c/a/i;

    invoke-direct {v1, p1}, Lcom/iflytek/cloud/c/a/i;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    .line 8
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechUtility;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/a/f/d$a;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/a/f/d$a;->a:Lcom/iflytek/cloud/a/f/d$a;

    if-eq v1, v2, :cond_0

    .line 11
    new-instance v0, Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 12
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/SpeechUnderstander;)Lcom/iflytek/cloud/InitListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    return-object p0
.end method

.method public static declared-synchronized createUnderstander(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechUnderstander;
    .locals 3

    const-class v0, Lcom/iflytek/cloud/SpeechUnderstander;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object v2, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcom/iflytek/cloud/SpeechUnderstander;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/cloud/SpeechUnderstander;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v2, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    .line 4
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    sget-object p0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;
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

.method public static getUnderstander()Lcom/iflytek/cloud/SpeechUnderstander;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/a/f/d$a;

    move-result-object v0

    sget-object v2, Lcom/iflytek/cloud/a/f/d$a;->a:Lcom/iflytek/cloud/a/f/d$a;

    if-eq v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    .line 7
    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    .line 8
    :cond_0
    new-instance v0, Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, p1, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    .line 12
    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_2
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/i;->a(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/SpeechUnderstander$b;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$b;->a(Lcom/iflytek/cloud/SpeechUnderstander$b;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->cancel(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    goto :goto_0

    :cond_1
    const-string v0, "SpeechUnderstander cancel failed, is not running"

    .line 5
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public destroy()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    .line 3
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/iflytek/cloud/c/a/i;->a()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/d;->destroy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    sget-object v2, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_1
    sput-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    .line 11
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return v1

    :catchall_1
    move-exception v0

    .line 12
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isUnderstanding()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
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

.method public startUnderstanding(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    const-string v1, "nlu"

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/a/f/d;->getStartMode(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/a/f/d$a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start engine mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    if-nez v0, :cond_0

    const/16 p1, 0x5209

    return p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/i;->a(Lcom/iflytek/cloud/b/a;)Z

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/c/a/i;->a(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I

    move-result p1

    return p1
.end method

.method public stopUnderstanding()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/i;->c()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/SpeechUnderstander$b;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$b;->a(Lcom/iflytek/cloud/SpeechUnderstander$b;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->stopUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    goto :goto_0

    :cond_1
    const-string v0, "SpeechUnderstander stopUnderstanding, is not understanding"

    .line 5
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeAudio([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/c/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/c/a/i;->a([BII)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->writeAudio([BII)I

    move-result p1

    return p1

    :cond_1
    const-string p1, "SpeechUnderstander writeAudio, is not understanding"

    .line 5
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/16 p1, 0x520c

    return p1
.end method
