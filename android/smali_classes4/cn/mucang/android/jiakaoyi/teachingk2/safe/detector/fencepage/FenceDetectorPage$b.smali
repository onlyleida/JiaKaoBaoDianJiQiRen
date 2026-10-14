.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->l(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    move-result-object v1

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;->j(Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v3

    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->info:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u5411\u76d8:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u901f\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
