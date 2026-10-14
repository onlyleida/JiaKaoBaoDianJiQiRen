.class public final Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "mBrandId",
        "",
        "getMBrandId",
        "()I",
        "mBrandId$delegate",
        "Lkotlin/Lazy;",
        "getStatName",
        "",
        "init",
        "",
        "isBrand",
        "",
        "loadData",
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


# instance fields
.field private final b:Lkotlin/f;

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
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity$mBrandId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity$mBrandId$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->c:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->s()V

    return-void
.end method

.method private final m()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->j()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->l(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->v(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->k(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->u(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->t(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    return-void
.end method

.method private final s()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;-><init>()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;->m()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;->p(I)Ljava/util/List;

    move-result-object v0

    .line 5
    :goto_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/d;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;Ljava/util/List;)V

    invoke-direct {v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string p0, "\u52a0\u8f7d\u5217\u8868\u5931\u8d25"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u578b\u54c1\u724c\u9009\u62e9"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u9009\u62e9\u54c1\u724c"

    goto :goto_0

    :cond_0
    const-string v1, "\u9009\u62e9\u8f66\u7cfb"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->c:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/g;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity$init$2;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity$init$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/g;-><init>(Lkotlin/jvm/b/l;)V

    .line 5
    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/CarCollectSelectModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;->s()V

    return-void
.end method
