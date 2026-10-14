.class Lcom/amap/api/mapcore/util/e4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/e4;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/e4;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/e4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4$a;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateCompassView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$a;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->u(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/b4;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$a;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->u(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/b4;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/e4$a$b;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/e4$a$b;-><init>(Lcom/amap/api/mapcore/util/e4$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public invalidateScaleView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$a;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->e(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/g4;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$a;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->e(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/g4;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/e4$a$a;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/e4$a$a;-><init>(Lcom/amap/api/mapcore/util/e4$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public invalidateZoomController(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$a;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->y(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/i4;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$a;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->y(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/i4;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/e4$a$c;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/e4$a$c;-><init>(Lcom/amap/api/mapcore/util/e4$a;F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFrontViewVisibility(Z)V
    .locals 0

    return-void
.end method
