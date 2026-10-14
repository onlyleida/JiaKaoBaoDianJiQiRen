.class final Lcom/iflytek/cloud/c/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/VerifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/VerifierListener;

.field private b:Landroid/os/Handler;

.field final synthetic c:Lcom/iflytek/cloud/c/a/d;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/c/a/d;Lcom/iflytek/cloud/VerifierListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/d$a;->c:Lcom/iflytek/cloud/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/d$a;->a:Lcom/iflytek/cloud/VerifierListener;

    .line 3
    new-instance p1, Lcom/iflytek/cloud/c/a/d$a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/iflytek/cloud/c/a/d$a$a;-><init>(Lcom/iflytek/cloud/c/a/d$a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lcom/iflytek/cloud/c/a/d$a;->a:Lcom/iflytek/cloud/VerifierListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/d$a;)Lcom/iflytek/cloud/VerifierListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/c/a/d$a;->a:Lcom/iflytek/cloud/VerifierListener;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->c:Lcom/iflytek/cloud/c/a/d;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/d;->a(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "isv_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/d$a;->c:Lcom/iflytek/cloud/c/a/d;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/d;->b(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v1

    check-cast v1, Lcom/iflytek/cloud/a/c/b;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/c/b;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/iflytek/cloud/msc/util/FileUtil;->saveFile(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/d$a;->c:Lcom/iflytek/cloud/c/a/d;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/d;->c(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v3, "audio_format"

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lcom/iflytek/cloud/c/a/d$a;->c:Lcom/iflytek/cloud/c/a/d;

    invoke-static {v3}, Lcom/iflytek/cloud/c/a/d;->e(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/c/a/d$a;->c:Lcom/iflytek/cloud/c/a/d;

    invoke-static {v4}, Lcom/iflytek/cloud/c/a/d;->d(Lcom/iflytek/cloud/c/a/d;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v4

    iget v4, v4, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    const-string v5, "sample_rate"

    invoke-virtual {v3, v5, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v3

    .line 7
    invoke-static {v1, v0, v3}, Lcom/iflytek/cloud/msc/util/FileUtil;->formatPcm(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->c:Lcom/iflytek/cloud/c/a/d;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/d;->f(Lcom/iflytek/cloud/c/a/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/c/a/d$a;->c:Lcom/iflytek/cloud/c/a/d;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/d;->g(Lcom/iflytek/cloud/c/a/d;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public onBeginOfSpeech()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/d$a;->a()V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/VerifierResult;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/d$a;->a()V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onVolumeChanged(I[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/d$a;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
