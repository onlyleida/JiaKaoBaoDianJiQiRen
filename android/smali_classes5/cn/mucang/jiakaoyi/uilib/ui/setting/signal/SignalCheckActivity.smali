.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;,
        Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 92\u00020\u00012\u00020\u0002:\u000289B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\u001dH\u0003J.\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001f2\u000e\u0008\u0001\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u001f2\u000e\u0008\u0001\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u001fH\u0002J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u001dH\u0002J\u0008\u0010&\u001a\u00020\u001dH\u0002J\u0008\u0010\'\u001a\u00020\u001dH\u0002J\u0012\u0010(\u001a\u00020\u001d2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0008\u0010+\u001a\u00020\u001dH\u0014J\u0008\u0010,\u001a\u00020\u001dH\u0015J\u0010\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020\u001dH\u0002J\u0008\u00101\u001a\u00020\u001dH\u0002J\u0008\u00102\u001a\u00020\u001dH\u0002J\u0008\u00103\u001a\u00020\u001dH\u0002J\u001e\u00104\u001a\u00020\u001d2\u0006\u00105\u001a\u0002062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020!0\u001fH\u0002R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\nR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "backTypes",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;",
        "[Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;",
        "gearTypes",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;",
        "[Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;",
        "hasChmod",
        "",
        "getHasChmod",
        "()Z",
        "hasChmod$delegate",
        "Lkotlin/Lazy;",
        "loadType",
        "",
        "getLoadType",
        "()I",
        "loadType$delegate",
        "selectCarListener",
        "Landroid/view/View$OnClickListener;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;",
        "viewModel",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckViewModel;",
        "changeVersionInfo",
        "",
        "checkDiffIndexes",
        "",
        "oldList",
        "",
        "newList",
        "getStatName",
        "",
        "initBackGearTypes",
        "initBoxVersion",
        "initGearTypes",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "onResume",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "setBackGearTypeTxt",
        "setGearTypeTxt",
        "showSelectGearType",
        "showVersionList",
        "updateRcvWithDiffItems",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "it",
        "BoxVersionItemBinder",
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
.field public static final h:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;


# instance fields
.field private final a:Lkotlin/f;

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

.field private c:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;

.field private d:[Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

.field private e:[Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;

.field private final f:Lkotlin/f;

.field private final g:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->h:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$loadType$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$loadType$2;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->a:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$hasChmod$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$hasChmod$2;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->f:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/p;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/p;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->N(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->q(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->Q(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->O(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;[Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->p(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;[Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->T(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->u(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->S(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    return-void
.end method

.method public static synthetic J(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;[Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->t(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;[Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private static final L(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final M(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "GPS\u72b6\u6001"

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u5173\u95ed"

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p0, 0x0

    return p0
.end method

.method private static final N(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final O(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final P(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$c;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->Z(Lcom/drakeet/multitype/f;Ljava/util/List;)V

    return-void
.end method

.method private static final Q(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->Z(Lcom/drakeet/multitype/f;Ljava/util/List;)V

    return-void
.end method

.method private static final R(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter3"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->Z(Lcom/drakeet/multitype/f;Ljava/util/List;)V

    return-void
.end method

.method private static final S(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->carDescTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->W()V

    return-void

    :cond_1
    const-string p0, "viewBinding"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final T(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->m()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "\u6ca1\u6709\u4fee\u6539\u8f66\u578b\u6743\u9650,\u8bf7\u8054\u7cfb\u4ee3\u7406"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->l:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->l:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;->b(Landroid/content/Context;)V

    :goto_0
    const-string p0, "\u70b9\u51fb\u8f66\u578b\u9009\u62e9"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private final U()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->e:[Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/a;->a()I

    move-result v5

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->type:I

    if-ne v5, v6, :cond_1

    .line 4
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->backGearSp:Landroid/widget/TextView;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->desc:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string v0, "backTypes"

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final V()V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->d:[Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 4
    iget v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    if-ne v6, v0, :cond_1

    .line 5
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v6, :cond_0

    iget-object v6, v6, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->carGearTypeSp:Landroid/widget/TextView;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->gearName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string v0, "gearTypes"

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final W()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->V()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->U()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->n()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "viewBinding"

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->tvGpsSpeedEnable:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 6
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->tvGpsSpeedEnable:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->tvGpsSpeedEnable:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->tvGpsSpeedEnable:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/i;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->tvGpsSpeedEnable:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/f;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/f;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 11
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method

.method private static final X(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/i;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/d/i;->b(Z)V

    .line 2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->tvGpsSpeedEnable:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/i;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/i;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    const-string p1, "\u542f\u7528Gps\u901f\u5ea6\u8bbe\u7f6e"

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    const-string p1, "\u5173\u95edGps\u901f\u5ea6\u8bbe\u7f6e"

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const-string p0, "viewBinding"

    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final Y()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v2, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/drakeet/multitype/f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 5
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;

    invoke-direct {v4, v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$showVersionList$1$1;-><init>(Landroid/widget/PopupWindow;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-direct {v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;-><init>(Lkotlin/jvm/b/l;)V

    .line 6
    const-class v4, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    invoke-virtual {v2, v4, v3}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->values()[Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 8
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v0, 0x140

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 12
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-virtual {v1, v0, v5, v5, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final Z(Lcom/drakeet/multitype/f;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drakeet/multitype/f;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    :goto_0
    add-int/lit8 v3, v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 7
    instance-of v6, v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    if-eqz v6, :cond_1

    instance-of v6, v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    if-eqz v6, :cond_1

    .line 8
    check-cast v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    instance-of v6, v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    if-eqz v6, :cond_2

    instance-of v6, v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    if-eqz v6, :cond_2

    .line 10
    check-cast v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;->b()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;->c(Z)V

    .line 11
    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    instance-of v6, v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    if-eqz v6, :cond_3

    instance-of v6, v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    if-eqz v6, :cond_3

    .line 13
    check-cast v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->d()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->g(Z)V

    .line 14
    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->h(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->a()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->e(Z)V

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-le v3, v2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_0

    .line 17
    :cond_5
    :goto_2
    invoke-virtual {p1, p2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    :goto_3
    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->i()V

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->Y()V

    return-void
.end method

.method private final i()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    const-string v2, "viewBinding"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->versionName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", \u8bbe\u5907\u53f7:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->Version1:Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->id:I

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->allLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->allLl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :goto_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->allCheckTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/s;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/s;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->allCancelTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/n;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/n;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 10
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method

.method private static final j(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->c()V

    return-void
.end method

.method private static final k(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->j()V

    return-void
.end method

.method private final l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 5
    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lt v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->f:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final o()V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->e:[Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;

    const-string v1, "backTypes"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->e:[Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;

    if-eqz v5, :cond_0

    aget-object v5, v5, v4

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->desc:Ljava/lang/String;

    const-string v6, "backTypes[it].desc"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->backGearSp:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/o;

    invoke-direct {v1, p0, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/o;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;[Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$types"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/k;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/k;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->e:[Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;

    if-eqz p1, :cond_0

    aget-object p1, p1, p2

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->type:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->U()V

    return-void

    :cond_0
    const-string p0, "backTypes"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final r()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    const-string v1, "viewBinding"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->i()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v4, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v5, 0x2

    invoke-static {v0, v4, v2, v5, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v4, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/e;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$initBoxVersion$1;

    invoke-direct {v5, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$initBoxVersion$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/framework/base/e;-><init>(IJLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void

    .line 5
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final s()V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->d:[Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const-string v1, "gearTypes"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->d:[Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    if-eqz v6, :cond_0

    aget-object v6, v6, v5

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->gearName:Ljava/lang/String;

    const-string v7, "gearTypes[it].gearName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    const-string v1, "viewBinding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->carGearTypeSp:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->V()V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->carGearTypeSp:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/t;

    invoke-direct {v1, p0, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/t;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private static final t(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;[Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$values"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/q;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/q;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final u(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->d:[Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    if-eqz p1, :cond_0

    aget-object p1, p1, p2

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->d(I)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->V()V

    return-void

    :cond_0
    const-string p0, "gearTypes"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->R(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->L(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->X(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$c;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->P(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$c;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->M(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u8f86\u4fe1\u53f7\u8c03\u8bd5"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/e;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/e;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u8f66\u8f86\u4fe1\u53f7\u8c03\u8bd5"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/h;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/h;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->r()V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_18

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->divider:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_17

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->reverseSettingTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/j;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/j;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->extendSettingTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/m;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/m;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$c;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$c;-><init>()V

    .line 12
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->recyclerView1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;-><init>()V

    .line 14
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v3, :cond_14

    iget-object v3, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->recyclerView2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1;-><init>()V

    .line 16
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->recyclerView3:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    new-instance v4, Landroidx/lifecycle/m0;

    invoke-direct {v4, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v4

    const-string v5, "ViewModelProvider(this).\u2026eckViewModel::class.java)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;

    iput-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;

    const-string v5, "viewModel"

    if-eqz v4, :cond_12

    .line 18
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->a()Landroidx/lifecycle/z;

    move-result-object v4

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/g;

    invoke-direct {v6, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/g;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$c;)V

    invoke-virtual {v4, p0, v6}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->c()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/l;

    invoke-direct {v4, p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/l;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;)V

    invoke-virtual {p1, p0, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->b()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/d;

    invoke-direct {v2, p0, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/d;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;

    if-eqz p1, :cond_f

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v2

    const-string v3, "signal()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->carDescTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->carDescArrow:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result p1

    const/16 v2, 0x8

    if-nez p1, :cond_0

    .line 25
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->s()V

    .line 26
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->o()V

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->carGearTypeSp:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->backGearSp:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->recyclerView1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 30
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->recyclerView2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 31
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->recyclerView3:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 32
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->m()Z

    move-result p1

    if-nez p1, :cond_3

    .line 33
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->extendSettingTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->reverseSettingTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->n()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    .line 37
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->carSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->reverseSettingTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;->extendSettingTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    return-void

    .line 42
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_12
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_14
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_15
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_16
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_17
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_18
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_19
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
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
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/r;

    invoke-direct {v2, p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/r;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    invoke-direct {v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void

    :cond_0
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
