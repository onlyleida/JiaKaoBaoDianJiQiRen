.class public final Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;
.super Lcn/mucang/android/core/config/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J$\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00072\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0017\u001a\u00020\u000fH\u0002J\u0008\u0010\u0018\u001a\u00020\u000fH\u0002J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;",
        "Lcn/mucang/android/core/config/EmptyActivityLifecycleCallbacks;",
        "robotPageHandler",
        "Lcn/mucang/android/jiakaoyi/framework/VoiceRobotPageHandler;",
        "(Lcn/mucang/android/jiakaoyi/framework/VoiceRobotPageHandler;)V",
        "globalList",
        "",
        "",
        "getProtocol",
        "url",
        "handleUrl",
        "",
        "doSomething",
        "Lkotlin/Function1;",
        "initLang",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityResumed",
        "onActivityStopped",
        "registerProtocol",
        "registerSettings",
        "registerUnity",
        "Companion",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/c;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/c;)V
    .locals 1

    const-string v0, "robotPageHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/l;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->a:Lcn/mucang/android/jiakaoyi/framework/c;

    const-string p1, "http://robot.nav.mucang.cn/callControl"

    .line 2
    invoke-static {p1}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->b:Ljava/util/List;

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->x()V

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p2, p1, Landroidx/fragment/app/d;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/fragment/app/d;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->a:Lcn/mucang/android/jiakaoyi/framework/c;

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/c;->o(Landroid/app/Activity;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    return p2

    .line 4
    :cond_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/speech/ui/j;->b:Lcn/mucang/android/jiakaoyi/speech/ui/j$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/j$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_3

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/speech/ui/j;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/speech/ui/j;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/j$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return p2
.end method

.method private final B()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/n;

    const-string v1, "http://robot.nav.mucang.cn/carInfo"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/v;

    const-string v1, "http://robot.nav.mucang.cn/carSignal"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/x;->a:Lcn/mucang/android/jiakaoyi/teachingk2/x;

    const-string v1, "http://robot.nav.mucang.cn/carModel"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/m;

    const-string v1, "http://robot.nav.mucang.cn/training"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/o;

    const-string v1, "http://robot.nav.mucang.cn/safeData"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/p;

    const-string v1, "http://robot.nav.mucang.cn/radarCheck"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/w;

    const-string v1, "http://robot.nav.mucang.cn/AISignal"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/u;->a:Lcn/mucang/android/jiakaoyi/teachingk2/u;

    const-string v1, "http://robot.nav.mucang.cn/calibration"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/q;

    const-string v1, "http://robot.nav.mucang.cn/enableDBD"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/l;

    const-string v1, "http://robot.nav.mucang.cn/firmware"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k;

    const-string v1, "http://robot.nav.mucang.cn/checkModule"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/j;

    const-string v1, "http://robot.nav.mucang.cn/appUpgrade"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/i;

    const-string v1, "http://robot.nav.mucang.cn/orderSetting"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/h;

    const-string v1, "http://robot.nav.mucang.cn/teachSetting"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    return-void
.end method

.method private static final C(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->h:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final D(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final E(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final F(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity$a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final G(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$b;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$b;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final H(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->d(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    :cond_0
    return v0
.end method

.method private static final I(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "context"

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final J(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;->l:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final K(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final L(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->h:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final M(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final N(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "role"

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 4
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$a;

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$a;->a(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final O(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final P(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$a;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private final Q()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/f;

    const-string v1, "http://robot.nav.mucang.cn/callUnity"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/s0;->c([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->h(Ljava/util/HashSet;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;)V

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    return-void
.end method

.method private static final R(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    .line 1
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$registerUnity$1$1;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$registerUnity$1$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->b(Ljava/lang/String;Lkotlin/jvm/b/l;)Z

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final b(Ljava/lang/String;Lkotlin/jvm/b/l;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v5, "activity"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->processSpecial(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    return v3

    .line 6
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->a:Lcn/mucang/android/jiakaoyi/framework/c;

    invoke-interface {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/c;->o(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "http://robot.nav.mucang.cn/callUnity"

    .line 7
    invoke-static {v1}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {p2, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_4
    return v4
.end method

.method private final c(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1020002

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi_font_theme:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->R(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->A(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->J(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->I(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->G(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->F(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->N(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->O(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->P(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->y(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->D(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->L(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->C(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->M(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->w(Landroid/app/Activity;)V

    return-void
.end method

.method private static final w(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1020002

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->robot_extra_view:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final x()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->B()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->Q()V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;)V

    const-string v1, "http://robot.nav.mucang.cn/callControl"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/s;

    const-string v1, "http://robot.nav.mucang.cn/lookTrace"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/g;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;)V

    const-string v1, "http://robot.nav.mucang.cn/voiceHelper"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    .line 1
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$registerProtocol$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$registerProtocol$1$1;

    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->b(Ljava/lang/String;Lkotlin/jvm/b/l;)Z

    move-result p0

    return p0
.end method

.method private static final z(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->setData()V

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    goto :goto_0

    .line 5
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_trace_lack:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/core/config/l;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->c(Landroid/app/Activity;)V

    .line 3
    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/y;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/y;-><init>(Landroid/app/Activity;)V

    const-wide/16 v0, 0x64

    invoke-static {p2, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/l;->onActivityResumed(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->a:Lcn/mucang/android/jiakaoyi/framework/c;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/c;->o(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->u()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->B()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/l;->onActivityStopped(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->a:Lcn/mucang/android/jiakaoyi/framework/c;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/c;->o(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->q()V

    :cond_0
    return-void
.end method
