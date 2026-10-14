.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


# instance fields
.field private final i:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/m/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_app_upgrade:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->m(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    return-void
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->j:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    return-object p0
.end method

.method private m(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic n(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->j:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->x(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_checking_app_upgrade:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/a1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/a1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;-><init>(ZZLcn/mucang/jiakaoyi/uilib/ui/check/r$a;)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->a()V

    return-void
.end method

.method public synthetic o(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->n(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    return-void
.end method
