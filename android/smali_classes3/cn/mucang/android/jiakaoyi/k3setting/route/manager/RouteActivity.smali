.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;",
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
.field public static final b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity$a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    const-class v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    .line 3
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    .line 3
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent(\n                \u2026ntent.extras ?: Bundle())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8def\u7ebf\u7ba1\u7406\u9875\u9762"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->backIv:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/b;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u8def\u7ebf\u7ba1\u7406"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->actionTv:Landroid/widget/TextView;

    const-string v3, "\u5730\u56fe\u7ba1\u7406"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->actionTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->actionTv:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/c;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->action2Tv:Landroid/widget/TextView;

    const-string v4, "\u8def\u7ebf\u6307\u4ee4"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->action2Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteActivityBinding;->action2Tv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->contentLayout:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->g:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$a;->a(Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/u;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()I

    :cond_1
    return-void

    .line 15
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
