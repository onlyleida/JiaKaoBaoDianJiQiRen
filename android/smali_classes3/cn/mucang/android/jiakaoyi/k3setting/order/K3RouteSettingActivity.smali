.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0015J\u0008\u0010!\u001a\u00020\u001dH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\n\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "initOrders",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;",
        "viewBinding$delegate",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;",
        "getViewModel",
        "()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;",
        "viewModel$delegate",
        "getStatName",
        "",
        "initSort",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
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


# instance fields
.field private final a:Lkotlin/f;

.field private final b:Lkotlin/f;

.field private final c:Lcom/drakeet/multitype/f;

.field private final d:Lkotlin/f;

.field private e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$examSite$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$examSite$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->a:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$viewModel$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$viewModel$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->b:Lkotlin/f;

    .line 4
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$viewBinding$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$viewBinding$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->d:Lkotlin/f;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    .line 4
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 4
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 5
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_5
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 8
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->m(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;JIILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Lcom/drakeet/multitype/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    return-object p0
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    return-void
.end method

.method private final l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private final m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    return-object v0
.end method

.method private final n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    return-object v0
.end method

.method private final o()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/g;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/g$f;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/g;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->w(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->z(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->y(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->B(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->x(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->C(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->A(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    const-string v1, "it"

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_4

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    if-nez v3, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_7

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v3, 0x1

    .line 5
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v5}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->f:Ljava/util/List;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    if-le v4, v0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v1, 0x0

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->i(JLjava/util/List;Lkotlin/jvm/b/l;)V

    goto :goto_5

    :cond_9
    const-string p0, "\u6ca1\u6709\u4fee\u6539\u6570\u636e"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->h:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "it.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, "viewModel.itemList.value!!"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6307\u4ee4\u8bbe\u7f6e"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p1, "\u6ca1\u6709\u8003\u573a\u6570\u636e"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/g;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/g;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8def\u7ebf\u6307\u4ee4\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v1, 0xff09

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$itemBinder$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$itemBinder$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;-><init>(Lkotlin/jvm/b/l;)V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->v(Lkotlin/jvm/b/l;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    .line 11
    const-class v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {v0, v1, p1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->o()V

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/k;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/k;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 15
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->saveTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/i;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/i;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->addTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/h;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/m;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/m;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/j;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/j;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->m()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/l;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/l;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->n()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->m(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;JIILjava/lang/Object;)V

    return-void
.end method
