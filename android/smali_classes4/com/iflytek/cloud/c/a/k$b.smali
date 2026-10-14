.class final Lcom/iflytek/cloud/c/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/WakeuperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/WakeuperListener;

.field private b:Landroid/os/Handler;

.field final synthetic c:Lcom/iflytek/cloud/c/a/k;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/c/a/k;Lcom/iflytek/cloud/WakeuperListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$b;->c:Lcom/iflytek/cloud/c/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$b;->a:Lcom/iflytek/cloud/WakeuperListener;

    .line 3
    new-instance p1, Lcom/iflytek/cloud/c/a/k$b$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/iflytek/cloud/c/a/k$b$a;-><init>(Lcom/iflytek/cloud/c/a/k$b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lcom/iflytek/cloud/c/a/k$b;->a:Lcom/iflytek/cloud/WakeuperListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/k$b;)Lcom/iflytek/cloud/WakeuperListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/c/a/k$b;->a:Lcom/iflytek/cloud/WakeuperListener;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->c:Lcom/iflytek/cloud/c/a/k;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k;->g(Lcom/iflytek/cloud/c/a/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k$b;->c:Lcom/iflytek/cloud/c/a/k;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/k;->b(Lcom/iflytek/cloud/c/a/k;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public onBeginOfSpeech()V
    .locals 4

    const-string v0, "onBeginOfSpeech"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->c:Lcom/iflytek/cloud/c/a/k;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k;->f(Lcom/iflytek/cloud/c/a/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/k$b;->c:Lcom/iflytek/cloud/c/a/k;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iflytek/cloud/c/a/k;->a(Lcom/iflytek/cloud/c/a/k;Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/k$b;->a()V

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 5
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/WakeuperResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->c:Lcom/iflytek/cloud/c/a/k;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/k;->e(Lcom/iflytek/cloud/c/a/k;)Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "keep_alive"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/k$b;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 4

    const-string v0, "onVolumeChanged"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
