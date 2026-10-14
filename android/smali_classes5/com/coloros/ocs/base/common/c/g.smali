.class public Lcom/coloros/ocs/base/common/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/common/c/g$a;,
        Lcom/coloros/ocs/base/common/c/g$b;,
        Lcom/coloros/ocs/base/common/c/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Looper;

.field private c:Lg/b/a/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/b/a/a/e/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/coloros/ocs/base/common/c/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/g$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/coloros/ocs/base/common/c/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/g$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/coloros/ocs/base/common/c/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/g<",
            "TT;>.c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lg/b/a/a/e/b;Lcom/coloros/ocs/base/common/c/g$b;Lcom/coloros/ocs/base/common/c/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lg/b/a/a/e/b<",
            "TT;>;",
            "Lcom/coloros/ocs/base/common/c/g$b<",
            "TT;>;",
            "Lcom/coloros/ocs/base/common/c/g$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/coloros/ocs/base/common/c/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/c/g;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/g;->b:Landroid/os/Looper;

    .line 4
    iput-object p2, p0, Lcom/coloros/ocs/base/common/c/g;->c:Lg/b/a/a/e/b;

    .line 5
    iput-object p3, p0, Lcom/coloros/ocs/base/common/c/g;->e:Lcom/coloros/ocs/base/common/c/g$b;

    .line 6
    iput-object p4, p0, Lcom/coloros/ocs/base/common/c/g;->f:Lcom/coloros/ocs/base/common/c/g$a;

    .line 7
    new-instance p1, Lcom/coloros/ocs/base/common/c/g$c;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/c/g;->b:Landroid/os/Looper;

    invoke-direct {p1, p0, p2}, Lcom/coloros/ocs/base/common/c/g$c;-><init>(Lcom/coloros/ocs/base/common/c/g;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/g;->g:Lcom/coloros/ocs/base/common/c/g$c;

    return-void
.end method

.method static synthetic a(Lcom/coloros/ocs/base/common/c/g;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/g;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/b/a/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/g;->e:Lcom/coloros/ocs/base/common/c/g$b;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/g;->a:Ljava/lang/String;

    const-string v0, "notifier is not null "

    invoke-static {p1, v0}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/g;->e:Lcom/coloros/ocs/base/common/c/g$b;

    iget-object p0, p0, Lcom/coloros/ocs/base/common/c/g;->c:Lg/b/a/a/e/b;

    invoke-interface {p1, p0}, Lcom/coloros/ocs/base/common/c/g$b;->a(Lg/b/a/a/e/b;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/g;->f:Lcom/coloros/ocs/base/common/c/g$a;

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/coloros/ocs/base/common/c/g;->c:Lg/b/a/a/e/b;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/e/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/coloros/ocs/base/common/c/g$a;->a(Lg/b/a/a/e/b;ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Lcom/coloros/ocs/base/common/c/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/c/g$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/g;->f:Lcom/coloros/ocs/base/common/c/g$a;

    return-object v0
.end method

.method public c()Lg/b/a/a/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/b/a/a/e/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/g;->c:Lg/b/a/a/e/b;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/coloros/ocs/base/common/c/g;->d:I

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    iput v0, p1, Landroid/os/Message;->what:I

    .line 4
    iget v0, p0, Lcom/coloros/ocs/base/common/c/g;->d:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 5
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/g;->g:Lcom/coloros/ocs/base/common/c/g$c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
