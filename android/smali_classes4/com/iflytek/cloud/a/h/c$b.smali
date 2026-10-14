.class Lcom/iflytek/cloud/a/h/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/record/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/a/h/c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/a/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object v0

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x5

    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->s(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->s(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/record/c;->k()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$b;->a:Lcom/iflytek/cloud/a/h/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    return-void
.end method
