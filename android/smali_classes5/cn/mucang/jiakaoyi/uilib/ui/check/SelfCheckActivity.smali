.class public final Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;
.implements Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0003\n\r\u0010\u0018\u0000 C2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001CB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u0015H\u0002J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002J\u0008\u0010\u001d\u001a\u00020\u001aH\u0016J\u0008\u0010\u001e\u001a\u00020\u0015H\u0002J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0002J\u0008\u0010\"\u001a\u00020\u0015H\u0003J\u0008\u0010#\u001a\u00020\u0015H\u0002J\u0008\u0010$\u001a\u00020\u0015H\u0016J\u0008\u0010%\u001a\u00020\u0006H\u0002J\u0012\u0010&\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0014J\u0008\u0010)\u001a\u00020\u0015H\u0014J\u0010\u0010*\u001a\u00020\u00152\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\u00152\u0006\u00101\u001a\u000202H\u0016J\u0008\u00103\u001a\u00020\u0015H\u0002J.\u00104\u001a\u00020\u00152\u0008\u00105\u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u00106\u001a\u00020\u001a2\u0008\u0008\u0002\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0002J\u0008\u0010;\u001a\u00020\u0015H\u0003J\u0010\u0010<\u001a\u00020\u00152\u0006\u0010=\u001a\u00020\u001aH\u0002J\u0010\u0010>\u001a\u00020\u00152\u0006\u0010?\u001a\u00020\u0006H\u0002J\u0008\u0010@\u001a\u00020\u0015H\u0002J\u0008\u0010A\u001a\u00020\u0015H\u0002J\u0008\u0010B\u001a\u00020\u0015H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;",
        "()V",
        "checkEnd",
        "",
        "forceObd",
        "forceOta",
        "onResult",
        "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult$1",
        "Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult$1;",
        "onResult1",
        "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult1$1",
        "Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult1$1;",
        "otaStateCallback",
        "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$otaStateCallback$1",
        "Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$otaStateCallback$1;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;",
        "checkSignal",
        "",
        "model",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;",
        "debugInfo",
        "text",
        "",
        "doStartCheckSignal",
        "getErrorTip",
        "getStatName",
        "getUpgradeInfo",
        "handleUpdateInfo",
        "updateInfo",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "initHardwareInfo",
        "initObdExceptionObserver",
        "onBackPressed",
        "onClose",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onFirmwareUpgradeState",
        "stateModel",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;",
        "onLocationChanged",
        "location",
        "Landroid/location/Location;",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "refreshObdInfoFromDevice",
        "reportUpgradeInfo",
        "info",
        "uuid",
        "updateProgress",
        "",
        "extraInfo",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;",
        "setFirstLaunch",
        "showFinishEntry",
        "result",
        "showSignalCheckUI",
        "show",
        "startCheckSignal",
        "startCheckSignalOperation",
        "stop",
        "Companion",
        "uilib_release"
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
.field public static final h:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;


# instance fields
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;

.field private final f:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$c;

.field private final g:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->h:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->e:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$c;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$c;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$c;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$d;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$d;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$d;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 2

    const-string v0, "$updateInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getForce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/check/d;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/d;

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->x(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/check/m;

    invoke-direct {v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/m;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-static {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->y(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    :goto_0
    return-void
.end method

.method private static final B(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private static final C(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/Boolean;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->v()V

    return-void
.end method

.method private final D()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->debugContainer:Landroid/widget/LinearLayout;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->d()Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    move-result-object v0

    const-string v3, "SingleUpgradeHandler"

    if-nez v0, :cond_2

    .line 3
    iget-boolean v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->d:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->c:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "\u7f13\u5b58\u7684\u786c\u4ef6\u4fe1\u606f\u4e3a\u7a7a"

    .line 4
    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$c;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/a;->b(Lcn/mucang/android/jiakaoyi/signal/a$a;)V

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v4, :cond_3

    iget-object v1, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->obdWareDebugInfo:Landroid/widget/TextView;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f13\u5b58\u7684\u56fa\u4ef6\u4fe1\u606f:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", \u8bbe\u7f6e\u7684\u8f66\u578b:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7f13\u5b58\u7684\u786c\u4ef6\u4fe1\u606f:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->y()V

    .line 11
    :goto_2
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;

    .line 12
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/check/e;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/e;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    .line 13
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final E(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->t(Ljava/lang/String;)V

    return-void
.end method

.method private final F()V
    .locals 0

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a0(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic H()V
    .locals 0

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->j0()V

    return-void
.end method

.method public static synthetic I(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->B(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->E(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->X(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method

.method public static synthetic L(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->u(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic M(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->V(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->w(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method

.method public static synthetic O(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->C(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic P(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->U(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->A(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method

.method public static synthetic R(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->d0(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->e0(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method private final T()Z
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->p()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "getInstance().isWorking"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\u56fa\u4ef6\u5347\u7ea7\u4e2d.."

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->b:Z

    if-nez v0, :cond_1

    const-string v0, "\u4fe1\u53f7\u68c0\u6d4b\u4e2d.."

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckProvider;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckProvider;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckProvider;->finishDirect()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 6
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->d:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->c:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->s(Landroid/content/Context;)V

    goto :goto_2

    .line 8
    :cond_5
    :goto_1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->f:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;->a(Landroid/content/Context;)V

    :cond_6
    :goto_2
    return v2
.end method

.method private static final U(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->onBackPressed()V

    return-void
.end method

.method private static final V(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->h:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "it.context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private final W(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v2, "DebugOta"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "viewBinding"

    if-ne v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u5f00\u59cb"

    .line 6
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u5f00\u59cb:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 8
    :cond_0
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 9
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 10
    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 11
    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v6, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u5931\u8d25"

    .line 13
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u56fa\u4ef6\u66f4\u65b0\u5931\u8d25,\u8bf7\u9000\u51fa\u5e94\u7528\u91cd\u8bd5"

    .line 14
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u56fa\u4ef6\u66f4\u65b0\u5931\u8d25,\u8bf7\u9000\u51fa\u5e94\u7528\u91cd\u8bd5:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    sget v0, Lcn/mucang/jiakaoyi/uilib/unityres/a;->a:I

    if-ne p1, v0, :cond_6

    const/4 v3, 0x1

    :cond_6
    :goto_0
    if-eqz v3, :cond_7

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 18
    :cond_7
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g0()V

    goto/16 :goto_2

    .line 19
    :cond_8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_b

    const-string v0, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u6210\u529f"

    .line 20
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u6210\u529f:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 22
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g0()V

    .line 23
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    const/4 v3, 0x1

    :cond_a
    :goto_1
    if-eqz v3, :cond_13

    .line 24
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->Y()V

    goto/16 :goto_2

    .line 25
    :cond_b
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_d

    .line 26
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 27
    :cond_d
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_PACK_FINISH:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_f

    .line 28
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u53d1\u5305\u5b8c\u6210\u56de\u8c03"

    .line 29
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u53d1\u5305\u5b8c\u6210\u56de\u8c03:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_2

    .line 31
    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 32
    :cond_f
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_11

    const-string v0, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u66f4\u65b0\u6210\u529f\u56de\u8c03"

    .line 33
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u66f4\u65b0\u6210\u529f\u56de\u8c03:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 37
    :cond_11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_13

    const-string v0, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u66f4\u65b0\u5931\u8d25\u56de\u8c03"

    .line 38
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u66f4\u65b0\u5931\u8d25\u56de\u8c03:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_2

    .line 41
    :cond_12
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    :cond_13
    :goto_2
    return-void
.end method

.method private static final X(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GPS:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 3
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private final Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$d;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/a;->b(Lcn/mucang/android/jiakaoyi/signal/a$a;)V

    return-void
.end method

.method private final Z(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;

    invoke-direct {v0, p1, p4, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/check/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a0(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "$extraInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/j;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/j;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/i/j;->m(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final b0()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const-string v0, "keyFirstLaunch"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final c0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->descTv:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->resultGroup:Landroidx/constraintlayout/widget/Group;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->errorTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->mainTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/p;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/p;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->retryTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/q;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/q;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final d0(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->onBackPressed()V

    return-void
.end method

.method private static final e0(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g0()V

    return-void
.end method

.method private final f0(Z)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 1
    :goto_0
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    const/4 v4, 0x0

    const-string v5, "viewBinding"

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 7
    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 8
    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 9
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 10
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 11
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->t(Ljava/lang/String;)V

    return-void
.end method

.method private final g0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->resultGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->f0(Z)V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 7
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->k(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;)V

    .line 9
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->d(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;)V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->values()[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    .line 12
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 13
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setHasPlayErrTip(Z)V

    goto :goto_0

    :cond_0
    return-void

    .line 14
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->v()V

    return-void
.end method

.method private final h0()V
    .locals 1

    const-string v0, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->v()V

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->e:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;

    return-object p0
.end method

.method private final i0()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->k(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;)V

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/check/c;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/c;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->y()V

    return-void
.end method

.method private static final j0()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->values()[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 2
    const-class v3, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->configEnumAsJavaBean([Ljava/lang/Class;)V

    .line 3
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    new-array v2, v4, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 4
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/e;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/e;-><init>()V

    const-string v2, "value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcn/mucang/jiakaoyi/uilib/i/e;->o(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->z(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->F()V

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->W(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method

.method public static final synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->Z(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    return-void
.end method

.method public static final synthetic p(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->c0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic q(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g0()V

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->h0()V

    return-void
.end method

.method private final s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const-string v2, "\u65e0\u4fe1\u53f7"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->KEY:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getHasPlayErrTip()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setHasPlayErrTip(Z)V

    .line 3
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getSignalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->KEY:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GEAR:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getHasPlayErrTip()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setHasPlayErrTip(Z)V

    .line 9
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getSignalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_1

    .line 11
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GEAR:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 13
    :cond_3
    :goto_1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-int v0, v0

    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    if-ne v0, v1, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->SPEED:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getHasPlayErrTip()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setHasPlayErrTip(Z)V

    .line 15
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 16
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getSignalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_2

    .line 17
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->SPEED:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 18
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 19
    :cond_5
    :goto_2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    if-ne v0, v1, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->RPM:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getHasPlayErrTip()Z

    move-result v1

    if-nez v1, :cond_6

    .line 20
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setHasPlayErrTip(Z)V

    .line 21
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 22
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getSignalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_3

    .line 23
    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->RPM:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v1

    if-nez v1, :cond_7

    .line 24
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 25
    :cond_7
    :goto_3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    if-ne v0, v1, :cond_8

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->THROTTLE:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getHasPlayErrTip()Z

    move-result v1

    if-nez v1, :cond_8

    .line 26
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setHasPlayErrTip(Z)V

    .line 27
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 28
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getSignalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_4

    .line 29
    :cond_8
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->THROTTLE:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v1

    if-nez v1, :cond_9

    .line 30
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 31
    :cond_9
    :goto_4
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->w:F

    float-to-int p1, p1

    sget v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    if-ne p1, v0, :cond_a

    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GYRO:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getHasPlayErrTip()Z

    move-result v0

    if-nez v0, :cond_a

    .line 32
    invoke-virtual {p1, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setHasPlayErrTip(Z)V

    .line 33
    invoke-virtual {p1, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 34
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getSignalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_5

    .line 35
    :cond_a
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GYRO:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v0

    if-nez v0, :cond_b

    .line 36
    invoke-virtual {p1, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    :cond_b
    :goto_5
    return-void
.end method

.method private final t(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/h;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/h;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final u(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeDebugInfo:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final v()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/j;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/j;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final w(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g0()V

    return-void
.end method

.method private final x()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->values()[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    .line 3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-le v2, v5, :cond_1

    const-string v4, "\n"

    .line 4
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3001

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getSignalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u672a\u68c0\u6d4b\u5230\u4fe1\u53f7\uff1a"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final y()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->c:Z

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->d:Z

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;-><init>(ZZLcn/mucang/jiakaoyi/uilib/ui/check/r$a;)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->a()V

    return-void
.end method

.method private final z(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/o;

    invoke-direct {v0, p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/o;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7cfb\u7edf\u81ea\u68c0"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->b0()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "__key_force_ota__"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->c:Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "__key_force_obd__"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->d:Z

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/check/n;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/n;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u7cfb\u7edf\u81ea\u68c0"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0, v3}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->f0(Z)V

    .line 10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/drakeet/multitype/f;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->values()[Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 12
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/check/s;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/ui/check/s;-><init>()V

    .line 13
    const-class v3, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v8, v3, v2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 14
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 15
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->D()V

    .line 17
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/check/i;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/i;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->tvVersion:Landroid/widget/TextView;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->tvApkTime:Landroid/widget/TextView;

    const-string v0, "2023/10/12 17:54:03"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->k(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->S()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/check/g;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/g;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    const-string v0, "model"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->GPS:Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getState()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    .line 6
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->setState(I)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;->getSignalName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u65e0\u4fe1\u53f7"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->i0()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->b:Z

    .line 10
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->x()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->onBackPressed()V

    goto :goto_0

    .line 13
    :cond_1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->o:Z

    if-nez p1, :cond_2

    .line 14
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;

    .line 15
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onSignalChanged$1;

    invoke-direct {v3, p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onSignalChanged$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V

    .line 16
    invoke-direct {p1, p0, v3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;-><init>(Landroid/content/Context;Lkotlin/jvm/b/a;)V

    .line 17
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->c0(Ljava/lang/String;)V

    .line 19
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    return-void

    .line 23
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
