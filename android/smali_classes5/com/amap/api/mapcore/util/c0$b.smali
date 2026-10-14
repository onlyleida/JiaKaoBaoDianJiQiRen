.class Lcom/amap/api/mapcore/util/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c0;->f(Lcom/amap/api/mapcore/util/az;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/az;

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/mapcore/util/c0;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c0;Lcom/amap/api/mapcore/util/az;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/c0$b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/az;->f:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/c0$d;->c(Lcom/amap/api/mapcore/util/az;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c0;->l:Lcom/amap/api/mapcore/util/i0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i0;->a(Lcom/amap/api/mapcore/util/az;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/c0$d;->c(Lcom/amap/api/mapcore/util/az;)V

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c0;->l:Lcom/amap/api/mapcore/util/i0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i0;->a(Lcom/amap/api/mapcore/util/az;)V

    .line 10
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c0$b;->b:Z

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$b;->c:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$b;->a:Lcom/amap/api/mapcore/util/az;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/c0$d;->c(Lcom/amap/api/mapcore/util/az;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "requestDelete"

    const-string v2, "removeExcecRunnable"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
