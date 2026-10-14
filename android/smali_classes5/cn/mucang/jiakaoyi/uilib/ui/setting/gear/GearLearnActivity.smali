.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0002\'(B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u0018H\u0014J\u0008\u0010\u001c\u001a\u00020\u0018H\u0014J\u0008\u0010\u001d\u001a\u00020\u0018H\u0014J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 H\u0017J\u0008\u0010!\u001a\u00020\u0018H\u0002J\"\u0010\"\u001a\u00020\u00182\u0008\u0010#\u001a\u0004\u0018\u00010\u00062\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u00060\u000eR\u00020\u00000\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "config",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;",
        "currentRpm",
        "",
        "enableGpsSpeed",
        "",
        "gearList",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$GearLayout;",
        "gpsSpeed",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsSpeed;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearPracticeViewModel;",
        "getStatName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onResume",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "updateConfig",
        "updatePracticeResult",
        "gear",
        "min",
        "",
        "max",
        "Companion",
        "GearLayout",
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
.field public static final g:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$a;


# instance fields
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

.field private b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->g:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    return-object p0
.end method

.method public static synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->r(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->u(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->x(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->t(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->v(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->q(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lkotlin/Triple;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->s(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lkotlin/Triple;)V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->g()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->w()V

    const-string p0, "\u4fdd\u5b58\u6210\u529f"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lkotlin/Triple;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->y(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FF)V

    return-void
.end method

.method private static final t(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->f()Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->learnTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->f()Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->learnTv:Landroid/widget/TextView;

    const-string v2, "it.viewBinding.learnTv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->k(Landroid/widget/TextView;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final u(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvEnable:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->b()Lcn/mucang/android/jiakaoyi/framework/utils/a0;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->c()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->b()Lcn/mucang/android/jiakaoyi/framework/utils/a0;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->a()V

    return-void

    :cond_0
    const-string p0, "viewBinding"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final v(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->e:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->e:Z

    .line 2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvGpsEnable:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :cond_0
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final w()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final x(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->d:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "config"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->d:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/i/r;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/i/r;-><init>()V

    invoke-virtual {v2, p0, v1}, Lcn/mucang/jiakaoyi/uilib/i/r;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 10
    :cond_2
    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method private final y(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {v1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->l(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6321\u4f4d\u5b66\u4e60"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026iceViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_19

    .line 4
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_18

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/o0;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/o0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->g()Ljava/util/Map;

    move-result-object p1

    const-string v2, "getInstance().gearConfig"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->d:Ljava/util/Map;

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_17

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u6321\u4f4d\u5b66\u4e60"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->actionTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->actionTv:Landroid/widget/TextView;

    const-string v3, "\u4fdd\u5b58"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->actionTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/h0;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/h0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz v5, :cond_13

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->gearLayout1:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    const-string v6, "viewBinding.gearLayout1"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4, p0, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz v5, :cond_12

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->gearLayout2:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    const-string v6, "viewBinding.gearLayout2"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4, p0, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz v5, :cond_11

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->gearLayout3:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    const-string v6, "viewBinding.gearLayout3"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4, p0, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz v5, :cond_10

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->gearLayout4:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    const-string v6, "viewBinding.gearLayout4"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4, p0, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->c:Ljava/util/List;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz v5, :cond_f

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->gearLayout5:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    const-string v6, "viewBinding.gearLayout5"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4, p0, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    const-string v3, "viewModel"

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->c()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/p0;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/p0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    invoke-virtual {p1, p0, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->d()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/m0;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/m0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    invoke-virtual {p1, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result p1

    const/16 v3, 0x8

    if-eqz p1, :cond_6

    .line 19
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvGpsEnable:Landroid/widget/TextView;

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 21
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvEnable:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvEnable:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->b()Lcn/mucang/android/jiakaoyi/framework/utils/a0;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->c()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 24
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvEnable:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/k0;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/k0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvGpsEnable:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvEnable:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvGpsEnable:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->e:Z

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 31
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvGpsEnable:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 32
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->tvGpsEnable:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/n0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/n0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_1
    return-void

    .line 33
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_14
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_15
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_16
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_17
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_18
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_19
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->w()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    const-string v1, "viewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->b()V

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v0, "\u8bf7\u542f\u52a8\u53d1\u52a8\u673a"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void

    .line 5
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 7
    iget-boolean v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->e:Z

    if-eqz v3, :cond_4

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->f:Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->f:Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->f:Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)F

    move-result v0

    .line 11
    :cond_4
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-nez v3, :cond_6

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-nez v3, :cond_6

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-byte v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 14
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    invoke-virtual {v3, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->a(IF)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_6
    :goto_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    .line 16
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    const-string v4, "viewBinding"

    if-eqz v3, :cond_9

    iget-object v3, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->speedTv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8f66\u901f:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    int-to-float v6, v6

    mul-float v0, v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x7801

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->rotateTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8f6c\u901f:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v1, 0x8f6c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnActivityBinding;->gearTv:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    const-string v1, "\u6321\u4f4d:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method
