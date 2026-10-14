.class Lcom/coloros/ocs/base/common/c/h;
.super Lcom/coloros/ocs/base/common/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/coloros/ocs/base/common/c/b;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/b;-><init>(Landroid/os/Looper;)V

    .line 2
    const-class p1, Lcom/coloros/ocs/base/common/c/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/h;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/coloros/ocs/base/common/c/h;->b:Lcom/coloros/ocs/base/common/c/b;

    return-void
.end method

.method static a(Lcom/coloros/ocs/base/common/c/b;)Lcom/coloros/ocs/base/common/c/h;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "base_client"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v1, Lcom/coloros/ocs/base/common/c/h;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/coloros/ocs/base/common/c/h;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/c/b;)V

    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object v1, p0, Lcom/coloros/ocs/base/common/c/h;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "base client handler what "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v0, v2, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/h;->b:Lcom/coloros/ocs/base/common/c/b;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/b;->o()V

    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/h;->b:Lcom/coloros/ocs/base/common/c/b;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/b;->q()V

    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/h;->b:Lcom/coloros/ocs/base/common/c/b;

    .line 6
    iget-object v0, p1, Lcom/coloros/ocs/base/common/c/b;->l:Lg/b/a/a/b;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/coloros/ocs/base/common/c/b;->l:Lg/b/a/a/b;

    .line 8
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :try_start_0
    sget-object v0, Lcom/coloros/ocs/base/common/c/b;->n:Ljava/lang/String;

    const-string v1, "thread handle authenticate"

    invoke-static {v0, v1}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Lcom/coloros/ocs/base/common/c/b;->l:Lg/b/a/a/b;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/b;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.0.1"

    new-instance v3, Lcom/coloros/ocs/base/common/c/b$a;

    invoke-direct {v3, p1}, Lcom/coloros/ocs/base/common/c/b$a;-><init>(Lcom/coloros/ocs/base/common/c/b;)V

    invoke-interface {v0, v1, v2, v3}, Lg/b/a/a/b;->g(Ljava/lang/String;Ljava/lang/String;Lg/b/a/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 12
    sget-object v0, Lcom/coloros/ocs/base/common/c/b;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the exception that service broker authenticates is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lg/b/a/a/c/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/h;->b:Lcom/coloros/ocs/base/common/c/b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 14
    sget-object v2, Lcom/coloros/ocs/base/common/c/b;->n:Ljava/lang/String;

    const-string v4, "onFailed time"

    invoke-static {v2, v4}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v4, v0, Lcom/coloros/ocs/base/common/c/b;->e:Lcom/coloros/ocs/base/common/c/b$c;

    if-eqz v4, :cond_5

    .line 16
    iget-object v4, v0, Lcom/coloros/ocs/base/common/c/b;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/coloros/ocs/base/common/c/b;->e:Lcom/coloros/ocs/base/common/c/b$c;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 17
    iput-object v1, v0, Lcom/coloros/ocs/base/common/c/b;->l:Lg/b/a/a/b;

    .line 18
    :cond_5
    iput v3, v0, Lcom/coloros/ocs/base/common/c/b;->a:I

    .line 19
    invoke-static {p1}, Lcom/coloros/ocs/base/common/c/b;->n(I)Lcom/coloros/ocs/base/common/CapabilityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/ocs/base/common/c/b;->c:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "connect failed , error code is "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3ed

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3ee

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3ef

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3f0

    if-ne p1, v1, :cond_7

    .line 21
    :cond_6
    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/common/c/b;->h(I)V

    .line 22
    iget-object p1, v0, Lcom/coloros/ocs/base/common/c/b;->g:Lcom/coloros/ocs/base/common/c/l;

    if-eqz p1, :cond_7

    .line 23
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/c/l;->a()V

    :cond_7
    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/h;->b:Lcom/coloros/ocs/base/common/c/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 25
    sget-object v3, Lcom/coloros/ocs/base/common/c/b;->n:Ljava/lang/String;

    const-string v4, "onAuthenticateSucceed"

    invoke-static {v3, v4}, Lg/b/a/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput v2, v0, Lcom/coloros/ocs/base/common/c/b;->a:I

    .line 27
    iput-object p1, v0, Lcom/coloros/ocs/base/common/c/b;->c:Lcom/coloros/ocs/base/common/CapabilityInfo;

    const-string p1, "handleAuthenticateSuccess"

    .line 28
    invoke-static {v3, p1}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, v0, Lcom/coloros/ocs/base/common/c/b;->i:Lcom/coloros/ocs/base/common/c/i;

    if-nez p1, :cond_9

    .line 30
    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/common/c/b;->i(Landroid/os/Handler;)V

    .line 31
    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0x64

    .line 32
    iput v1, p1, Landroid/os/Message;->what:I

    .line 33
    iget-object v1, v0, Lcom/coloros/ocs/base/common/c/b;->i:Lcom/coloros/ocs/base/common/c/i;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/c/b;->g()V

    return-void
.end method
