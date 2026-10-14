.class Lcom/iflytek/cloud/c/a/c$a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/c/a/c$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/c/a/c$a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/c$a;->a(Lcom/iflytek/cloud/c/a/c$a;)Lcom/iflytek/cloud/IdentityListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/c$a;->a(Lcom/iflytek/cloud/c/a/c$a;)Lcom/iflytek/cloud/IdentityListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/IdentityListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/c$a;->a(Lcom/iflytek/cloud/c/a/c$a;)Lcom/iflytek/cloud/IdentityListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/cloud/IdentityResult;

    .line 6
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/iflytek/cloud/IdentityListener;->onResult(Lcom/iflytek/cloud/IdentityResult;Z)V

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/c$a;->b(Lcom/iflytek/cloud/c/a/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    iget-object v0, v0, Lcom/iflytek/cloud/c/a/c$a;->d:Lcom/iflytek/cloud/c/a/c;

    const-string v1, "ui_frs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/c;->b(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    invoke-static {v0, v3}, Lcom/iflytek/cloud/c/a/c$a;->a(Lcom/iflytek/cloud/c/a/c$a;Z)Z

    .line 11
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    iget-object v0, v0, Lcom/iflytek/cloud/c/a/c$a;->d:Lcom/iflytek/cloud/c/a/c;

    const-string v1, "ui_lrs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/c;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a$a;->a:Lcom/iflytek/cloud/c/a/c$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/c$a;->a(Lcom/iflytek/cloud/c/a/c$a;)Lcom/iflytek/cloud/IdentityListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/IdentityListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 14
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
