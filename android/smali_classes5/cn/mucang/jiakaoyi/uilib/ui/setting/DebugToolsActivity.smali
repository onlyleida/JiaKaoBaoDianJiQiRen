.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;",
        "()V",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "getLoadingDialog",
        "()Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "setLoadingDialog",
        "(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;)V",
        "getStatName",
        "",
        "init",
        "",
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


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Ljava/util/List;)V
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

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$a;->a:[I

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

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->g()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$a;->a:[I

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
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->j()Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p0

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
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->j()Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p0

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

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->u(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->j()Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final o(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;)V
    .locals 1

    const-string v0, "$viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;->j()V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->m(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->n(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->o(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8c03\u8bd5\u5de5\u5177"

    return-object v0
.end method

.method protected init()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8c03\u8bd5\u5de5\u5177"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/y;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;-><init>()V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->shape_e0e0e0_divider:I

    .line 6
    invoke-static {v1, v2}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/mucang/android/jiakaoyi/uilib/R$dimen;->dp_16:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x1

    .line 12
    invoke-direct {v3, v6, v1, v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;-><init>(ILandroid/graphics/drawable/Drawable;II)V

    .line 13
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    new-instance v1, Landroidx/lifecycle/m0;

    invoke-direct {v1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v1

    const-string v2, "ViewModelProvider(this).\u2026olsViewModel::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;

    .line 16
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;->i()Landroidx/lifecycle/z;

    move-result-object v2

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/v;

    invoke-direct {v3, v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/v;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 17
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/w;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/w;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 18
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/x;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/x;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/z;

    invoke-direct {v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/z;-><init>(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 20
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;->j()V

    return-void
.end method

.method public final j()Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-object v0
.end method

.method public final u(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method
