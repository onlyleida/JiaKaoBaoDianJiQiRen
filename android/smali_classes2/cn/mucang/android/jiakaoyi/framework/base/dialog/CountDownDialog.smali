.class public final Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u000cH\u0003R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$DialogParams;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$DialogParams;)V",
        "mainLaunch",
        "Lkotlinx/coroutines/Job;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setData",
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


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

.field private b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

.field private c:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    return-object p0
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->i(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->g(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/view/View;)V

    return-void
.end method

.method private final f()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 2
    :cond_0
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v4, :cond_e

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->rightTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->rightTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    const/16 v4, 0x8

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->rightTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->secondText:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->titleTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->rightTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->rightTv:Landroid/widget/TextView;

    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/base/dialog/e;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->leftTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->leftTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->leftTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :goto_2
    if-nez v0, :cond_5

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->leftTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 16
    :cond_5
    :goto_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/d;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 17
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7;

    invoke-direct {v7, p0, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Lkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->c:Lkotlinx/coroutines/t1;

    return-void

    .line 18
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 19
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 20
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 21
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 23
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 24
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 25
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 26
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->dismiss()V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->g()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->dismiss()V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->e()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->b()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->c:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "mainLaunch"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->a()Z

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

    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dialog_default_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x2

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->f()V

    return-void

    :cond_1
    const-string p1, "viewBinding"

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
