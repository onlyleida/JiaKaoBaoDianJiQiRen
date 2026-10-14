.class final Lcom/iflytek/cloud/c/a/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/util/FileDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/util/FileDownloadListener;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:Landroid/os/Handler;

.field final synthetic h:Lcom/iflytek/cloud/c/a/k;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/c/a/k;ZLcom/iflytek/cloud/util/FileDownloadListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$a;->h:Lcom/iflytek/cloud/c/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$a;->a:Lcom/iflytek/cloud/util/FileDownloadListener;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/iflytek/cloud/c/a/k$a;->b:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/c/a/k$a;->c:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/iflytek/cloud/c/a/k$a;->d:I

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/iflytek/cloud/c/a/k$a;->e:I

    .line 7
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/k$a;->f:Z

    .line 8
    new-instance p1, Lcom/iflytek/cloud/c/a/k$a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/iflytek/cloud/c/a/k$a$a;-><init>(Lcom/iflytek/cloud/c/a/k$a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    .line 9
    iput-boolean p2, p0, Lcom/iflytek/cloud/c/a/k$a;->f:Z

    .line 10
    iput-object p3, p0, Lcom/iflytek/cloud/c/a/k$a;->a:Lcom/iflytek/cloud/util/FileDownloadListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/k$a;)Lcom/iflytek/cloud/util/FileDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/c/a/k$a;->a:Lcom/iflytek/cloud/util/FileDownloadListener;

    return-object p0
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V
    .locals 3

    const-string v0, "DownloadonFinish"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompleted:filePath:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-boolean p2, p0, Lcom/iflytek/cloud/c/a/k$a;->f:Z

    if-nez p2, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/k$a;->h:Lcom/iflytek/cloud/c/a/k;

    invoke-static {p2}, Lcom/iflytek/cloud/c/a/k;->d(Lcom/iflytek/cloud/c/a/k;)Lcom/iflytek/cloud/msc/util/b;

    move-result-object p2

    const-string v0, "ivw_config_path"

    invoke-virtual {p2, v0, p1}, Lcom/iflytek/cloud/msc/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/k$a;->h:Lcom/iflytek/cloud/c/a/k;

    invoke-static {p2}, Lcom/iflytek/cloud/c/a/k;->d(Lcom/iflytek/cloud/c/a/k;)Lcom/iflytek/cloud/msc/util/b;

    move-result-object p2

    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a;->h:Lcom/iflytek/cloud/c/a/k;

    .line 7
    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k;->d(Lcom/iflytek/cloud/c/a/k;)Lcom/iflytek/cloud/msc/util/b;

    move-result-object v0

    const-string v2, "cfg_threstemp"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cfg_threshold"

    .line 8
    invoke-virtual {p2, v1, v0}, Lcom/iflytek/cloud/msc/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/k$a;->h:Lcom/iflytek/cloud/c/a/k;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/iflytek/cloud/c/a/k;->a(Lcom/iflytek/cloud/c/a/k;Z)V

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompleted:errorcode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public onProgress(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "DownloadonStart"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onStart"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k$a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
