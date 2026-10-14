.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\r\u000eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;",
        "getStatName",
        "",
        "init",
        "",
        "loadData",
        "CarItemBinder",
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


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;

.field private final c:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V

    .line 4
    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-virtual {v6, v1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 6
    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->c:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;

    return-object p0
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->c:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity$b;->a:[I

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

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->s()V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V

    return-void
.end method

.method private final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;->k()V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u578b\u6570\u636e\u5e93"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026istViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8f66\u578b\u6570\u636e\u5e93"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/s;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;->j()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/t;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/u;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/v;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/v;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;->s()V

    return-void

    .line 11
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
