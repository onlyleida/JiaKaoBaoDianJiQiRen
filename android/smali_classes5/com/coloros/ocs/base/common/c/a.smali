.class public Lcom/coloros/ocs/base/common/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/common/c/a$d;,
        Lcom/coloros/ocs/base/common/c/a$a;,
        Lcom/coloros/ocs/base/common/c/a$c;,
        Lcom/coloros/ocs/base/common/c/a$b;,
        Lcom/coloros/ocs/base/common/c/a$f;,
        Lcom/coloros/ocs/base/common/c/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/c/a$c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/coloros/ocs/base/common/c/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private b:Lcom/coloros/ocs/base/common/c/a$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/c/a$f<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/ocs/base/common/c/a$a;Lcom/coloros/ocs/base/common/c/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/coloros/ocs/base/common/c/a$e;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/coloros/ocs/base/common/c/a$a<",
            "TC;TO;>;",
            "Lcom/coloros/ocs/base/common/c/a$f<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "can not construct whit the null AbstractClientBuilder"

    .line 2
    invoke-static {p2, p1}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "can not construct with the null ClientKey"

    .line 3
    invoke-static {p3, p1}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/coloros/ocs/base/common/c/a;->a:Lcom/coloros/ocs/base/common/c/a$a;

    .line 5
    iput-object p3, p0, Lcom/coloros/ocs/base/common/c/a;->b:Lcom/coloros/ocs/base/common/c/a$f;

    return-void
.end method


# virtual methods
.method public a()Lcom/coloros/ocs/base/common/c/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/c/a$a<",
            "*TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/a;->a:Lcom/coloros/ocs/base/common/c/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The ClientBuilder is null"

    invoke-static {v0, v1}, Lg/b/a/a/c/b;->c(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/a;->a:Lcom/coloros/ocs/base/common/c/a$a;

    return-object v0
.end method

.method public b()Lcom/coloros/ocs/base/common/c/a$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/c/a$f<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/a;->b:Lcom/coloros/ocs/base/common/c/a$f;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with null clientKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
