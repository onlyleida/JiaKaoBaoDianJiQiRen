.class public Lcom/iflytek/cloud/DataDownloader;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/f/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public downloadData(Lcom/iflytek/cloud/SpeechListener;)I
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/iflytek/cloud/a/g/b;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v3, "download"

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/cloud/a/g/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v0, Lcom/iflytek/cloud/a/g/b;

    new-instance v1, Lcom/iflytek/cloud/a/f/e$a;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/cloud/a/f/e$a;-><init>(Lcom/iflytek/cloud/a/f/e;Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/g/b;->a(Lcom/iflytek/cloud/SpeechListener;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/16 v0, 0x5207

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x5207

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    .line 5
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    move p1, v0

    :goto_0
    return p1
.end method
