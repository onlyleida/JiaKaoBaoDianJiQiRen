.class public final Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;,
        Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;",
        ">;",
        "Landroidx/lifecycle/m0$b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 *2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0004J%\u0010\u0014\u001a\u0002H\u0015\"\u0008\u0008\u0000\u0010\u0015*\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u0018H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0014J\"\u0010\u001e\u001a\u00020\u001d2\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u001d0 H\u0002J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020!H\u0002J \u0010$\u001a\u00020\u001d2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&2\u0006\u0010(\u001a\u00020)H\u0002R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "()V",
        "backupOrReset",
        "",
        "Ljava/lang/Integer;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "loadingObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        "ruleDeductViewModel",
        "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;",
        "tabCountObserver",
        "Lcn/mucang/jiakaoyi/uilib/diff/TabCount;",
        "tabType",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "getStatName",
        "",
        "init",
        "",
        "initTabListener",
        "callback",
        "Lkotlin/Function2;",
        "Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;",
        "selectTab",
        "tabItem",
        "updateDataAdapter",
        "it",
        "",
        "",
        "dataAdapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "Companion",
        "k3setting_release"
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
.field public static final i:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

.field private c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

.field private d:Ljava/lang/Integer;

.field private e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private f:I

.field private final g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/jiakaoyi/uilib/diff/l;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->i:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->f:I

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/backup/n;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/n;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->g:Landroidx/lifecycle/a0;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/backup/m;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/m;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->h:Landroidx/lifecycle/a0;

    return-void
.end method

.method private static final A(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 1

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_MODEL:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLight:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    const-string v0, "viewBinding.tabLight"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final B(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 1

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_GROUP:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLightGroup:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    const-string v0, "viewBinding.tabLightGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final C(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 1

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->ROUTE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRoute:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    const-string v0, "viewBinding.tabRoute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->r(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->v(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic F(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->z(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->p(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->q(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->w(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$stepAdapter$1;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->s(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$stepAdapter$1;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic K(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->B(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->y(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->C(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->u(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic O(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->t(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic P(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->T(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic Q(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->V(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/l;)V

    return-void
.end method

.method public static synthetic R(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->A(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->o(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V

    return-void
.end method

.method private static final T(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    goto :goto_1

    .line 3
    :cond_2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    goto :goto_1

    .line 4
    :cond_4
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p0, ""

    .line 5
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final U(Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRule:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRule:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->setSelectEnable(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabDeduct:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabDeduct:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->setSelectEnable(Z)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLight:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLight:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->setSelectEnable(Z)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLightGroup:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLightGroup:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->setSelectEnable(Z)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRoute:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRoute:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne p1, v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->setSelectEnable(Z)V

    return-void
.end method

.method private static final V(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/l;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->d:Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const-string p1, "\u5907\u6ce8\uff1a\u8bf7\u68c0\u67e5\u62a5\u5907\u5185\u5bb9\uff0c\u62a5\u5907\u540e\uff0c\u5c06\u8986\u76d6\u4e0a\u4e00\u6b21\u7684\u62a5\u5907\u5185\u5bb9\uff0c\u4e14\u65e0\u6cd5\u6d4b\u56de\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c\u3002"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "\u91cd\u7f6e\u540e\uff0c\u4f60\u4fee\u6539\u8fc7\u7684\u89c4\u5219\u53c2\u6570\u5c06\u6062\u590d\u5230\u9ed8\u8ba4\u503c\uff0c\u4e14\u65e0\u6cd5\u64a4\u56de\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c\u3002\u4e0b\u5217\u4e3a\u5c06\u8981\u88ab\u4fee\u6539\u7684\u89c4\u5219\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u66f4\u6539\u3002"

    .line 2
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final W(Ljava/util/List;Lcom/drakeet/multitype/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/drakeet/multitype/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->f:I

    return p0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->U(Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;)V

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->f:I

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->W(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$operationName"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$examSite"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/backup/e;

    invoke-direct {v0, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/e;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/String;)V

    const-string p0, "\u6b63\u5728"

    .line 2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "\u5931\u8d25"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p3, v0, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/String;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$examSite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operationName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_7

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkBox1Rule:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkBox2Deduct:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkBox3Light:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkBox6Route:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "\u8bf7\u52fe\u9009\u4f60\u60f3\u8981\u62a5\u5907\u7684\u5185\u5bb9"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, ""

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkBox1Rule:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/16 v2, 0x2c

    if-eqz v1, :cond_3

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkBox2Deduct:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkBox3Light:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_MODEL:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_GROUP:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkBox6Route:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->ROUTE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u62a5\u5907\uff1aexamSiteId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " types "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (1\u6263\u5206 2\u89c4\u5219 3\u79d1\u4e09\u6307\u4ee4 4\u7ebf\u8def 6\u706f\u5149\u6307\u4ee4 7\u706f\u5149\u7ec4\u5408 8\u6559\u5b66\u89c4\u5219 9\u79d1\u4e09\u6559\u5b66)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/h0;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;-><init>()V

    iget-wide v2, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v1, v2, v3, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;->m(JLjava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 17
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u91cd\u7f6e\uff1aexamSiteId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \u91cd\u7f6e\u706f\u5149\u548c\u706f\u5149\u7ec4\u5408\u6570\u636e"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->A()Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_8

    const-string p1, "\u6210\u529f"

    .line 19
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 20
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_8
    const-string p0, "\u5931\u8d25"

    .line 23
    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$stepAdapter$1;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$stepAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->W(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->W(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->W(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->W(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->W(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private final x(Lkotlin/jvm/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRule:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/backup/i;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/i;-><init>(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabDeduct:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/backup/c;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/c;-><init>(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLight:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/backup/o;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/o;-><init>(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLightGroup:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/backup/h;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/h;-><init>(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRoute:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/backup/j;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/j;-><init>(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final y(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 1

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRule:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    const-string v0, "viewBinding.tabRule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final z(Lkotlin/jvm/b/p;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Landroid/view/View;)V
    .locals 1

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabDeduct:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    const-string v0, "viewBinding.tabDeduct"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/j0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/j0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_exam_site"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "modelClass.getConstructo\u2026ance(examSite.examSiteId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/lifecycle/j0;

    return-object p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "K3\u62a5\u5907\u5185\u5bb9"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_exam_site"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_last_time"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_backup_or_reset"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->d:Ljava/lang/Integer;

    .line 5
    new-instance v2, Landroidx/lifecycle/m0;

    invoke-direct {v2, p0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    const-class v3, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v2

    const-string v3, "ViewModelProvider(this, \u2026iffViewModel::class.java)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    .line 6
    new-instance v2, Landroidx/lifecycle/m0;

    invoke-direct {v2, p0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    const-class v5, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    invoke-virtual {v2, v5}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->d:Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v2, "\u62a5\u5907"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "\u91cd\u7f6e"

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tvLastTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0a\u6b21"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0xff1a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tvExamSite:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u8003\u573a\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u5185\u5bb9"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v5, "\u5168\u90e8"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3setting/backup/d;

    invoke-direct {v5, p0, v2, v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/d;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/backup/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    const-string v1, "\u6b64\u5206\u7c7b\u4e0e\u4e0a\u6b21\u62a5\u5907\u5185\u5bb9\u65e0\u4efb\u4f55\u53d8\u5316"

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->x(Lkotlin/jvm/b/p;)V

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$stepAdapter$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$stepAdapter$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 20
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 22
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    const-string v5, "ruleDeductViewModel"

    const/4 v6, 0x0

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->p()Landroidx/lifecycle/z;

    move-result-object v2

    new-instance v7, Lcn/mucang/android/jiakaoyi/k3setting/backup/g;

    invoke-direct {v7, p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/g;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$stepAdapter$1;)V

    invoke-virtual {v2, p0, v7}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->o()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/backup/l;

    invoke-direct {v2, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/l;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->l()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/backup/k;

    invoke-direct {v2, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/k;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    const-string v2, "viewModel"

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->r()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v7, Lcn/mucang/android/jiakaoyi/k3setting/backup/b;

    invoke-direct {v7, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;)V

    invoke-virtual {v0, p0, v7}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 27
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->s()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v7, Lcn/mucang/android/jiakaoyi/k3setting/backup/f;

    invoke-direct {v7, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/f;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;)V

    invoke-virtual {v0, p0, v7}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->t()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v7, Lcn/mucang/android/jiakaoyi/k3setting/backup/p;

    invoke-direct {v7, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/p;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$b;)V

    invoke-virtual {v0, p0, v7}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 29
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->p()Landroidx/lifecycle/z;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 30
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 31
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 32
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 33
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->d:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 34
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkLayout1:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 35
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkLayout3:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->checkLayout6:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRule:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRule:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->setSelectEnable(Z)V

    .line 40
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabDeduct:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLight:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLightGroup:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRoute:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->c:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->u(Z)V

    goto :goto_3

    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 45
    :cond_4
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->d:Ljava/lang/Integer;

    const/16 v4, 0x65

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 46
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRule:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabDeduct:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLight:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLight:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->setSelectEnable(Z)V

    .line 50
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabLightGroup:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->tabRoute:Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->v()V

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    :cond_7
    :goto_3
    return-void

    .line 54
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 55
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 56
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 58
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 59
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 60
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 61
    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 62
    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 63
    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6
.end method
