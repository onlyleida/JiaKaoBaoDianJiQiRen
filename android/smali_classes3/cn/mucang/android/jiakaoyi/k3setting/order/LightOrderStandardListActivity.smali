.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;",
        "()V",
        "curConfigId",
        "",
        "getCurConfigId",
        "()I",
        "curConfigId$delegate",
        "Lkotlin/Lazy;",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "onStandardSelected",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;",
        "getStatName",
        "",
        "init",
        "",
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


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;

.field private final d:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity$examSite$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity$examSite$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity$curConfigId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity$curConfigId$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->c:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/x0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/x0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final k()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final m(Lcom/drakeet/multitype/f;Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Ljava/util/List;)V
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

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity$a;->a:[I

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

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->k()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;->i(J)V

    :goto_0
    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/drakeet/multitype/f;Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->m(Lcom/drakeet/multitype/f;Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->u(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->o(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key.chooseResult"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bc4\u5224\u6307\u4ee4\u5217\u8868"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->k()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u6ca1\u6709\u8003\u573a\u6570\u636e"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u8bc4\u5224\u6807\u51c6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/v0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/v0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/x;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->j()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/x;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;I)V

    .line 9
    const-class v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;->j()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/w0;

    invoke-direct {v2, v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/w0;-><init>(Lcom/drakeet/multitype/f;Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/y0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/y0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityLightOrderStandarListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/z0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/z0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 15
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->k()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderStandardListActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;->i(J)V

    :goto_2
    return-void
.end method
