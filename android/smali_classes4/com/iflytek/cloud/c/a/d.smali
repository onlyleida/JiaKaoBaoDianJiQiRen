.class public Lcom/iflytek/cloud/c/a/d;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/c/a/d$a;
    }
.end annotation


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/f/e;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/d;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic b(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic c(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic d(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic e(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic f(Lcom/iflytek/cloud/c/a/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/iflytek/cloud/c/a/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/c/a/d;->e:Z

    return p0
.end method


# virtual methods
.method public generatePassword(I)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    const-string v6, "023456789"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, p1, -0x1

    if-ge v7, v8, :cond_3

    :goto_1
    move-object v8, v0

    .line 5
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int v8, v8, v9

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPasswordList(Lcom/iflytek/cloud/SpeechListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/iflytek/cloud/DataDownloader;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/DataDownloader;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/DataDownloader;->downloadData(Lcom/iflytek/cloud/SpeechListener;)I

    return-void
.end method

.method public isListening()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v0

    return v0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SpeechListener;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v2, "cmd"

    invoke-virtual {v1, v2, p1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "auth_id"

    invoke-virtual {p1, v1, p2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/iflytek/cloud/a/c/a;

    iget-object p2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    const-string v1, "manager"

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/iflytek/cloud/a/c/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 5
    iget-object p2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    new-instance v1, Lcom/iflytek/cloud/a/c/a$a;

    invoke-direct {v1, p3}, Lcom/iflytek/cloud/a/c/a$a;-><init>(Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {p1, p2, v1}, Lcom/iflytek/cloud/a/c/a;->a(Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/a/c/a$a;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/16 p2, 0x5207

    .line 6
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x5207

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result p2

    .line 8
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    move p1, p2

    .line 9
    :goto_0
    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public startListening(Lcom/iflytek/cloud/VerifierListener;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/cloud/c/a/d;->e:Z

    .line 3
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v4, "isv_interrupt_error"

    invoke-virtual {v3, v4, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    .line 5
    :cond_0
    new-instance v2, Lcom/iflytek/cloud/a/c/b;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v5, "verify"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/iflytek/cloud/a/c/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 6
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/c/a/d;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 7
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/c/b;

    new-instance v3, Lcom/iflytek/cloud/c/a/d$a;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/cloud/c/a/d$a;-><init>(Lcom/iflytek/cloud/c/a/d;Lcom/iflytek/cloud/VerifierListener;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/c/b;->a(Lcom/iflytek/cloud/VerifierListener;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/16 v1, 0x5207

    .line 8
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    .line 10
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public stopListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/c/b;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/c/b;->e()Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeAudio([BII)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-nez v1, :cond_0

    const-string p1, "writeAudio error, no active session."

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/16 p1, 0x520c

    .line 4
    monitor-exit v0

    return p1

    :cond_0
    const/16 v1, 0x277d

    if-eqz p1, :cond_4

    .line 5
    array-length v2, p1

    if-gtz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_2

    const-string p1, "writeAudio error,buffer length < length."

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return v1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/c/b;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/c/b;->getAudioSource()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 p1, 0x277a

    .line 10
    monitor-exit v0

    return p1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/c/b;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iflytek/cloud/a/c/b;->onRecordBuffer([BII)V

    const/4 p1, 0x0

    .line 12
    monitor-exit v0

    return p1

    :cond_4
    :goto_0
    const-string p1, "writeAudio error,buffer is null."

    .line 13
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 14
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
