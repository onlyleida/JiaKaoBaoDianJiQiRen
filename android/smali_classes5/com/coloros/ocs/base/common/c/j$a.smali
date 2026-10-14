.class final Lcom/coloros/ocs/base/common/c/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/common/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/base/common/c/j;->g(Lcom/coloros/ocs/base/common/c/c;Lg/b/a/a/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/c/c;

.field final synthetic b:Lcom/coloros/ocs/base/common/c/d;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/c/j;Lcom/coloros/ocs/base/common/c/c;Lcom/coloros/ocs/base/common/c/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/coloros/ocs/base/common/c/j$a;->a:Lcom/coloros/ocs/base/common/c/c;

    iput-object p3, p0, Lcom/coloros/ocs/base/common/c/j$a;->b:Lcom/coloros/ocs/base/common/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/c/j$a;->a:Lcom/coloros/ocs/base/common/c/c;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/j;->d(Lcom/coloros/ocs/base/common/c/a$f;)V

    .line 2
    invoke-static {}, Lcom/coloros/ocs/base/common/c/j;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/common/c/j$a;->a:Lcom/coloros/ocs/base/common/c/c;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/ocs/base/common/c/j$a;->b:Lcom/coloros/ocs/base/common/c/d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
