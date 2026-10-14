.class public Lcom/iflytek/cloud/VoiceWakeuper;
.super Lcom/iflytek/cloud/a/f/d;
.source "SourceFile"


# static fields
.field private static a:Lcom/iflytek/cloud/VoiceWakeuper;


# instance fields
.field private b:Lcom/iflytek/cloud/c/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/d;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    .line 3
    new-instance p2, Lcom/iflytek/cloud/c/a/k;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/c/a/k;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    return-void
.end method

.method public static declared-synchronized createWakeuper(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/VoiceWakeuper;
    .locals 3

    const-class v0, Lcom/iflytek/cloud/VoiceWakeuper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object v2, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcom/iflytek/cloud/VoiceWakeuper;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/cloud/VoiceWakeuper;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v2, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    .line 4
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    sget-object p0, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;
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

.method public static getWakeuper()Lcom/iflytek/cloud/VoiceWakeuper;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/k;->cancel(Z)V

    return-void
.end method

.method public destroy()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/k;->destroy()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    :goto_0
    invoke-static {}, Lcom/iflytek/cloud/a/d/e/a;->b()Lcom/iflytek/cloud/a/d/e/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/a;->a()V

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/d;->destroy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 7
    :try_start_0
    sput-object v2, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "Destory ivw engine."

    .line 10
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string v2, "engine_destroy"

    const-string v3, "engine_destroy=ivw"

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechUtility;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return v0
.end method

.method public downloadResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/c/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/cloud/util/FileDownloadListener;)I

    move-result p1

    return p1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_3

    const-string v0, "aimic_on_"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/a/d/e/a;->b()Lcom/iflytek/cloud/a/d/e/a;

    move-result-object v1

    const-string v2, "aimic_on_channel"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lcom/iflytek/cloud/a/d/e/a;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "aimic_on_version"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcom/iflytek/cloud/a/d/e/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/16 v0, 0x9

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/a/d/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string p1, "aimic is null !"

    .line 9
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 10
    :cond_3
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isListening()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/k;->isListening()Z

    move-result v0

    return v0
.end method

.method public queryResource(Ljava/lang/String;Lcom/iflytek/cloud/RequestListener;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/iflytek/cloud/c/a/k;->a(Ljava/lang/String;ZLcom/iflytek/cloud/RequestListener;)I

    move-result p1

    return p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "aimic_on_"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/a/d/e/a;->b()Lcom/iflytek/cloud/a/d/e/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "aimic_on_reset"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/a;->e()I

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/a/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startListening(Lcom/iflytek/cloud/WakeuperListener;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/c/a/k;->startListening(Lcom/iflytek/cloud/WakeuperListener;)I

    move-result p1

    return p1
.end method

.method public stopListening()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/k;->stopListening()V

    return-void
.end method

.method public writeAudio([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/k;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->b:Lcom/iflytek/cloud/c/a/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/c/a/k;->writeAudio([BII)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "VoiceWakeup writeAudio failed, is not running"

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/16 p1, 0x520c

    return p1
.end method
