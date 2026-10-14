.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;,
        Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;",
        "()V",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;",
        "getStatName",
        "",
        "init",
        "",
        "loadData",
        "firstLoad",
        "",
        "Companion",
        "mapcollect_release"
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
.field public static final c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;

.field private static d:Z

.field private static e:Z


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method public static final synthetic j()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->e:Z

    return v0
.end method

.method public static final synthetic k()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->d:Z

    return v0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->z(Z)V

    return-void
.end method

.method public static final synthetic n(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->e:Z

    return-void
.end method

.method public static final synthetic o(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->d:Z

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final q(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelName:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelCode:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->isManager:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->N(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Ljava/util/List;)V
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

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$b;->a:[I

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

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->z(Z)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->t(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V

    return-void
.end method

.method public static synthetic v(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->q(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->s(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->r(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;Landroid/view/View;)V

    return-void
.end method

.method private final z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;->q(ZI)V

    return-void

    :cond_1
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u578b\u6570\u636e\u5e93"

    return-object v0
.end method

.method protected init()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "\u4ee3\u7406\u8f66\u8eab\u6570\u636e"

    goto :goto_0

    :cond_0
    const-string v1, "\u8f66\u578b\u6570\u636e\u5e93"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/o;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->newCarTv:Landroid/widget/TextView;

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->d:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->e:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->newCarTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/l;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/l;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/m0$b;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    invoke-interface {v0, v1}, Landroidx/lifecycle/m0$b;->create(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "defaultViewModelProvider\u2026lDbViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V

    .line 10
    new-instance v1, Landroidx/recyclerview/widget/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$c;

    invoke-direct {v3, v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    const/4 v3, 0x0

    const-string v4, "viewModel"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;->p()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v1

    new-instance v5, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/n;

    invoke-direct {v5, v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/n;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V

    invoke-virtual {v1, p0, v5}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/m;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarModelDbBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/k;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 18
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->z(Z)V

    return-void

    .line 19
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 20
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method
