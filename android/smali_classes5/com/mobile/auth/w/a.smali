.class public Lcom/mobile/auth/w/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/mobile/auth/gatewayauth/AuthUIConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mobile/auth/w/a;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/AuthUIConfig;)V
    .locals 2

    const-string v0, "authsdk_loading_dialog"

    const-string v1, "style"

    invoke-static {p1, v0, v1}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobile/auth/w/a;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/mobile/auth/w/a;->d:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    return-void
.end method

.method private a()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "authsdk_loading_dialog_layout"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "authsdk_iv_loading"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mobile/auth/w/a;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mobile/auth/w/a;->d:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getLoadingImgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/w/a;->d:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getLoadingImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/w/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/w/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "authsdk_anim_loading"

    const-string v3, "anim"

    invoke-static {v1, v2, v3}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/w/a;->b:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/w/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/mobile/auth/w/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobile/auth/w/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/w/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/w/a;->b:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/w/a;->d:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/mobile/auth/w/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/mobile/auth/w/a;->b:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/mobile/auth/w/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobile/auth/w/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
