.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012 \u0010\n\u001a\u001c\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u001c\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionInputDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "frontDistance",
        "",
        "backDistance",
        "headDistance",
        "onConfirm",
        "Lkotlin/Function3;",
        "",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/Step;DDDLkotlin/jvm/functions/Function3;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private final a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field private final b:D

.field private final c:D

.field private final d:D

.field private final e:Lkotlin/jvm/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/q<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/Step;DDDLkotlin/jvm/b/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "DDD",
            "Lkotlin/jvm/b/q<",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConfirm"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->b:D

    .line 4
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->c:D

    .line 5
    iput-wide p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->d:D

    .line 6
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->e:Lkotlin/jvm/b/q;

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->d(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->c(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->front3:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/l;->h(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "\u8bf7\u8f93\u5165\u53f3\u524d\u8f6e\u4e0e\u8fb9\u7ebf\u7684\u6d4b\u91cf\u8ddd\u79bb"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->back3:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/l;->h(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "\u8bf7\u8f93\u5165\u53f3\u540e\u8f6e\u4e0e\u8fb9\u7ebf\u7684\u6d4b\u91cf\u8ddd\u79bb"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->head3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/l;->h(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v3, :cond_2

    const-string p0, "\u8bf7\u8f93\u5165\u4fdd\u9669\u6760\u4e0e7-8\u7ebf\u7684\u6d4b\u91cf\u8ddd\u79bb"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->e:Lkotlin/jvm/b/q;

    invoke-interface {v1, p1, v2, v0}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void

    .line 10
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->stepTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->front2:Landroid/widget/TextView;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->b:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->back2:Landroid/widget/TextView;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->c:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->head2:Landroid/widget/TextView;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->d:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->headGroup:Landroidx/constraintlayout/widget/Group;

    const-string v3, "viewBinding.headGroup"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 11
    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_925:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 15
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->leftTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/f;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;->rightTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/g;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
