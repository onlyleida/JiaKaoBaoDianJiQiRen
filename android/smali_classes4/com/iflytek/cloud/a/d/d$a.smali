.class Lcom/iflytek/cloud/a/d/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/msc/util/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/a/d/d;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/a/d/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/d$a;->a:Lcom/iflytek/cloud/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/msc/util/i;[B)V
    .locals 3

    .line 1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "netval"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/d$a;->a:Lcom/iflytek/cloud/a/d/d;

    invoke-static {v1}, Lcom/iflytek/cloud/a/d/d;->a(Lcom/iflytek/cloud/a/d/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/b;->a(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/b;

    move-result-object v1

    const-string v2, "ivw_netval"

    invoke-virtual {v1, v2, p1}, Lcom/iflytek/cloud/msc/util/b;->b(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "ret"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "sid"

    .line 8
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query ivw res sid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/d$a;->a:Lcom/iflytek/cloud/a/d/d;

    invoke-static {v0}, Lcom/iflytek/cloud/a/d/d;->b(Lcom/iflytek/cloud/a/d/d;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    .line 12
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/d$a;->a:Lcom/iflytek/cloud/a/d/d;

    invoke-static {p2}, Lcom/iflytek/cloud/a/d/d;->b(Lcom/iflytek/cloud/a/d/d;)Lcom/iflytek/cloud/RequestListener;

    move-result-object p2

    const/16 v1, 0x4e21

    invoke-interface {p2, v1, v0}, Lcom/iflytek/cloud/RequestListener;->onEvent(ILandroid/os/Bundle;)V

    .line 14
    :cond_0
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/d/d$a;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/d$a;->a:Lcom/iflytek/cloud/a/d/d;

    invoke-static {p1}, Lcom/iflytek/cloud/a/d/d;->b(Lcom/iflytek/cloud/a/d/d;)Lcom/iflytek/cloud/RequestListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/d$a;->a:Lcom/iflytek/cloud/a/d/d;

    invoke-static {p1}, Lcom/iflytek/cloud/a/d/d;->b(Lcom/iflytek/cloud/a/d/d;)Lcom/iflytek/cloud/RequestListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/iflytek/cloud/RequestListener;->onBufferReceived([B)V

    :cond_2
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/d/d$a;->onError(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 19
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x4e24

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/d/d$a;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :goto_1
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query resource error. errorcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "query resource succeed"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/d$a;->a:Lcom/iflytek/cloud/a/d/d;

    invoke-static {v0}, Lcom/iflytek/cloud/a/d/d;->b(Lcom/iflytek/cloud/a/d/d;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/d$a;->a:Lcom/iflytek/cloud/a/d/d;

    invoke-static {v0}, Lcom/iflytek/cloud/a/d/d;->b(Lcom/iflytek/cloud/a/d/d;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/RequestListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1
    return-void
.end method
