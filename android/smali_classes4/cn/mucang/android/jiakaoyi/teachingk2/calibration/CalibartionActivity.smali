.class public final Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 *2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\rH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u001a\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000c0\u0017H\u0002J\u001a\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000c0\u0017H\u0002J\u001a\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000c0\u0017H\u0002J\u001a\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000c0\u0017H\u0002J\u001a\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000c0\u0017H\u0002J\u001a\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000c0\u0017H\u0002J0\u0010\u001d\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006j\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`\nH\u0002J\u000e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0008\u0010\u001f\u001a\u00020\u0011H\u0016J\u0008\u0010 \u001a\u00020\u000fH\u0014J\u0008\u0010!\u001a\u00020\u000fH\u0002J\u0008\u0010\"\u001a\u00020\u000fH\u0002J\u0008\u0010#\u001a\u00020\u000fH\u0002J\u0008\u0010$\u001a\u00020\u000fH\u0014J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\'H\u0017J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\tH\u0002R:\u0010\u0005\u001a.\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0018\u00010\u0006j\u0016\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0018\u0001`\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "itemMap",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;",
        "Lkotlin/collections/HashMap;",
        "menuList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
        "calibrationHalfClutch",
        "",
        "value",
        "",
        "type",
        "changeMenu",
        "clickItem",
        "chooseHalfClutchType",
        "createBrakeData",
        "Lkotlin/Pair;",
        "createClutchData",
        "createGasData",
        "createHalfClutchData",
        "createThrottleData",
        "createWheelData",
        "getItemMap",
        "getMenuList",
        "getStatName",
        "init",
        "initAutoAssist",
        "initHalfClutch",
        "initMotor",
        "onDestroy",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "saveValue",
        "data",
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
.field public static final d:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->u()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->b:Ljava/util/List;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->n(I)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->n(I)V

    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->etHalfClutchStart:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->l(Ljava/lang/String;I)V

    return-void
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->etHalfClutchEnd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->l(Ljava/lang/String;I)V

    return-void
.end method

.method private final E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->targetTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->wayTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/h;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->etValue:Landroid/widget/EditText;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->confirm:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final F(Landroid/view/View;)V
    .locals 8

    const-string v0, "it"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u5239\u8f66\u7535\u673a"

    const-string v1, "\u79bb\u5408\u7535\u673a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/mucang/jiakaoyi/uilib/ui/widget/d;->c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/b/l;IZILjava/lang/Object;)V

    return-void
.end method

.method private static final G(Landroid/view/View;)V
    .locals 8

    const-string v0, "it"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u4e0a\u5b89\u88c5"

    const-string v1, "\u4e0b\u5b89\u88c5"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/mucang/jiakaoyi/uilib/ui/widget/d;->c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/b/l;IZILjava/lang/Object;)V

    return-void
.end method

.method private static final H(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->targetTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5239\u8f66\u7535\u673a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->wayTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0a\u5b89\u88c5"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->etValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const-string v5, "\u6b63\u5728\u6807\u5b9a"

    .line 7
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->wayTv:Landroid/widget/TextView;

    const-string v5, "viewBinding.motorLayout.wayTv"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v4, 0x1

    :cond_1
    xor-int/lit8 p0, v4, 0x1

    int-to-byte v0, v2

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/j;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/j;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p0, p1, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/signal/com/q;->p(ZBBBLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final I(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 0

    const-string p1, "$dialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->A(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->W(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)V

    return-void
.end method

.method public static synthetic L(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->F(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->x(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->y(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->G(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->B(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->I(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic R(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->D(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->v(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->H(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->C(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V

    return-void
.end method

.method private final V(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarWheel:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->value:I

    if-gtz v0, :cond_0

    iget-boolean v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->needInputValue:Z

    if-eqz v2, :cond_0

    const-string p1, "\u6807\u5b9a\u89d2\u5ea6\u8bf7\u8f93\u5165\u6b63\u6570"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/d;

    invoke-direct {v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;)V

    invoke-static {v1, v2, v0, v3}, Lcn/mucang/android/jiakaoyi/signal/com/q;->o(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;IILcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/q;->n(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)V

    :goto_0
    return-void
.end method

.method private static final W(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)V
    .locals 1

    const-string p1, "$data"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x230

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->r(I)V

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->s(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->value:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->s(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->value:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->r(I)V

    :goto_0
    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->V(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;)V

    return-void
.end method

.method private final l(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_1

    const-string p1, "\u6807\u5b9a\u79bb\u5408\u534a\u8054\u52a8\u8bf7\u8f93\u5165\u6b63\u6570"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    const-string p1, "\u79bb\u5408\u534a\u8054\u52a8\u4e0d\u80fd\u8d85\u8fc7100"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p2, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->o(I)V

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->p(I)V

    :goto_0
    const-string p1, "\u6807\u5b9a\u6210\u529f"

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const-string p1, "input_method"

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private final m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x7

    const/4 v3, 0x5

    const-string v4, "viewBinding.dataRv"

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eq v0, v5, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto/16 :goto_2

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v0

    if-eq v0, v3, :cond_6

    if-eq v0, v5, :cond_3

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->wayTv:Landroid/widget/TextView;

    const-string v1, "viewBinding.motorLayout.wayTv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->isAuto()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 18
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->motorLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/MotorCalibartionBinding;->temp2:Landroid/widget/TextView;

    const-string v1, "viewBinding.motorLayout.temp2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->isAuto()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_5

    const/4 v8, 0x0

    .line 20
    :cond_5
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 22
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->b:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    .line 24
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 25
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 27
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 28
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->c:Ljava/util/HashMap;

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_9

    goto :goto_4

    .line 29
    :cond_9
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->h()I

    move-result v4

    iput v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->value:I

    const/4 v3, 0x2

    .line 30
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->i()I

    move-result v3

    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->value:I

    .line 31
    :cond_a
    :goto_4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->c:Ljava/util/HashMap;

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_c

    goto :goto_3

    .line 32
    :cond_c
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v3, v2, Lcom/drakeet/multitype/f;

    if-eqz v3, :cond_d

    check-cast v2, Lcom/drakeet/multitype/f;

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v2, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 33
    :goto_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_f

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 34
    :cond_10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_7
    return-void
.end method

.method private final n(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->ivRpm:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->ivXc:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->q(I)V

    return-void
.end method

.method private final o()Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    .line 2
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v4, "\u7b2c\u4e00\u6b65\uff1a\u677e\u5f00\u811a\u5239"

    .line 3
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v4, "\u677e\u5f00\u811a\u5239"

    .line 4
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v5, 0x1

    .line 6
    iput-boolean v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->isStart:Z

    const/4 v6, 0x0

    .line 7
    iput v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    const-string v7, "\u5f00\u59cb\u6807\u5b9a\u811a\u5239\u884c\u7a0b"

    .line 8
    iput-object v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->startText:Ljava/lang/String;

    .line 9
    sget-object v7, Lkotlin/v;->a:Lkotlin/v;

    aput-object v3, v2, v6

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v6, "\u7b2c\u4e8c\u6b65\uff1a\u8e29\u6ee1\u811a\u5239"

    .line 11
    iput-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v6, "\u8e29\u6ee1\u811a\u5239"

    .line 12
    iput-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 13
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 14
    iput v1, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    aput-object v3, v2, v5

    .line 15
    invoke-static {v2}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final p()Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    .line 2
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v4, "\u7b2c\u4e00\u6b65\uff1a\u677e\u5f00\u79bb\u5408"

    .line 3
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v4, "\u677e\u5f00\u79bb\u5408"

    .line 4
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarClutch:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v5, 0x0

    .line 6
    iput v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    const/4 v6, 0x1

    .line 7
    iput-boolean v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->isStart:Z

    const-string v7, "\u5f00\u59cb\u6807\u5b9a\u79bb\u5408\u884c\u7a0b"

    .line 8
    iput-object v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->startText:Ljava/lang/String;

    .line 9
    sget-object v7, Lkotlin/v;->a:Lkotlin/v;

    aput-object v3, v2, v5

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v5, "\u7b2c\u4e8c\u6b65\uff1a\u8e29\u6ee1\u79bb\u5408"

    .line 11
    iput-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v5, "\u8e29\u6ee1\u79bb\u5408"

    .line 12
    iput-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 13
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 14
    iput v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    aput-object v3, v2, v6

    .line 15
    invoke-static {v2}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final q()Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v3, "\u7b2c\u4e00\u6b65\uff1a\u8bf7\u677e\u5f00\u6cb9\u95e8\u540e\uff0c\u70b9\u51fb\u786e\u8ba4"

    .line 3
    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v3, "\u677e\u5f00\u6cb9\u95e8"

    .line 4
    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarGas:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v4, 0x1

    .line 6
    iput-boolean v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->isStart:Z

    const/4 v5, 0x0

    .line 7
    iput v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    const-string v6, "\u5f00\u59cb\u6807\u5b9a\u6cb9\u95e8"

    .line 8
    iput-object v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->startText:Ljava/lang/String;

    .line 9
    sget-object v6, Lkotlin/v;->a:Lkotlin/v;

    aput-object v2, v1, v5

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v5, "\u7b2c\u4e8c\u6b65\uff1a\u8e29\u6ee1\u6cb9\u95e8\u540e\uff0c\u70b9\u51fb\u786e\u8ba4"

    .line 11
    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v5, "\u8e29\u6ee1\u6cb9\u95e8"

    .line 12
    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 13
    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 14
    iput v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    const-string v3, "\u6ce8\u610f\uff1a\u6cb9\u95e8\u6807\u5b9a\uff0c\u9700\u8981\u5c06\u8f66\u8f86\u7184\u706b\uff0c\u907f\u514d\u51fa\u73b0\u5371\u9669\u60c5\u51b5\u3002"

    .line 15
    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->tip:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 16
    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final r()Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    .line 2
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v4, "\u7b2c\u4e00\u6b65\uff1a\u677e\u5f00\u6cb9\u95e8"

    .line 3
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v4, "\u677e\u5f00\u6cb9\u95e8"

    .line 4
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarThrottle:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v5, 0x1

    .line 6
    iput-boolean v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->isStart:Z

    const/4 v6, 0x0

    .line 7
    iput v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    const-string v7, "\u5f00\u59cb\u6807\u5b9a\u6cb9\u95e8\u884c\u7a0b"

    .line 8
    iput-object v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->startText:Ljava/lang/String;

    .line 9
    sget-object v7, Lkotlin/v;->a:Lkotlin/v;

    aput-object v3, v2, v6

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v6, "\u7b2c\u4e8c\u6b65\uff1a\u8e29\u6ee1\u6cb9\u95e8"

    .line 11
    iput-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v6, "\u8e29\u6ee1\u6cb9\u95e8"

    .line 12
    iput-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 13
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 14
    iput v1, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    aput-object v3, v2, v5

    .line 15
    invoke-static {v2}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final s()Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    .line 2
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v4, "\u7b2c\u4e00\u6b65\uff1a\u65b9\u5411\u76d8\u5de6\u65b9\u5411\u6253\u6ee1"

    .line 3
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v4, "\u5de6\u6253\u6ee1\u65b9\u5411"

    .line 4
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->h()I

    move-result v4

    iput v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->value:I

    .line 6
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarWheel:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 7
    iput-boolean v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->isStart:Z

    const-string v5, "\u5f00\u59cb\u6807\u5b9a\u65b9\u5411\u76d8"

    .line 8
    iput-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->startText:Ljava/lang/String;

    const/4 v5, 0x0

    .line 9
    iput v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    .line 10
    iput-boolean v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->needInputValue:Z

    .line 11
    sget-object v6, Lkotlin/v;->a:Lkotlin/v;

    aput-object v3, v2, v5

    .line 12
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v6, "\u7b2c\u4e8c\u6b65\uff1a\u65b9\u5411\u76d8\u56de\u6b63"

    .line 13
    iput-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v6, "\u6253\u56de\u6b63\u65b9\u5411"

    .line 14
    iput-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 15
    iput v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->value:I

    .line 16
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 17
    iput v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    aput-object v3, v2, v0

    .line 18
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v5, "\u7b2c\u4e09\u6b65\uff1a\u65b9\u5411\u76d8\u53f3\u65b9\u5411\u6253\u6ee1"

    .line 19
    iput-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v5, "\u53f3\u6253\u6ee1\u65b9\u5411"

    .line 20
    iput-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->i()I

    move-result v5

    iput v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->value:I

    .line 22
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v5, 0x2

    .line 23
    iput v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    .line 24
    iput-boolean v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->needInputValue:Z

    aput-object v3, v2, v5

    .line 25
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;-><init>()V

    const-string v3, "\u590d\u4f4d\u53c2\u6570(\u65b9\u5411\u76d8\u91cd\u65b0\u6807\u5b9a\u65f6\u9700\u8981)"

    .line 26
    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->stepName:Ljava/lang/String;

    const-string v3, "\u590d\u4f4d\u53c2\u6570"

    .line 27
    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->head:Ljava/lang/String;

    .line 28
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v3, 0x3

    .line 29
    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->calibrationType:I

    aput-object v0, v2, v3

    .line 30
    invoke-static {v2}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final t()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->s()Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->p()Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->o()Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->r()Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->q()Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/collections/l0;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private final u()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v3, "\u65b9\u5411\u76d8\u6807\u5b9a"

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 6
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v1

    const-string v3, "\u6cb9\u95e8\u6807\u5b9a"

    const/16 v4, 0x8

    const-string v5, "\u6cb9\u95e8\u884c\u7a0b\u6807\u5b9a"

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    .line 10
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    .line 11
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    .line 15
    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    .line 16
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 19
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v8, 0x2

    .line 21
    invoke-virtual {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v8, "\u79bb\u5408\u884c\u7a0b\u6807\u5b9a"

    .line 22
    invoke-virtual {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v8, 0x3

    .line 26
    invoke-virtual {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v8, "\u5239\u8f66\u884c\u7a0b\u6807\u5b9a"

    .line 27
    invoke-virtual {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    .line 31
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    .line 32
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v5, 0x5

    .line 36
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v5, "\u79bb\u5408\u534a\u8054\u52a8\u6807\u5b9a"

    .line 37
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/16 v5, 0x9

    .line 41
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v5, "\u81ea\u52a8\u8f85\u52a9\u6807\u5b9a"

    .line 42
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v5, 0x6

    .line 46
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v5, "\u624b\u52a8\u7535\u673a\u6807\u5b9a"

    .line 47
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    const/4 v5, 0x7

    .line 51
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    const-string v5, "\u81ea\u52a8\u7535\u673a\u6807\u5b9a"

    .line 52
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 54
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setAuto(Z)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;-><init>()V

    .line 57
    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setId(I)V

    .line 58
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->setSelected(Z)V

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etHalfClutchStart:Landroid/widget/EditText;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etThrottle:Landroid/widget/EditText;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etCtrlSpeedBrake:Landroid/widget/EditText;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etCtrSpeedClutch:Landroid/widget/EditText;

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etCtrBackClutch:Landroid/widget/EditText;

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->brakeDistanceEt:Landroid/widget/EditText;

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->brakeCoefficientEt:Landroid/widget/EditText;

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->confirm:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->saveTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 12

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etHalfClutchStart:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etThrottle:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etCtrlSpeedBrake:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etCtrSpeedClutch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->etCtrBackClutch:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u8bf7\u8f93\u5165\u79bb\u5408\u534a\u8054\u52a8\u5f00\u59cb\u503c"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u8bf7\u8f93\u5165\u6cb9\u95e8\u503c"

    .line 9
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u8bf7\u8f93\u5165\u63a7\u901f\u5239\u8f66\u7a7a\u884c\u7a0b\u503c"

    .line 11
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "\u8bf7\u8f93\u5165\u524d\u8fdb\u63a7\u901f\u534a\u8054\u52a8\u79bb\u5408\u884c\u7a0b\u503c"

    .line 13
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "\u8bf7\u8f93\u5165\u540e\u9000\u63a7\u901f\u534a\u8054\u52a8\u79bb\u5408\u884c\u7a0b\u503c"

    .line 15
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_4
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 22
    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;->a(IIIIIZLkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->brakeDistanceEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->assistLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoAssistCalibartionBinding;->brakeCoefficientEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u8bf7\u8f93\u5165\u5239\u8f66\u8ddd\u79bb"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u8bf7\u8f93\u5165\u5239\u8f66\u8ddd\u79bb\u7cfb\u6570"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->m(I)V

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->l(I)V

    const-string p0, "\u4fdd\u5b58\u6210\u529f"

    .line 9
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final z()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->tipTv:Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->tipTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/16 v6, 0x21

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->etHalfClutchStart:Landroid/widget/EditText;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->etHalfClutchEnd:Landroid/widget/EditText;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->ivRpm:Landroid/widget/Button;

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->g()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->ivXc:Landroid/widget/Button;

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->g()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->ivXc:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->ivRpm:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->btnHalfClutchStart:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->halfClutchLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->btnHalfClutchEnd:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u673a\u53c2\u6570\u6807\u5b9a"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8f66\u673a\u53c2\u6570\u6807\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$init$2$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$init$2$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;-><init>(Lkotlin/jvm/b/l;)V

    .line 7
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->b:Ljava/util/List;

    invoke-virtual {v7, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 9
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 10
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->menuRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/p;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$init$3$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$init$3$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/p;-><init>(Lkotlin/jvm/b/l;)V

    .line 15
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 16
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->z()V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->E()V

    .line 19
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->w()V

    .line 20
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->t()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->c:Ljava/util/HashMap;

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    .line 22
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->wheelDegree:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u65b9\u5411\u76d8\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->clutchTravel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u79bb\u5408\u884c\u7a0b\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->brakeTravel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5239\u8f66\u884c\u7a0b\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->throttleTravel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6cb9\u95e8\u884c\u7a0b\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->speedTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u901f\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x7801

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;->rpmTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8f6c\u901f\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
