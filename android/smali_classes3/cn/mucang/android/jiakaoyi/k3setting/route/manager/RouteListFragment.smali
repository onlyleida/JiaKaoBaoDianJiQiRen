.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$a;,
        Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000cH\u0002J\u0008\u0010\u0018\u001a\u00020\u000eH\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0012\u0010\u001a\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\"\u001a\u00020\u0016H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;",
        "()V",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "selectTab",
        "Landroid/view/View;",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;",
        "changeTab",
        "",
        "view",
        "getStatName",
        "initView",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onResume",
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
.field public static final g:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$a;


# instance fields
.field private final b:Lkotlin/f;

.field private c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

.field private d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

.field private e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->g:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/b;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$examSite$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$examSite$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->b:Lkotlin/f;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->u(Landroid/view/View;)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "it.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->f:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    const-string v1, "viewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->p()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    const-string v4, "viewBinding"

    if-eqz v3, :cond_f

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->myRoute:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->myRoute:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->commendRoute:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->commendRoute:Landroid/widget/TextView;

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->nearRoute:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->nearRoute:Landroid/widget/TextView;

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object v0, v2

    .line 6
    :goto_1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->f:Landroid/view/View;

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 8
    :goto_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e;->c:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e$a;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->q(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/t/e$a;->a(Z)V

    const-string v0, "it"

    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 12
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_3

    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_a
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_3
    return-void

    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final E(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$b;->a:[I

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 10
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final F(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->r(ZJLjava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final G(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->f:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->y(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->F(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->G(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->B(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->C(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic M(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->z(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->E(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic O(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->A(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->D(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    return-object p0
.end method

.method private final u(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->f:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    const-string p1, "1"

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->r(ZJLjava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private final w()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->f:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "1"

    :cond_2
    return-object v1
.end method

.method private final x()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    const-string v1, "viewBinding"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->myRoute:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_13

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->myRoute:Landroid/widget/TextView;

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->f:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/d;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->commendRoute:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/i;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/i;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->nearRoute:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/k;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/k;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->newRouteTv:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/g;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/g;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    .line 8
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v4, :cond_e

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->shape_e0e0e0_divider:I

    .line 12
    invoke-static {v6, v7}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 13
    invoke-direct {v5, v3, v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v3

    if-nez v3, :cond_1

    .line 17
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;

    invoke-direct {v4, v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_1
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    const-string v4, "viewModel"

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v5

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/h;

    invoke-direct {v6, p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/h;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;)V

    invoke-virtual {v3, v5, v6}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/l;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/l;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v0, v3, v5}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/j;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/j;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v0, v3, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/e;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/e;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v0, v3}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->resetRouteTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/f;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/f;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->resetRouteTv:Landroid/widget/TextView;

    const-string v3, "viewBinding.resetRouteTv"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 25
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->menuLl:Landroid/widget/LinearLayout;

    const-string v4, "viewBinding.menuLl"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->divider:Landroid/view/View;

    const-string v4, "viewBinding.divider"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    return-void

    .line 34
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_12
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->u(Landroid/view/View;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->u(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6211\u7684\u8def\u7ebf\u9875\u9762"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v0, "ViewModelProvider(requir\u2026uteViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->x()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteListFragmentBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->r(ZJLjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
