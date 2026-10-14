.class Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->k(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    neg-double v1, v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->m(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    neg-double v1, v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->p(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D

    .line 5
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->k(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)D

    move-result-wide v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->o(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->k(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)D

    move-result-wide v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->o(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->q(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->r(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->d:D

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->s(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->t(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;)V

    return-void
.end method
