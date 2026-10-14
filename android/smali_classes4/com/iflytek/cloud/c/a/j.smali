.class public Lcom/iflytek/cloud/c/a/j;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/c/a/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/f/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/e;->cancel(Z)V

    return-void
.end method

.method public destroy()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/e;->destroy()Z

    move-result v0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isUnderstanding()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public understandText(Ljava/lang/String;Lcom/iflytek/cloud/TextUnderstanderListener;)I
    .locals 4

    const-string v0, "result_type"

    const-string v1, "nlp_version"

    const-string v2, "asr_sch"

    .line 1
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/c/a/j;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    .line 2
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/cloud/c/a/j;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/c/a/j;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {}, Lcom/iflytek/msc/MSC;->isIflyVersion()Z

    move-result v2
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const-string v2, "3.0"

    goto :goto_0

    :cond_1
    const-string v2, "2.0"

    .line 5
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/cloud/c/a/j;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/c/a/j;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "json"

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/c/a/j;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x520d

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Lcom/iflytek/cloud/a/g/b;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v3, "textunderstand"

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/cloud/a/g/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 10
    new-instance v0, Lcom/iflytek/cloud/c/a/j$a;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/cloud/c/a/j$a;-><init>(Lcom/iflytek/cloud/c/a/j;Lcom/iflytek/cloud/TextUnderstanderListener;)V

    .line 11
    iget-object p2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast p2, Lcom/iflytek/cloud/a/g/b;

    new-instance v1, Lcom/iflytek/cloud/a/f/e$a;

    invoke-direct {v1, p0, v0}, Lcom/iflytek/cloud/a/f/e$a;-><init>(Lcom/iflytek/cloud/a/f/e;Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {p2, v1, p1}, Lcom/iflytek/cloud/a/g/b;->a(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    const/16 p2, 0x5207

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x5207

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result p2

    .line 14
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    move p1, p2

    :goto_1
    return p1
.end method
