.class public final Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;,
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\u000f\u0010B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u0008\u0010\r\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$DialogParams;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$DialogParams;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setData",
        "show",
        "Builder",
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
.field private final a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

.field private b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->e(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private final c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "viewBinding.titleTv"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->titleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->descTv:Landroid/widget/TextView;

    const-string v3, "viewBinding.descTv"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 5
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->descTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->btnTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->btnTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/b;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->btnTv:Landroid/widget/TextView;

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/a;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/a;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->descTv:Landroid/widget/TextView;

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/e;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$setData$3;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$setData$3;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/framework/base/e;-><init>(IJLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->a()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f39\u7a97("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")\u6d88\u5931"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static final e(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/j/a;->a()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->b:Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
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
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->c()V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f39\u7a97("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")\u663e\u793a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "viewBinding"

    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

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
