.class Lcom/coloros/ocs/base/common/c/i;
.super Lcom/coloros/ocs/base/common/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/coloros/ocs/base/common/c/h;

.field c:Lcom/coloros/ocs/base/common/c/f;

.field d:Lcom/coloros/ocs/base/common/c/e;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/c/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/b;-><init>(Landroid/os/Looper;)V

    .line 2
    const-class p1, Lcom/coloros/ocs/base/common/c/i;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/i;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/coloros/ocs/base/common/c/i;->b:Lcom/coloros/ocs/base/common/c/h;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object v1, p0, Lcom/coloros/ocs/base/common/c/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "business handler what "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x64

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/i;->d:Lcom/coloros/ocs/base/common/c/e;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/coloros/ocs/base/common/a;

    invoke-direct {v1, p1}, Lcom/coloros/ocs/base/common/a;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/coloros/ocs/base/common/c/e;->a(Lcom/coloros/ocs/base/common/a;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 7
    iput v2, p1, Landroid/os/Message;->what:I

    .line 8
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/i;->b:Lcom/coloros/ocs/base/common/c/h;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/i;->c:Lcom/coloros/ocs/base/common/c/f;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/c/f;->onConnectionSucceed()V

    .line 11
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 12
    iput v2, p1, Landroid/os/Message;->what:I

    .line 13
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/i;->b:Lcom/coloros/ocs/base/common/c/h;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
