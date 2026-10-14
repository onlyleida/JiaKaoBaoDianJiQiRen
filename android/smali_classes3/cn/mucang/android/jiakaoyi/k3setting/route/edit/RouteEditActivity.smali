.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$a;,
        Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$b;,
        Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 12\u00020\u00012\u00020\u0002:\u000212B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0005H\u0002J%\u0010#\u001a\u0002H$\"\u0008\u0008\u0000\u0010$*\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H$0\'H\u0016\u00a2\u0006\u0002\u0010(J\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020!H\u0002J\u0012\u0010,\u001a\u00020!2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0014J\u0008\u0010/\u001a\u00020!H\u0014J\u0008\u00100\u001a\u00020!H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "()V",
        "currentTab",
        "Landroid/view/View;",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "jLoadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "k3RouteStepViewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;",
        "getK3RouteStepViewModel",
        "()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;",
        "k3TeachSettingViewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;",
        "getK3TeachSettingViewModel",
        "()Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;",
        "loadingObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        "pageLoadingObserver",
        "route",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
        "changeIndicator",
        "",
        "view",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "getStatName",
        "",
        "initViews",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "save",
        "Companion",
        "RouteEditFragmentAdapter",
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
.field public static final i:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$a;


# instance fields
.field private final a:Lkotlin/f;

.field private b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

.field private c:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

.field private d:Landroid/view/View;

.field private e:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

.field private f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private final g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->i:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$examSite$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$examSite$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->a:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->g:Landroidx/lifecycle/a0;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->h:Landroidx/lifecycle/a0;

    return-void
.end method

.method private final g(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->d:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2
    :goto_0
    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    const/4 v2, 0x0

    const-string v3, "viewBinding"

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->rootCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/c;->m(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->indicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5, v4, v5}, Landroidx/constraintlayout/widget/c;->p(IIII)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->indicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x2

    invoke-virtual {v0, v1, v6, v4, v6}, Landroidx/constraintlayout/widget/c;->p(IIII)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->rootCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/c;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 7
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->d:Landroid/view/View;

    return-void

    .line 9
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private final i()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026tepViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    return-object v0
.end method

.method private final j()Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this, \u2026ingViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    return-object v0
.end method

.method private final k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->viewPager:Lcn/mucang/android/core/widget/CommonViewPager;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$b;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "supportFragmentManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->viewPager:Lcn/mucang/android/core/widget/CommonViewPager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/mucang/android/core/widget/CommonViewPager;->setScrollable(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->backIv:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/f;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/f;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->saveTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->mapModeTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->orderModeTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->z()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->viewPager:Lcn/mucang/android/core/widget/CommonViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->g(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p0, "viewBinding"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->viewPager:Lcn/mucang/android/core/widget/CommonViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->g(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p0, "viewBinding"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->w(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->m(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->y(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->x(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_3
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "\u52a0\u8f7d\u4e2d"

    .line 5
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->i()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    iget-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->m(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;JIILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->c:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->n(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V

    .line 3
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->j()Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->s()V

    return-void

    :cond_1
    const-string p0, "route"

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    const-string v2, "viewBinding"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_4

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    if-nez v0, :cond_2

    :goto_1
    move-object v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;

    :goto_2
    if-eqz v0, :cond_5

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->j()Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->q()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->i()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 6
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_4

    .line 7
    :cond_6
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_4

    .line 9
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 10
    :cond_8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->v()V

    :goto_0
    return-void
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

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "modelClass.getConstructo\u2026va).newInstance(examSite)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/lifecycle/j0;

    return-object p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8def\u7ebf\u7f16\u8f91"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key.editRoute"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;-><init>()V

    :cond_1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->c:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    const-string v0, "viewBinding"

    if-eqz p1, :cond_d

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 5
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v2, "ViewModelProvider(this).\u2026eConfigModel::class.java)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->c:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    const-string v5, "route"

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    invoke-virtual {p1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;->a(JLjava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->k()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->j()Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->s()V

    .line 9
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->c:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    if-eqz v2, :cond_b

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->n(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V

    .line 11
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 12
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    if-nez p1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->u()V

    .line 14
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->i()Landroidx/lifecycle/z;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->g:Landroidx/lifecycle/a0;

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 15
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->l()Landroidx/lifecycle/z;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->h:Landroidx/lifecycle/a0;

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 16
    :goto_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->j()Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object p1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->g:Landroidx/lifecycle/a0;

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 17
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->j()Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object p1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->h:Landroidx/lifecycle/a0;

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->i()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object p1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->h:Landroidx/lifecycle/a0;

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->i()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v3

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    iget-wide v4, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->m(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;JIILjava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;)V

    invoke-virtual {p1, v2}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditBinding;->mapModeTv:Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->d:Landroid/view/View;

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_4
    return-void

    .line 23
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditActivity;->e:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->B()V

    :goto_0
    return-void
.end method
