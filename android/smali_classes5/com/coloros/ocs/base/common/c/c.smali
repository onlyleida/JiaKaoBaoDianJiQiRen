.class public abstract Lcom/coloros/ocs/base/common/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/c/a$c;",
        "R:",
        "Lcom/coloros/ocs/base/common/c/c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/coloros/ocs/base/common/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field c:Lcom/coloros/ocs/base/common/c/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private d:Lcom/coloros/ocs/base/common/c/j;

.field private e:Lg/b/a/a/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/c/a;Lcom/coloros/ocs/base/common/c/a$c;Lg/b/a/a/d/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/ocs/base/common/c/a<",
            "TO;>;TO;",
            "Lg/b/a/a/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    .line 2
    invoke-static {p1, v0}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 3
    invoke-static {p2, v0}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/c;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lg/b/a/a/c/a;->a(Landroid/content/Context;)V

    .line 6
    iput-object p2, p0, Lcom/coloros/ocs/base/common/c/c;->b:Lcom/coloros/ocs/base/common/c/a;

    .line 7
    iput-object p3, p0, Lcom/coloros/ocs/base/common/c/c;->c:Lcom/coloros/ocs/base/common/c/a$c;

    .line 8
    iput-object p4, p0, Lcom/coloros/ocs/base/common/c/c;->e:Lg/b/a/a/d/a;

    .line 9
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/c/j;->b(Landroid/content/Context;)Lcom/coloros/ocs/base/common/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/c;->d:Lcom/coloros/ocs/base/common/c/j;

    .line 10
    iget-object p2, p0, Lcom/coloros/ocs/base/common/c/c;->e:Lg/b/a/a/d/a;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/c/j;->g(Lcom/coloros/ocs/base/common/c/c;Lg/b/a/a/d/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/ocs/base/common/c/f;)Lcom/coloros/ocs/base/common/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/c/f;",
            ")TR;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Lcom/coloros/ocs/base/common/c/c;->b(Lcom/coloros/ocs/base/common/c/f;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/c/c;

    return-object p0
.end method

.method public b(Lcom/coloros/ocs/base/common/c/f;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/c/f;",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/c;->d:Lcom/coloros/ocs/base/common/c/j;

    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/ocs/base/common/c/j;->e(Lcom/coloros/ocs/base/common/c/c;Lcom/coloros/ocs/base/common/c/f;Landroid/os/Handler;)V

    return-object p0
.end method

.method protected c(Landroid/os/Looper;Lcom/coloros/ocs/base/common/c/g$b;Lcom/coloros/ocs/base/common/c/g$a;)Lg/b/a/a/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Looper;",
            "Lcom/coloros/ocs/base/common/c/g$b<",
            "TTResult;>;",
            "Lcom/coloros/ocs/base/common/c/g$a<",
            "TTResult;>;)",
            "Lg/b/a/a/e/a<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "color doRegisterListener"

    .line 1
    invoke-static {v0}, Lg/b/a/a/c/a;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lg/b/a/a/e/b;

    invoke-direct {v0}, Lg/b/a/a/e/b;-><init>()V

    .line 3
    new-instance v1, Lcom/coloros/ocs/base/common/c/g;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/coloros/ocs/base/common/c/g;-><init>(Landroid/os/Looper;Lg/b/a/a/e/b;Lcom/coloros/ocs/base/common/c/g$b;Lcom/coloros/ocs/base/common/c/g$a;)V

    .line 4
    invoke-static {p0, v1}, Lcom/coloros/ocs/base/common/c/j;->f(Lcom/coloros/ocs/base/common/c/c;Lcom/coloros/ocs/base/common/c/g;)V

    return-object v0
.end method

.method protected d()Lcom/coloros/ocs/base/common/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/c/a<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/c;->b:Lcom/coloros/ocs/base/common/c/a;

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/coloros/ocs/base/common/c/j;->i(Lcom/coloros/ocs/base/common/c/c;)Z

    move-result v0

    return v0
.end method
