.class Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float v1, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->u(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->v(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->w(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->l(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;Z)V

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->n(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->l(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;Z)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    .line 11
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->t(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)V

    :cond_1
    return-void
.end method
