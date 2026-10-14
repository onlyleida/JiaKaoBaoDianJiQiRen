.class Lcom/iflytek/cloud/c/a/h$a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/c/a/h$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/c/a/h$a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/h$a;->a(Lcom/iflytek/cloud/c/a/h$a;)Lcom/iflytek/cloud/TranscripterListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/h$a;->a(Lcom/iflytek/cloud/c/a/h$a;)Lcom/iflytek/cloud/TranscripterListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/TranscripterListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/h$a;->a(Lcom/iflytek/cloud/c/a/h$a;)Lcom/iflytek/cloud/TranscripterListener;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/cloud/TranscripterResult;

    .line 6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-interface {v0, v2, v3}, Lcom/iflytek/cloud/TranscripterListener;->onResult(Lcom/iflytek/cloud/TranscripterResult;Z)V

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/h$a;->b(Lcom/iflytek/cloud/c/a/h$a;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    iget-object v0, v0, Lcom/iflytek/cloud/c/a/h$a;->d:Lcom/iflytek/cloud/c/a/h;

    const-string v2, "ui_frs"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/c/a/h;->b(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/c/a/h$a;->a(Lcom/iflytek/cloud/c/a/h$a;Z)Z

    .line 11
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_9

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    iget-object v0, v0, Lcom/iflytek/cloud/c/a/h$a;->d:Lcom/iflytek/cloud/c/a/h;

    const-string v1, "ui_lrs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/h;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/h$a;->a(Lcom/iflytek/cloud/c/a/h$a;)Lcom/iflytek/cloud/TranscripterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/TranscripterListener;->onEndOfSpeech()V

    goto :goto_1

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/h$a;->a(Lcom/iflytek/cloud/c/a/h$a;)Lcom/iflytek/cloud/TranscripterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/TranscripterListener;->onBeginOfSpeech()V

    goto :goto_1

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/h$a;->a(Lcom/iflytek/cloud/c/a/h$a;)Lcom/iflytek/cloud/TranscripterListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v0, v1, v2}, Lcom/iflytek/cloud/TranscripterListener;->onVolumeChanged(I[B)V

    goto :goto_1

    .line 16
    :cond_8
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/h$a$a;->a:Lcom/iflytek/cloud/c/a/h$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/h$a;->a(Lcom/iflytek/cloud/c/a/h$a;)Lcom/iflytek/cloud/TranscripterListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/TranscripterListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 17
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
