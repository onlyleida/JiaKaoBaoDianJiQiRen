.class Lcom/iflytek/cloud/record/c$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/record/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/record/c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/record/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {p1}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {p1}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/iflytek/cloud/record/c$c;->a()V

    .line 4
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {p1, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$c;)Lcom/iflytek/cloud/record/c$c;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/iflytek/cloud/record/c$c;->a(III)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {p1}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {p1}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/iflytek/cloud/record/c$c;->b()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {p1}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {p1}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/iflytek/cloud/record/c$c;->c()V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/record/c$c;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 13
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {p1, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$c;)Lcom/iflytek/cloud/record/c$c;

    :cond_5
    :goto_0
    return-void
.end method
