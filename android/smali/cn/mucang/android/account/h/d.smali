.class public Lcn/mucang/android/account/h/d;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/h/d$b;,
        Lcn/mucang/android/account/h/d$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/view/View;

.field protected g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

.field protected h:Lcn/mucang/android/account/ui/a;

.field private i:Lcn/mucang/android/account/h/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    return-void
.end method

.method public static A(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)Lcn/mucang/android/account/h/d;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "\u975e\u6cd5\u7684\u9a8c\u8bc1\u7801\u5f39\u6846\u8bf7\u6c42"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcn/mucang/android/account/h/d;

    invoke-direct {v1}, Lcn/mucang/android/account/h/d;-><init>()V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "captcha_response"

    .line 4
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {v1, p0, v0}, Lcn/mucang/android/account/h/d;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic r(Lcn/mucang/android/account/h/d;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/h/d;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic s(Lcn/mucang/android/account/h/d;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/h/d;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/d;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/account/h/d;->i:Lcn/mucang/android/account/h/d$b;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    invoke-interface {v1, v2, v0}, Lcn/mucang/android/account/h/d$b;->a(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcn/mucang/android/account/h/d;->x(Ljava/lang/String;)Lcn/mucang/android/core/api/c/a;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    :goto_0
    return-void
.end method

.method private y(Landroid/app/Dialog;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/o0;->q(Landroid/view/WindowManager;)I

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private z(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/account/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/account/h/d;->a:Landroid/widget/TextView;

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/account/h/d;->b:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcn/mucang/android/framework/account/R$id;->progress_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/mucang/android/account/h/d;->c:Landroid/widget/ProgressBar;

    .line 4
    sget v0, Lcn/mucang/android/framework/account/R$id;->error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/account/h/d;->d:Landroid/widget/TextView;

    .line 5
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/mucang/android/account/h/d;->e:Landroid/widget/EditText;

    .line 6
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_clear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/h/d;->f:Landroid/view/View;

    .line 7
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_refresh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->e:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/h/d;->u(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public B(Lcn/mucang/android/account/h/d$b;)Lcn/mucang/android/account/h/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/h/d;->i:Lcn/mucang/android/account/h/d$b;

    return-object p0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->f:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    goto :goto_1

    .line 4
    :cond_0
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_ok:I

    if-ne p1, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/account/h/d;->v()V

    goto :goto_1

    .line 6
    :cond_1
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_refresh:I

    if-eq p1, v0, :cond_3

    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_view:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_clear:I

    if-ne p1, v0, :cond_4

    .line 8
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->e:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/h/d;->u(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "captcha_response"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    iput-object p1, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 3
    :cond_0
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/account/R$style;->Account__Dialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/account/R$layout;->account__dialog_captcha:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/android/account/h/d;->z(Landroid/view/View;)V

    .line 7
    invoke-direct {p0, p1}, Lcn/mucang/android/account/h/d;->y(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onDetach()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/h/d;->h:Lcn/mucang/android/account/ui/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/h/d;->h:Lcn/mucang/android/account/ui/a;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CaptchaDialog"

    const-string p2, "project in background"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/d;->h:Lcn/mucang/android/account/ui/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/account/h/d;->w()Lcn/mucang/android/account/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/h/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->b:Landroid/widget/ImageView;

    sget v0, Lcn/mucang/android/framework/account/R$drawable;->account__gray_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->c:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getCaptchaUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "?"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "-"

    const-string v4, ""

    if-eq v1, v2, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_s="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&_s="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?_s="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/account/h/d;->b:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/account/h/d$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/h/d$a;-><init>(Lcn/mucang/android/account/h/d;)V

    invoke-static {v1, p1, v0, v2}, Lf/a/a/b/a/a;->j(Landroid/widget/ImageView;Ljava/lang/String;ILcom/bumptech/glide/request/RequestListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/account/h/d;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public w()Lcn/mucang/android/account/ui/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/d;->h:Lcn/mucang/android/account/ui/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/account/ui/a;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/account/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/account/h/d;->h:Lcn/mucang/android/account/ui/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/h/d;->h:Lcn/mucang/android/account/ui/a;

    return-object v0
.end method

.method protected x(Ljava/lang/String;)Lcn/mucang/android/core/api/c/a;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/account/h/d$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    invoke-direct {v0, p0, v1, v2, p1}, Lcn/mucang/android/account/h/d$c;-><init>(Lcn/mucang/android/account/h/d;Landroid/app/Activity;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V

    return-object v0
.end method
