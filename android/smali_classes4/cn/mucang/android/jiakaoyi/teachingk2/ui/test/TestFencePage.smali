.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private c:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

.field private d:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->d:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    return-object p0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6d4b\u8bd5fence"

    return-object v0
.end method

.method protected init()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;-><init>(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->f:Ljava/util/List;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    const/high16 v5, 0x41700000    # 15.0f

    const v6, -0xff0100

    invoke-direct {v4, v2, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, -0x10000

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->d:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestFenceBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->d()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->k()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/TestFencePage;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->l()V

    return-void
.end method
