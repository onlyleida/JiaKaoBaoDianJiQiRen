.class public Lcom/mobile/auth/gatewayauth/LoginAuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation


# static fields
.field public static final EXIST:Ljava/lang/String; = "exist"

.field public static final STOP_LOADING:Ljava/lang/String; = "stop_loading"


# instance fields
.field private mAccessCode:Ljava/lang/String;

.field private mBodyDYVRL:Landroid/widget/RelativeLayout;

.field private mBodyRL:Landroid/widget/RelativeLayout;

.field private mIsDialog:Z

.field private mLoginRL:Landroid/widget/RelativeLayout;

.field private mLoginTV:Landroid/widget/TextView;

.field private mLogoIV:Landroid/widget/ImageView;

.field private mMainRelativeLayout:Landroid/widget/RelativeLayout;

.field private mMaskNumberTV:Landroid/widget/TextView;

.field private mNumberDYVRL:Landroid/widget/RelativeLayout;

.field private mNumberPhone:Ljava/lang/String;

.field private mNumberRL:Landroid/widget/RelativeLayout;

.field private mPnsLogger:Lcom/mobile/auth/o/a;

.field private mProgressDialog:Lcom/mobile/auth/w/a;

.field private mProtocol:Ljava/lang/String;

.field private mProtocolConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private mProtocolRL:Landroid/widget/RelativeLayout;

.field private mProtocolSelectCB:Landroid/widget/CheckBox;

.field private mProtocolTV:Landroid/widget/TextView;

.field private mSlogan:Ljava/lang/String;

.field private mSloganTV:Landroid/widget/TextView;

.field private mSwitchTV:Landroid/widget/TextView;

.field private mTitleDYVRL:Landroid/widget/RelativeLayout;

.field private mTitleRL:Landroid/widget/RelativeLayout;

.field private mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

.field private mUIManager:Lcom/mobile/auth/gatewayauth/d;

.field private mUIManagerID:I

.field private mVendorClick:Ljava/lang/String;

.field private mVendorKey:Ljava/lang/String;

.field private mVendorProtocol:Ljava/lang/String;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mIsDialog:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolConfigs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginRL:Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Z
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->checkAuthPageUILegal()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$600(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/CheckBox;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$700(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/o/a;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mPnsLogger:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private checkAuthPageUILegal()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/i;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/i;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mMaskNumberTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/i;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginTV:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/i;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolTV:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/i;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mMaskNumberTV:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/i;->a(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private dealProtocol(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/ui/b;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorClick:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolOneColor()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getVendorProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x22

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/ui/b;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->d()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v0, v1, p2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/d;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mPnsLogger:Lcom/mobile/auth/o/a;

    const-string p2, "Exception finish!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getActivityIn()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getActivityIn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private native getProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;
.end method

.method private getVendorProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$8;-><init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private native init()V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initBodyView()Landroid/widget/RelativeLayout;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initDynamicView()V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private initIntentData()V
    .locals 4
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mNumberPhone:Ljava/lang/String;

    const-string v1, "vendor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    const-string v1, "accesscode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mAccessCode:Ljava/lang/String;

    const-string v1, "startTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->startTime:J

    const-string v1, "ui_manager_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManagerID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private native initLoginRL()Landroid/widget/RelativeLayout;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initLogoView()Landroid/widget/ImageView;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initMaskNumberDynamicView()V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initNumberView()Landroid/widget/RelativeLayout;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initProtocolView()Landroid/widget/RelativeLayout;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initSloganView()Landroid/widget/TextView;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initSwitchView()Landroid/widget/TextView;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initTitleView()Landroid/widget/RelativeLayout;
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initView()V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native initXMLDynamicView()V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native removeDynamicView()V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native removeNumberView()V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setDialogBackGroundAlpha(F)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private xmlLoadErrorCB()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->e()V
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


# virtual methods
.method public getUIManagerID()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManagerID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public hideLoadingDialog()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/w/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/w/a;

    invoke-virtual {v0}, Lcom/mobile/auth/w/a;->dismiss()V
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

.method protected native onActivityResult(IILandroid/content/Intent;)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method public onBackPressed()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    const-string v1, "-72931"

    const-string v2, "\u7528\u6237\u53d6\u6d88\u767b\u5f55"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method protected onDestroy()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->hideLoadingDialog()V

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->removeDynamicView()V

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->removeNumberView()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mPnsLogger:Lcom/mobile/auth/o/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public showLoadingDialog()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mPnsLogger:Lcom/mobile/auth/o/a;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "LoginAuthActivity showLoadingDialog = "

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/w/a;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "; isShowLoadingDialog = true"

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/w/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobile/auth/w/a;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-direct {v0, p0, v1}, Lcom/mobile/auth/w/a;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/AuthUIConfig;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/w/a;

    new-instance v1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$1;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$1;-><init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/w/a;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/w/a;

    invoke-virtual {v0}, Lcom/mobile/auth/w/a;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
