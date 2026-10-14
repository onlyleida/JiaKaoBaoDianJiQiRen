.class Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    mul-double v0, v0, v2

    const-wide v4, 0x402399999999999aL    # 9.8

    div-double/2addr v0, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 4
    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;D)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_0
    return-void
.end method
