.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;
.super Lf/a/a/e/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$a;,
        Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;",
        "Lcn/mucang/android/ui/framework/activity/BaseActivity;",
        "()V",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "routeType",
        "",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;",
        "getStatName",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field public static final f:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private final b:Lkotlin/f;

.field private c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

.field private d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->f:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/a/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$examSite$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$examSite$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->b:Lkotlin/f;

    const-string v0, "2"

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->e:Ljava/lang/String;

    return-void
.end method

.method private final g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->o(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$c;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->p(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$c;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->q(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->r(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->s(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$onCreate$2$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$onCreate$2$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->s(JLkotlin/jvm/b/a;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$c;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Ljava/util/List;)V
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

    const/4 p2, 0x0

    const-string v0, "viewBinding"

    if-eqz p0, :cond_1

    .line 4
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$b;->a:[I

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$b;->a:[I

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 7
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->r(ZJLjava/lang/String;)V

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

    const-string v0, "\u8def\u7ebf\u91cd\u7f6e"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lf/a/a/e/a/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/r;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/r;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u91cd\u7f6e\u5185\u5bb9"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v2, "\u91cd\u7f6e"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/m;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/m;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v3, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v3, "ViewModelProvider(this).\u2026uteViewModel::class.java)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$c;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$c;-><init>()V

    .line 11
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;

    const/4 v5, 0x1

    .line 13
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->shape_e0e0e0_divider:I

    .line 14
    invoke-static {v6, v7}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 15
    invoke-direct {v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 17
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 18
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    const-string v4, "viewModel"

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v5

    iget-wide v5, v5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const-string v7, "2"

    invoke-virtual {v3, v2, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->r(ZJLjava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/n;

    invoke-direct {v3, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/n;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity$c;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/o;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/o;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/p;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/p;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteResetActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/q;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/q;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteResetActivity;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
