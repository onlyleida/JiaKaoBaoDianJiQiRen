.class Lcom/iflytek/cloud/c/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/msc/util/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/c/a/b;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/c/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/b$a;->a:Lcom/iflytek/cloud/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/msc/util/i;[B)V
    .locals 1

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ret"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    const-string v0, "wfr"

    invoke-direct {p2, p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/c/a/b$a;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/b$a;->a:Lcom/iflytek/cloud/c/a/b;

    invoke-static {p1}, Lcom/iflytek/cloud/c/a/b;->a(Lcom/iflytek/cloud/c/a/b;)Lcom/iflytek/cloud/RequestListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string p1, "GetNotifyResult"

    .line 7
    invoke-static {p1, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/b$a;->a:Lcom/iflytek/cloud/c/a/b;

    invoke-static {p1}, Lcom/iflytek/cloud/c/a/b;->a(Lcom/iflytek/cloud/c/a/b;)Lcom/iflytek/cloud/RequestListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/iflytek/cloud/RequestListener;->onBufferReceived([B)V

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/c/a/b$a;->onError(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x4e24

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/c/a/b$a;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload error. please check net state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "upload succeed"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/b$a;->a:Lcom/iflytek/cloud/c/a/b;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/b;->a(Lcom/iflytek/cloud/c/a/b;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/b$a;->a:Lcom/iflytek/cloud/c/a/b;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/b;->a(Lcom/iflytek/cloud/c/a/b;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/RequestListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1
    return-void
.end method
