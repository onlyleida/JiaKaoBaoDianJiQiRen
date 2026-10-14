.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0004\u0012\u00020\n0\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014R \u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0004\u0012\u00020\n0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/SelectErrorDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "showStop",
        "",
        "onConfirm",
        "Lkotlin/Function1;",
        "",
        "",
        "",
        "(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;",
        "views",
        "",
        "Landroid/widget/CheckBox;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "TeachingK2_release"
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
.field private final a:Z

.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConfirm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->a:Z

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->b:Lkotlin/jvm/b/l;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 4
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\u8bf7\u9009\u62e9\u9519\u8bef\u68c0\u6d4b\u9879\u7c7b\u578b"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->b:Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_f

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->leftCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.leftCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->rightCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.rightCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->moreLeftCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.moreLeftCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->moreRightCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.moreRightCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_b

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->lightCloseCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.lightCloseCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->lightErrorCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.lightErrorCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_9

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->brakeCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.brakeCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->noHeadCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.noHeadCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->leftHeadCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.leftHeadCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->rightHeadCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.rightHeadCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->customCb:Landroid/widget/CheckBox;

    const-string v4, "viewBinding.customCb"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$dimen;->rpx_800:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 18
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->stopGroup:Landroidx/constraintlayout/widget/Group;

    const-string v3, "viewBinding.stopGroup"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->a:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 19
    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/v1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/v1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogSelectErrorBinding;->confirmTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/u1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/u1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/g2;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
