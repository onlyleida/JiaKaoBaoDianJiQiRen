.class Lcom/amap/api/mapcore/util/a4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a4;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/a4;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/a4$a;->a:Lcom/amap/api/mapcore/util/a4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a4$a;->a:Lcom/amap/api/mapcore/util/a4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a4;->p(Lcom/amap/api/mapcore/util/a4;)Lcom/autonavi/base/ae/gmap/GLMapRender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a4$a;->a:Lcom/amap/api/mapcore/util/a4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a4;->p(Lcom/amap/api/mapcore/util/a4;)Lcom/autonavi/base/ae/gmap/GLMapRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->onSurfaceDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
