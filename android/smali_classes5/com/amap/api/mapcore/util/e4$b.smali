.class Lcom/amap/api/mapcore/util/e4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/e4;->hideInfoWindow()V
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
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4$b;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$b;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->C(Lcom/amap/api/mapcore/util/e4;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$b;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->C(Lcom/amap/api/mapcore/util/e4;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$b;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->C(Lcom/amap/api/mapcore/util/e4;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$b;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->C(Lcom/amap/api/mapcore/util/e4;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->I(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$b;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->G(Lcom/amap/api/mapcore/util/e4;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->I(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$b;->a:Lcom/amap/api/mapcore/util/e4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/e4;->c(Lcom/amap/api/mapcore/util/e4;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method
