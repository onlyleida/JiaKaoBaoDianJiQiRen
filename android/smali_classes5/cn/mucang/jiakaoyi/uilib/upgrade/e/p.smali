.class public final Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0007J\u0012\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u000e\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u0010J\u000e\u0010#\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u0010J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020&H\u0007R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/upgrade/update/ApkUpdateDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "version",
        "",
        "title",
        "desc",
        "leftText",
        "rightText",
        "canCancel",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "getCanCancel",
        "()Z",
        "cancelUpdateListener",
        "Landroid/view/View$OnClickListener;",
        "getDesc",
        "()Ljava/lang/String;",
        "setDesc",
        "(Ljava/lang/String;)V",
        "getLeftText",
        "getRightText",
        "startUpdateListener",
        "getTitle",
        "getVersion",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;",
        "initDialog",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setCancelUpdateListener",
        "onClickListener",
        "setStartUpdateListener",
        "updateProgress",
        "process",
        "",
        "uilib_release"
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
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->d:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->e:Ljava/lang/String;

    .line 7
    iput-boolean p7, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->upgradeBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->txtProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->upgradeBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->llBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final f(F)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->upgradeBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->txtProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->llBtn:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x64

    int-to-float v3, v0

    mul-float p1, p1, v3

    float-to-int p1, p1

    .line 4
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->upgradeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ne p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_12

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x447f0000    # 1020.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x44f00000    # 1920.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 8
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->versionTv:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->versionTv:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :goto_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->b:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->c:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v2, 0x8

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->leftTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->leftTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->i:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_8

    .line 18
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->leftTv:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_8
    :goto_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 20
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->rightTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_a
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->rightTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->h:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_c

    .line 23
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->g:Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;

    if-eqz v2, :cond_b

    iget-object v0, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;->rightTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_c
    :goto_5
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->f:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 25
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->f:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 27
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->c()V

    return-void

    .line 28
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_12
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
