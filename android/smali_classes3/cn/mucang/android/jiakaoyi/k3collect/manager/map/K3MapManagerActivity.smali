.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$a;,
        Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u000bH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;",
        "()V",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;",
        "getStatName",
        "",
        "init",
        "",
        "onResume",
        "Companion",
        "MapCollectK3_release"
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
.field public static final d:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

.field private c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    return-object p0
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->J(Lkotlin/jvm/b/t;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "type_collect"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$b;->a:[I

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 7
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->o(Z)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->l(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->o(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->k(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->p(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->m(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->n(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u79d1\u4e09\u9ad8\u7cbe\u5ea6\u5730\u56fe\u7ba1\u7406"

    return-object v0
.end method

.method protected init()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/m0$b;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    invoke-interface {v0, v1}, Landroidx/lifecycle/m0$b;->create(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "defaultViewModelProvider\u2026MapViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/l;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9ad8\u7cbe\u5ea6\u5730\u56fe\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->newSiteTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/j;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$c;

    invoke-direct {v2, v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    const/4 v2, 0x0

    const-string v3, "viewModel"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->n()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/n;

    invoke-direct {v4, v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/n;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/o;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/k;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapManagerBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/m;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    return-void

    .line 14
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->o(Z)V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
