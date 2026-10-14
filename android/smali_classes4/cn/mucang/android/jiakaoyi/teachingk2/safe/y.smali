.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u000cH\u0002J\u0006\u0010\u000f\u001a\u00020\u000cJ\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u000e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0008\u0010\u0017\u001a\u00020\u000cH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "maxDis",
        "",
        "outSize",
        "Landroid/graphics/Point;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;",
        "checkValidPos",
        "",
        "expand",
        "fold",
        "onBrake",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onRadarSignal",
        "it",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveRadarSignal;",
        "show",
        "updateBallView",
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
.field private a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

.field private final b:Landroid/graphics/Point;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->out_side_click_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b:Landroid/graphics/Point;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b()V

    return-void
.end method

.method private final b()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, 0x0

    if-gez v1, :cond_3

    .line 4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5
    :cond_3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_4

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 7
    :cond_4
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v1, :cond_5

    .line 8
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 9
    :cond_5
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_6

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_6
    return-void
.end method

.method private final c()V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/j0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->f(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    const-string v1, "viewBinding"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivBall:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->bgView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_10:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_136:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 9
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 11
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final d()V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/j0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->f(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    const-string v2, "viewBinding"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivBall:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->bgView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_10:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_136:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 9
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->m()V

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b()V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 12
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->i(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->d()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->c()V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private final m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivBall:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->c:I

    int-to-float v3, v0

    const/16 v4, 0x64

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->tvDistance:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    const-wide v3, 0xff23ceadL

    goto :goto_0

    :cond_0
    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1

    const-wide v3, 0xffefbd2cL

    goto :goto_0

    :cond_1
    const-wide v3, 0xfff75c60L

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivBall:Landroidx/constraintlayout/widget/ConstraintLayout;

    long-to-int v1, v3

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void

    .line 6
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final h()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/j0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->c()V

    :cond_0
    return-void
.end method

.method public final l(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    const/4 v2, 0x0

    const-string v3, "viewBinding"

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->frontRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b([I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->backRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b([I)V

    const-string v1, "frontRadarDis"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/k;->R([I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const-string v2, "backRadarDis"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/k;->R([I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->c:I

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->m()V

    return-void

    .line 8
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->getRoot()Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    const/16 p1, 0xa06

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 8
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v2, 0x53

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    :goto_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->b:Landroid/graphics/Point;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 10
    :goto_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->scrollableView:Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;)V

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView;->setScrollListener(Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView$a;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivArrow:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->ivBall:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->frontRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->setConfig(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalSmallBinding;->backRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->setConfig(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/j0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 17
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->c()V

    goto :goto_6

    .line 18
    :cond_8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->d()V

    :goto_6
    return-void

    .line 19
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
