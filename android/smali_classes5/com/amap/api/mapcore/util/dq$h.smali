.class Lcom/amap/api/mapcore/util/dq$h;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/amap/api/mapcore/util/dq$g;

    if-eqz v1, :cond_2

    .line 2
    check-cast v0, Lcom/amap/api/mapcore/util/dq$g;

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v0, Lcom/amap/api/mapcore/util/dq$g;->a:Lcom/amap/api/mapcore/util/dq;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/dq$g;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/dq;->l([Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcom/amap/api/mapcore/util/dq$g;->a:Lcom/amap/api/mapcore/util/dq;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/dq$g;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/dq;->o(Lcom/amap/api/mapcore/util/dq;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
