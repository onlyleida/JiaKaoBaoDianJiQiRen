.class public Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private b:D

.field private c:D

.field private final d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private f:D

.field private g:D

.field private h:D

.field private final i:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private k:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

.field private l:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

.field private m:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

.field private n:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->b:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->c:D

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->f:D

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->g:D

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->h:D

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->j:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->f:D

    return-wide v0
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->x(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;Z)V

    return-void
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->f:D

    return-wide p1
.end method

.method static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->m:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    return-object p0
.end method

.method static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->g:D

    return-wide v0
.end method

.method static synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->g:D

    return-wide p1
.end method

.method static synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    return-object p0
.end method

.method static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method

.method static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->c:D

    return-wide p1
.end method

.method static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->y()V

    return-void
.end method

.method static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->b:D

    return-wide p1
.end method

.method static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->h:D

    return-wide p1
.end method

.method static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->k:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    return-object p0
.end method

.method private x(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;Z)V
    .locals 9

    .line 1
    :try_start_0
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->i(DD)[D

    move-result-object p1

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->f:D

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpl-double v8, v0, v2

    if-nez v8, :cond_0

    .line 3
    aget-wide v0, p1, v5

    neg-double v0, v0

    mul-double v0, v0, v6

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->f:D

    .line 4
    aget-wide v0, p1, v4

    neg-double v0, v0

    mul-double v0, v0, v6

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->g:D

    .line 5
    :cond_0
    aget-wide v0, p1, v5

    mul-double v0, v0, v6

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->f:D

    add-double/2addr v0, v2

    .line 6
    aget-wide v2, p1, v4

    mul-double v2, v2, v6

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->g:D

    add-double/2addr v2, v4

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    if-eqz p3, :cond_1

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->info:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u822a\u5411\u89d2: \u5e95\u5c42="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->c:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , \u5dee\u8ddd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->c:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->b:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\u5398\u7c73\n\u89d2\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n\u540e\u8f6e\u8f74\u5fc3\u5230\u5929\u7ebf\u7684\u5782\u76f4\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->h:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\u5398\u7c73"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u540e\u8f74\u4e2d\u5fc3\u70b9\u8f68\u8ff9"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->k:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const v2, -0xff0100

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/16 v2, -0x100

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->m:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/high16 v2, -0x10000

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->k:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->l:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->m:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->j:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;->j:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestBackcenterPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method
