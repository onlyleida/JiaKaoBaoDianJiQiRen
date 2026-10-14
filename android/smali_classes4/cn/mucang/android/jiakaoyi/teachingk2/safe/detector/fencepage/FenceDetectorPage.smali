.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

.field private e:Z

.field private final f:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final h:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    return-object p0
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    return-object p0
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->e:Z

    return p0
.end method

.method private synthetic n(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->e:Z

    return-void
.end method

.method private synthetic p(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic r(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->triggerInfo:Landroid/widget/TextView;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static v(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7535\u5b50\u56f4\u680f\u68c0\u6d4b\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 11

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->e:Z

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->f:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u6ca1\u6709\u7535\u5b50\u56f4\u680f\u6570\u636e"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    .line 7
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const v3, -0x9ff0

    .line 8
    iget v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    if-ne v4, v2, :cond_2

    const/high16 v3, -0x10000

    const/high16 v6, -0x10000

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v4, v2, :cond_3

    const v3, -0xffff01

    const v6, -0xffff01

    goto :goto_1

    :cond_3
    const v6, -0x9ff0

    .line 9
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/util/List;IZ)V

    invoke-virtual {v3, v10}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setClickViewListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const v3, -0xe970fd

    invoke-direct {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;II)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const v3, -0x7df812

    invoke-direct {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;II)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const v3, -0x26b5f7

    invoke-direct {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;II)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->back:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->R(I)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->collectBrakeDistance:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic o(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->n(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->i(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->i(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method

.method public synthetic q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->p(Landroid/view/View;)V

    return-void
.end method

.method public synthetic s(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->r(Landroid/view/View;)V

    return-void
.end method

.method public synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->t(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;)V

    return-void
.end method
