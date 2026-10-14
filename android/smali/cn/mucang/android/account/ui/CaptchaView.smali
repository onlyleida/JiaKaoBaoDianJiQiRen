.class public Lcn/mucang/android/account/ui/CaptchaView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/b;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCaptcha()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCode()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProgress()Landroid/widget/ProgressBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRefresh()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->d:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->a:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->b:Landroid/widget/ProgressBar;

    .line 4
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_error:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->c:Landroid/widget/TextView;

    .line 5
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_refresh:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->d:Landroid/view/View;

    .line 6
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_code:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/mucang/android/account/ui/CaptchaView;->e:Landroid/widget/EditText;

    return-void
.end method
