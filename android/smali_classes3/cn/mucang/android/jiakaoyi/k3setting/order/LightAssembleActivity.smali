.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u000eH\u0003J\u0012\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u000eH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;",
        "getStatName",
        "",
        "initList",
        "",
        "initSort",
        "initTitle",
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
.field private a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

.field private b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

.field private final c:Lcom/drakeet/multitype/f;

.field private d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->c:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->g:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$a;->b(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$a;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)Lcom/drakeet/multitype/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->c:Lcom/drakeet/multitype/f;

    return-object p0
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    return-object p0
.end method

.method private final i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->c:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/v;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$initList$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/v;-><init>(ZLkotlin/jvm/b/p;ILkotlin/jvm/internal/o;)V

    .line 2
    const-class v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    const-string v1, "viewBinding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    const-string v2, "viewModel"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/v;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/v;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/z;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/z;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/d0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/d0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/c0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/c0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v5

    .line 9
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v5

    .line 10
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v5

    .line 11
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v5

    .line 12
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v5

    .line 13
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v5
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->c:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_1

    .line 4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$a;->a:[I

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$a;->a:[I

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 8
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->q(Z)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final n()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/g;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/g$f;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/g;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final o()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->divider:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u706f\u5149\u7ec4\u5408"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v3, "\u91cd\u7f6e"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v3, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/a0;

    invoke-direct {v4, v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/a0;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/w;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/w;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "\u70b9\u51fb\u91cd\u7f6e\u706f\u5149\u7ec4\u5408  "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->i:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;->c(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    :goto_0
    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->q(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->A(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->p(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->z(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->m(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->t()V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u706f\u5149\u6307\u4ee4"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    .line 3
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026ghtViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->o()V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->i()V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->n()V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->saveTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/b0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleActivityBinding;->addTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/x;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/x;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->q(Z)V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
