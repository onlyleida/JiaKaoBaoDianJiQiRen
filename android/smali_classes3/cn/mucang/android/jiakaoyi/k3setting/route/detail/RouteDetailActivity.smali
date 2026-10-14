.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$a;,
        Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0003J%\u0010\u0011\u001a\u0002H\u0012\"\u0008\u0008\u0000\u0010\u0012*\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "()V",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "route",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "getRoute",
        "()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "route$delegate",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "getStatName",
        "",
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
.field public static final d:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$route$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$route$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$examSite$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$examSite$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->c:Lkotlin/f;

    return-void
.end method

.method private final g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private final h()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    return-object v0
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->m(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Landroid/view/View;)V
    .locals 0

    const-string p2, "$viewModel"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "supportFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->n(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "viewBinding"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const/16 v4, 0x8

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    return-void

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/j0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/j0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "modelClass.getConstructo\u2026Instance(examSite, route)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/lifecycle/j0;

    return-object p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8def\u7ebf\u91c7\u96c6"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/c;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    const-class v2, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v2, "ViewModelProvider(this, \u2026MapViewModel::class.java)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u9884\u89c8\u8def\u7ebf"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    .line 10
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->contentLayout:I

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/s;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/s;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/u;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()I

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v4, "\u91c7\u96c6\u8def\u7ebf"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v3, "\u4fdd\u5b58"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;

    if-eqz v2, :cond_5

    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/d;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/d;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    .line 20
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->contentLayout:I

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/u;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()I

    .line 22
    :goto_1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026tepViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    .line 24
    iget-wide v3, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->m(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;JIILjava/lang/Object;)V

    :goto_2
    return-void

    .line 25
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
