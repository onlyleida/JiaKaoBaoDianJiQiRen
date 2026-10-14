.class final Lcom/coloros/ocs/base/common/c/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/c/b;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/coloros/ocs/base/common/c/b;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Lg/b/a/a/c/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/b;->v(Lcom/coloros/ocs/base/common/c/b;)Lcom/coloros/ocs/base/common/c/b$c;

    .line 3
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/b;->p(Lcom/coloros/ocs/base/common/c/b;)Lg/b/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/b;->p(Lcom/coloros/ocs/base/common/c/b;)Lg/b/a/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    .line 4
    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/b;->p(Lcom/coloros/ocs/base/common/c/b;)Lg/b/a/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/b;->p(Lcom/coloros/ocs/base/common/c/b;)Lg/b/a/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-static {v1}, Lcom/coloros/ocs/base/common/c/b;->m(Lcom/coloros/ocs/base/common/c/b;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/common/c/b;->e(Lcom/coloros/ocs/base/common/c/b;Lg/b/a/a/b;)Lg/b/a/a/b;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/b;->x(Lcom/coloros/ocs/base/common/c/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/b;->r(Lcom/coloros/ocs/base/common/c/b;)Lcom/coloros/ocs/base/common/CapabilityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/b;->t(Lcom/coloros/ocs/base/common/c/b;)I

    .line 9
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/b$b;->a:Lcom/coloros/ocs/base/common/c/b;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/c/b;->connect()V

    :cond_1
    return-void
.end method
