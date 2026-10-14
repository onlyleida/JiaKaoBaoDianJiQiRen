.class public Lcn/mucang/sundial/library/widget/LoadingDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final progressBar:Landroid/widget/ProgressBar;

.field private final tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$style;->Sundial_LoadingDialog:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/sundial/library/widget/LoadingDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    sget p1, Lcn/mucang/sundial/library/R$layout;->tt__loading_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcn/mucang/sundial/library/R$id;->tv:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/LoadingDialog;->tv:Landroid/widget/TextView;

    .line 5
    sget p1, Lcn/mucang/sundial/library/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/LoadingDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public showLoading(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/sundial/library/widget/LoadingDialog;->showLoading(Ljava/lang/String;Z)V

    return-void
.end method

.method public showLoading(Ljava/lang/String;Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/LoadingDialog;->tv:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/LoadingDialog;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/LoadingDialog;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
