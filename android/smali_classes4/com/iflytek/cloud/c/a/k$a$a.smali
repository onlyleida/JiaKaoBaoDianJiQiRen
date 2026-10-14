.class Lcom/iflytek/cloud/c/a/k$a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/c/a/k$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/c/a/k$a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$a$a;->a:Lcom/iflytek/cloud/c/a/k$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a$a;->a:Lcom/iflytek/cloud/c/a/k$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k$a;->a(Lcom/iflytek/cloud/c/a/k$a;)Lcom/iflytek/cloud/util/FileDownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a$a;->a:Lcom/iflytek/cloud/c/a/k$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k$a;->a(Lcom/iflytek/cloud/c/a/k$a;)Lcom/iflytek/cloud/util/FileDownloadListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v0, v2, v1}, Lcom/iflytek/cloud/util/FileDownloadListener;->onCompleted(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a$a;->a:Lcom/iflytek/cloud/c/a/k$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k$a;->a(Lcom/iflytek/cloud/c/a/k$a;)Lcom/iflytek/cloud/util/FileDownloadListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/cloud/util/FileDownloadListener;->onCompleted(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a$a;->a:Lcom/iflytek/cloud/c/a/k$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k$a;->a(Lcom/iflytek/cloud/c/a/k$a;)Lcom/iflytek/cloud/util/FileDownloadListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/util/FileDownloadListener;->onProgress(I)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$a$a;->a:Lcom/iflytek/cloud/c/a/k$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k$a;->a(Lcom/iflytek/cloud/c/a/k$a;)Lcom/iflytek/cloud/util/FileDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/util/FileDownloadListener;->onStart()V

    .line 7
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
