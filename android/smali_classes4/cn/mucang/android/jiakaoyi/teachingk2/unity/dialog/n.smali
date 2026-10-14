.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u001aB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012.\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005j\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007`\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0012\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0015J\u0010\u0010\u0011\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0006H\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R9\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005j\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/ErrorPointDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "data",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;",
        "Lkotlin/collections/HashMap;",
        "(Landroid/app/Activity;Ljava/util/HashMap;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "currentIndex",
        "",
        "getData",
        "()Ljava/util/HashMap;",
        "selectStep",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;",
        "changeError",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "item",
        "ErrorItemBinder",
        "teachbase_release"
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
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->k(Ljava/lang/String;)V

    return-void
.end method

.method private final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    invoke-static {v0, v2}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    const-string v3, "viewBinding"

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->errorTv:Landroid/widget/TextView;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->getErrorDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->imageIv:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcn/mucang/android/image/view/MucangImageView;->d(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->leftIv:Landroid/widget/ImageView;

    const-string v2, "viewBinding.leftIv"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0x8

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 5
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->rightIv:Landroid/widget/ImageView;

    const-string v1, "viewBinding.rightIv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lkotlin/collections/s;->l(Ljava/util/List;)I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_3
    xor-int/2addr v1, v5

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/16 v4, 0x8

    .line 7
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->j(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c()V

    return-void
.end method

.method private final k(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->e:I

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->stepRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c()V

    return-void

    :cond_1
    const-string p1, "viewBinding"

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    move-result-object p1

    const-string v1, "inflate(layoutInflater)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v3, 0x4499c000    # 1230.0f

    mul-float v0, v0, v3

    const/high16 v3, 0x44f00000    # 1920.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v3, -0x2

    .line 10
    invoke-virtual {p1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->leftIv:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->rightIv:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogErrorPointBinding;->stepRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 15
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;)V

    .line 16
    const-class v1, Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "data.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 18
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 19
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/s;->b0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "data.keys.first()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->k(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/n;->a:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->a(Landroid/app/Dialog;Landroid/app/Activity;)V

    return-void

    .line 22
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
