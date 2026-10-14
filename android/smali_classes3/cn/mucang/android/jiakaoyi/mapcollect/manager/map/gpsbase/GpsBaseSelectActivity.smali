.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;,
        Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$b;,
        Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\n\u000bB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;",
        "()V",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
        "GpsBaseItemBinder",
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
.field public static final c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Ljava/util/List;)V
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
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$c;->a:[I

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

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->g()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9009\u62e9\u57fa\u7ad9"

    return-object v0
.end method

.method protected init()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026aseViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u57fa\u7ad9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    const/4 v2, 0x0

    const-string v3, "viewModel"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;->a()Landroidx/lifecycle/z;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/e;

    invoke-direct {v4, v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;)V

    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cityCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;->c(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/g;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/g;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    return-void

    .line 13
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method
