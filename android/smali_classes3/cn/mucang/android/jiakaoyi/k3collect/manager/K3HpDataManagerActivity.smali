.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;",
        "()V",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
        "MapCollectK3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


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

.method private static final j(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;->d:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;->k(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;->j(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;->l(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9ad8\u7cbe\u5ea6\u6570\u636e\u7ba1\u7406"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/b;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9ad8\u7cbe\u5ea6\u6570\u636e\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;->tvGpsSetup:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3HpDataManagerBinding;->gpsTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapDataManager:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->carDataManager:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/c;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/K3HpDataManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
