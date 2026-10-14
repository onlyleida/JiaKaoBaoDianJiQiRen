.class Lcom/amap/api/mapcore/util/b7$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/b7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/b7;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b7;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b7$a;->a:Lcom/amap/api/mapcore/util/b7;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    invoke-static {}, Lcom/amap/api/mapcore/util/b7;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b7$a;->a:Lcom/amap/api/mapcore/util/b7;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/b7;->a(Lcom/amap/api/mapcore/util/b7;)Lcom/amap/api/mapcore/util/b7$b;

    move-result-object p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b7$a;->a:Lcom/amap/api/mapcore/util/b7;

    new-instance v0, Lcom/amap/api/mapcore/util/b7$b;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/b7;->e(Lcom/amap/api/mapcore/util/b7;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b7$a;->a:Lcom/amap/api/mapcore/util/b7;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/b7;->h(Lcom/amap/api/mapcore/util/b7;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b7$a;->a:Lcom/amap/api/mapcore/util/b7;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/b7;->h(Lcom/amap/api/mapcore/util/b7;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/b7$b;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/b7;->b(Lcom/amap/api/mapcore/util/b7;Lcom/amap/api/mapcore/util/b7$b;)Lcom/amap/api/mapcore/util/b7$b;

    .line 5
    :cond_2
    invoke-static {}, Lcom/amap/api/mapcore/util/q3;->a()Lcom/amap/api/mapcore/util/q3;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$a;->a:Lcom/amap/api/mapcore/util/b7;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b7;->a(Lcom/amap/api/mapcore/util/b7;)Lcom/amap/api/mapcore/util/b7$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/q3;->b(Ljava/lang/Runnable;)V

    return-void
.end method
