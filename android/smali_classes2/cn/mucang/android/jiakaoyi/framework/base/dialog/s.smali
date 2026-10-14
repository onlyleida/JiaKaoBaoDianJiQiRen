.class public Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;,
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0008R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$DialogParams;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$DialogParams;)V",
        "imageUrl",
        "",
        "getParams",
        "()Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$DialogParams;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;",
        "setViewBinding",
        "(Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setData",
        "setImageUrl",
        "url",
        "Companion",
        "DialogParams",
        "framework_release"
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
.field public static final d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

.field protected b:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->n(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->p(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->l(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->r(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->m(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->o(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->q(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final k()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "viewBinding.titleTv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->descTv:Landroid/widget/TextView;

    const-string v1, "viewBinding.descTv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->descTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->descTv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/base/dialog/k;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :goto_3
    if-nez v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->leftTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/i;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->leftTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->leftTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->leftTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/n;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :goto_4
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    :goto_5
    if-nez v1, :cond_7

    .line 25
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->leftTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :cond_7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->btnLl:Landroid/widget/LinearLayout;

    const-string v1, "viewBinding.btnLl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->leftTv:Landroid/widget/TextView;

    const-string v5, "viewBinding.leftTv"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_b

    .line 28
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    const-string v5, "viewBinding.rightTv"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v1, 0x1

    :goto_9
    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_a

    :cond_c
    const/16 v1, 0x8

    .line 30
    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->leftTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 32
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->i()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 33
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->rightTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/j;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/j;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 34
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/o;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/o;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->leftTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/l;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/l;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 36
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->closeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/m;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 39
    :cond_d
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->closeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_b
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 41
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 42
    :cond_e
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->picture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dp_150:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/i/a;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->g()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->c()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->e()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->e()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final p(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/j/a;->a()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->c()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->closeIv:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final r(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/j/a;->a()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    return-object v0
.end method

.method protected final c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->t(Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x447f0000    # 1020.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, -0x2

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->k()V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->c:Ljava/lang/String;

    return-void
.end method

.method protected final t(Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;

    return-void
.end method
