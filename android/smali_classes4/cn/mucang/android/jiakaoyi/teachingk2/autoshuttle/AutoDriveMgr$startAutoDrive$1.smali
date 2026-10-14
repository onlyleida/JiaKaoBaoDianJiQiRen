.class final Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->B(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/util/List<",
        "+",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
        ">;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;->invoke$lambda-2$lambda-1(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;->invoke$lambda-2$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;->invoke$lambda-2(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method private static final invoke$lambda-2(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 2

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loadingDialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-static {p0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;->getPosList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d(Ljava/util/List;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "drivePath = null !!!"

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    const/4 p0, 0x0

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_get_driving_route_fail:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.teach\u2026e_get_driving_route_fail)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->f(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;ZLjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/f;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/f;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->h(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final invoke$lambda-2$lambda-1(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/g;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/g;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final invoke$lambda-2$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    const-string p0, "ret"

    .line 2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->e(I)V

    const/4 p1, 0x1

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_send_driving_route_success:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teach\u2026nd_driving_route_success)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->f(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;ZLjava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->c(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_send_driving_route_fail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teach\u2026_send_driving_route_fail)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->f(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_send_driving_route:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/h;

    invoke-direct {v2, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/h;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
