.class Lcom/iflytek/cloud/c/a/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/RequestListener;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Z

.field private f:Landroid/os/Handler;

.field final synthetic g:Lcom/iflytek/cloud/c/a/k;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/c/a/k;ZLcom/iflytek/cloud/RequestListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$c;->g:Lcom/iflytek/cloud/c/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$c;->a:Lcom/iflytek/cloud/RequestListener;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/iflytek/cloud/c/a/k$c;->b:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/c/a/k$c;->c:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/iflytek/cloud/c/a/k$c;->d:I

    .line 6
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/k$c;->e:Z

    .line 7
    new-instance p1, Lcom/iflytek/cloud/c/a/k$c$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/iflytek/cloud/c/a/k$c$a;-><init>(Lcom/iflytek/cloud/c/a/k$c;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$c;->f:Landroid/os/Handler;

    .line 8
    iput-boolean p2, p0, Lcom/iflytek/cloud/c/a/k$c;->e:Z

    .line 9
    iput-object p3, p0, Lcom/iflytek/cloud/c/a/k$c;->a:Lcom/iflytek/cloud/RequestListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/k$c;)Lcom/iflytek/cloud/RequestListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/c/a/k$c;->a:Lcom/iflytek/cloud/RequestListener;

    return-object p0
.end method


# virtual methods
.method public onBufferReceived([B)V
    .locals 9

    const-string v0, "onCompleted"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/iflytek/cloud/c/a/k$c;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k$c;->g:Lcom/iflytek/cloud/c/a/k;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/k;->a(Lcom/iflytek/cloud/c/a/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "dlurl"

    .line 5
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "md5"

    .line 6
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/iflytek/cloud/c/a/k$c;->g:Lcom/iflytek/cloud/c/a/k;

    invoke-static {v3}, Lcom/iflytek/cloud/c/a/k;->c(Lcom/iflytek/cloud/c/a/k;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/iflytek/cloud/msc/util/FileUtil;->getResFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto download path:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/iflytek/cloud/c/a/k$c;->g:Lcom/iflytek/cloud/c/a/k;

    iget-boolean v7, p0, Lcom/iflytek/cloud/c/a/k$c;->e:Z

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/iflytek/cloud/c/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/cloud/util/FileDownloadListener;)I

    .line 12
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k$c;->g:Lcom/iflytek/cloud/c/a/k;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/k;->d(Lcom/iflytek/cloud/c/a/k;)Lcom/iflytek/cloud/msc/util/b;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "cfg_threstemp"

    :try_start_1
    const-string v4, "thresholder"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/cloud/msc/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e2e

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/c/a/k$c;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    .line 14
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k$c;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$c;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    const-string v0, "RequestResult"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$c;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$c;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "RequestResult"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$c;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/k$c;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
