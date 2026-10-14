.class public Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobile/auth/gatewayauth/AuthUIConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activityIn:Ljava/lang/String;

.field private activityOut:Ljava/lang/String;

.field private authPageActIn:Ljava/lang/String;

.field private authPageActOut:Ljava/lang/String;

.field private bottomNavColor:I

.field private checkBoxHeight:I

.field private checkBoxWidth:I

.field private checkboxHidden:Z

.field private checkedImgDrawable:Landroid/graphics/drawable/Drawable;

.field private checkedImgPath:Ljava/lang/String;

.field private dialogAlpha:F

.field private dialogBottom:Z

.field private dialogHeight:I

.field private dialogOffsetX:I

.field private dialogOffsetY:I

.field private dialogWidth:I

.field private isLightColor:Z

.field private isStatusBarHidden:Z

.field private loadingImgDrawable:Landroid/graphics/drawable/Drawable;

.field private loadingImgPath:Ljava/lang/String;

.field private logBtnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private logBtnBackgroundPath:Ljava/lang/String;

.field private logBtnHeight:I

.field private logBtnLayoutGravity:I

.field private logBtnMarginLeftAndRight:I

.field private logBtnOffsetX:I

.field private logBtnOffsetY:I

.field private logBtnOffsetY_B:I

.field private logBtnText:Ljava/lang/String;

.field private logBtnTextColor:I

.field private logBtnTextSize:I

.field private logBtnToastHidden:Z

.field private logBtnWidth:I

.field private logoHeight:I

.field private logoHidden:Z

.field private logoImgDrawable:Landroid/graphics/drawable/Drawable;

.field private logoImgPath:Ljava/lang/String;

.field private logoOffsetY:I

.field private logoOffsetY_B:I

.field private logoScaleType:Landroid/widget/ImageView$ScaleType;

.field private logoWidth:I

.field private navColor:I

.field private navHidden:Z

.field private navReturnHidden:Z

.field private navReturnImgDrawable:Landroid/graphics/drawable/Drawable;

.field private navReturnImgHeight:I

.field private navReturnImgPath:Ljava/lang/String;

.field private navReturnImgWidth:I

.field private navReturnScaleType:Landroid/widget/ImageView$ScaleType;

.field private navText:Ljava/lang/String;

.field private navTextColor:I

.field private navTextSize:I

.field private numFieldOffsetY:I

.field private numFieldOffsetY_B:I

.field private numberColor:I

.field private numberFieldOffsetX:I

.field private numberLayoutGravity:I

.field private numberSize:I

.field private packageName:Ljava/lang/String;

.field private pageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private pageBackgroundPath:Ljava/lang/String;

.field private privacyBefore:Ljava/lang/String;

.field private privacyConectTexts:[Ljava/lang/String;

.field private privacyEnd:Ljava/lang/String;

.field private privacyMargin:I

.field private privacyOffsetX:I

.field private privacyOffsetY:I

.field private privacyOffsetY_B:I

.field private privacyOperatorIndex:I

.field private privacyState:Z

.field private privacyTextSize:I

.field private protocolAction:Ljava/lang/String;

.field private protocolColor:I

.field private protocolGravity:I

.field private protocolLayoutGravity:I

.field private protocolOneColor:I

.field private protocolOneName:Ljava/lang/String;

.field private protocolOneURL:Ljava/lang/String;

.field private protocolThreeColor:I

.field private protocolThreeName:Ljava/lang/String;

.field private protocolThreeURL:Ljava/lang/String;

.field private protocolTwoColor:I

.field private protocolTwoName:Ljava/lang/String;

.field private protocolTwoURL:Ljava/lang/String;

.field private screenOrientation:I

.field private sloganHidden:Z

.field private sloganOffsetY:I

.field private sloganOffsetY_B:I

.field private sloganText:Ljava/lang/String;

.field private sloganTextColor:I

.field private sloganTextSize:I

.field private statusBarColor:I

.field private statusBarUIFlag:I

.field private switchAccHidden:Z

.field private switchAccText:Ljava/lang/String;

.field private switchAccTextColor:I

.field private switchAccTextSize:I

.field private switchOffsetY:I

.field private switchOffsetY_B:I

.field private uncheckedImgDrawable:Landroid/graphics/drawable/Drawable;

.field private uncheckedImgPath:Ljava/lang/String;

.field private vendorPrivacyPrefix:Ljava/lang/String;

.field private vendorPrivacySuffix:Ljava/lang/String;

.field private webNavColor:I

.field private webNavReturnImgDrawable:Landroid/graphics/drawable/Drawable;

.field private webNavReturnImgPath:Ljava/lang/String;

.field private webNavTextColor:I

.field private webNavTextSize:I

.field private webSupportedJavascript:Z

.field private webViewStatusBarColor:I


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_STATUS_BAR_COLOR:I

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->statusBarColor:I

    sget v0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_BOTTOM_NAV_COLOR:I

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->bottomNavColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->isLightColor:Z

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->isStatusBarHidden:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->statusBarUIFlag:I

    sget v2, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_NAV_COLOR:I

    iput v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navColor:I

    const-string v2, "\u514d\u5bc6\u767b\u5f55"

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navText:Ljava/lang/String;

    sget v2, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_NAV_TEXT_COLOR:I

    iput v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navTextColor:I

    const-string v2, "authsdk_return_bg"

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgPath:Ljava/lang/String;

    const/16 v2, 0x1e

    iput v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgWidth:I

    iput v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgHeight:I

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnHidden:Z

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnScaleType:Landroid/widget/ImageView$ScaleType;

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navHidden:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoImgPath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoHidden:Z

    sget v3, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_NUMBER_COLOR:I

    iput v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberColor:I

    const/16 v3, 0x1c

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0, v3, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result v5

    iput v5, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberSize:I

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccHidden:Z

    sget v5, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_SWITCH_ACC_TEXT_COLOR:I

    iput v5, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccTextColor:I

    const-string v5, "\u4e00\u952e\u767b\u5f55"

    iput-object v5, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnText:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-virtual {p0, v5, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result v6

    iput v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnTextSize:I

    sget v6, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_LOGIN_BTN_TEXT_COLOR:I

    iput v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnTextColor:I

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneURL:Ljava/lang/String;

    sget v6, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_PROTOCOL_ONE_COLOR:I

    iput v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneColor:I

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoURL:Ljava/lang/String;

    sget v6, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_PROTOCOL_TWO_COLOR:I

    iput v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoColor:I

    sget v6, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_PROTOCOL_COLOR:I

    iput v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolColor:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolLayoutGravity:I

    sget v7, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_SLOGAN_TEXT_COLOR:I

    iput v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganTextColor:I

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganText:Ljava/lang/String;

    const-string v7, "authsdk_dialog_login_btn_bg"

    iput-object v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnBackgroundPath:Ljava/lang/String;

    const-string v7, "authsdk_waiting_icon"

    iput-object v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->loadingImgPath:Ljava/lang/String;

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganOffsetY:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoOffsetY:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoOffsetY_B:I

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numFieldOffsetY:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numFieldOffsetY_B:I

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberFieldOffsetX:I

    iput v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberLayoutGravity:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchOffsetY:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchOffsetY_B:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetY:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetY_B:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnWidth:I

    const/16 v7, 0x33

    iput v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnHeight:I

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetX:I

    iput v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnMarginLeftAndRight:I

    iput v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnLayoutGravity:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOffsetY:I

    iput v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOffsetY_B:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganOffsetY_B:I

    const/16 v7, 0x12

    iput v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkBoxWidth:I

    iput v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkBoxHeight:I

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkboxHidden:Z

    invoke-virtual {p0, v7, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result v7

    iput v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navTextSize:I

    const/16 v7, 0x5a

    iput v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoWidth:I

    iput v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoHeight:I

    invoke-virtual {p0, v5, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result v7

    iput v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccTextSize:I

    const-string v7, "\u5207\u6362\u5230\u5176\u4ed6\u65b9\u5f0f"

    iput-object v7, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccText:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result v5

    iput v5, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganTextSize:I

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganHidden:Z

    const-string v5, "authsdk_checkbox_uncheck_bg"

    iput-object v5, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->uncheckedImgPath:Ljava/lang/String;

    const-string v5, "authsdk_checkbox_checked_bg"

    iput-object v5, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkedImgPath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyState:Z

    const/16 v5, 0x11

    iput v5, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolGravity:I

    const/16 v5, 0xc

    invoke-virtual {p0, v5, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result v4

    iput v4, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyTextSize:I

    iput v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyMargin:I

    const-string v3, ""

    iput-object v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyBefore:Ljava/lang/String;

    iput-object v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyEnd:Ljava/lang/String;

    iput-object v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->vendorPrivacyPrefix:Ljava/lang/String;

    iput-object v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->vendorPrivacySuffix:Ljava/lang/String;

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogWidth:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogHeight:I

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogBottom:Z

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogOffsetX:I

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogOffsetY:I

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->pageBackgroundPath:Ljava/lang/String;

    sget v3, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_WEB_STATUS_BAR_COLOR:I

    iput v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webViewStatusBarColor:I

    sget v3, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_WEB_NAV_COLOR:I

    iput v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavColor:I

    sget v3, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_WEB_NAV_TEXT_COLOR:I

    iput v3, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavTextColor:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavTextSize:I

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavReturnImgPath:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webSupportedJavascript:Z

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->authPageActIn:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->activityOut:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->authPageActOut:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->activityIn:Ljava/lang/String;

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->screenOrientation:I

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnToastHidden:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogAlpha:F

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeURL:Ljava/lang/String;

    sget v1, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_PROTOCOL_THREE_COLOR:I

    iput v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeColor:I

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOperatorIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->statusBarColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->bottomNavColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$1000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$10000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->uncheckedImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkedImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->pageBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavReturnImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolAction:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$10900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->loadingImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$1200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnScaleType:Landroid/widget/ImageView$ScaleType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$1500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoScaleType:Landroid/widget/ImageView$ScaleType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$1700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$1800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$1900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->isLightColor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$2000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$2100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$2400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$2500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$2800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$2900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->isStatusBarHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$3000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnBackgroundPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->loadingImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$3300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$3400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$3500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numFieldOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$3600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numFieldOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$3700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberFieldOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$3800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$3900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->statusBarUIFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnMarginLeftAndRight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$4900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$5000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkboxHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$5100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$5200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$5300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$5400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$5500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$5600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$5800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$5900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->uncheckedImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$6000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkedImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkBoxHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$6200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkBoxWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$6300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$6400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$6500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$6600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$6700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyBefore:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$6800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->vendorPrivacyPrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$6900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->vendorPrivacySuffix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$7000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyEnd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$7100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$7200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$7300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogBottom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$7400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$7500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$7600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->pageBackgroundPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$7700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$7800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webViewStatusBarColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$7900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$8000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$8100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$8200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavReturnImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$8300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->authPageActIn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$8400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->activityOut:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$8500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->authPageActOut:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$8600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->activityIn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$8700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->screenOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$8800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$8900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$9000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$9100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$9200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnToastHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$9300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)F
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method static synthetic access$9400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$9500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$9600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$9700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webSupportedJavascript:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$9800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOperatorIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$9900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)[Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyConectTexts:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public create()Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-direct {v1, p0, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;-><init>(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;Lcom/mobile/auth/gatewayauth/AuthUIConfig$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public makeTextSizeSpec(II)I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v0

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method

.method public setAppPrivacyColor(II)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolColor:I

    iput p2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneColor:I

    iput p2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoColor:I

    iput p2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAppPrivacyOne(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolOneURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAppPrivacyThree(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolThreeURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAppPrivacyTwo(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolTwoURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAuthPageActIn(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->authPageActIn:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->activityOut:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAuthPageActOut(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->authPageActOut:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->activityIn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setBottomNavColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->bottomNavColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCheckBoxHeight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkBoxHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCheckBoxWidth(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkBoxWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCheckboxHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkboxHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCheckedImgDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkedImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCheckedImgPath(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->checkedImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDialogAlpha(F)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDialogBottom(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogBottom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDialogHeight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDialogOffsetX(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDialogOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDialogWidth(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->dialogWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLightColor(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->isLightColor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLoadingImgDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->loadingImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLoadingImgPath(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->loadingImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnBackgroundPath(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnBackgroundPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnHeight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnLayoutGravity(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnMarginLeftAndRight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnMarginLeftAndRight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnOffsetX(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnOffsetY_B(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnText(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnTextColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnTextSize(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnTextSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setLogBtnToastHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnToastHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogBtnWidth(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logBtnWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogoHeight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogoHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogoImgDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogoImgPath(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogoOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogoOffsetY_B(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogoScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoScaleType:Landroid/widget/ImageView$ScaleType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setLogoWidth(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->logoWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavReturnHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavReturnImgDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavReturnImgHeight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavReturnImgPath(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavReturnImgWidth(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnImgWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavReturnScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navReturnScaleType:Landroid/widget/ImageView$ScaleType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavText(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavTextColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavTextSize(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNavTextSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->navTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setNumFieldOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numFieldOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNumFieldOffsetY_B(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numFieldOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNumberColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNumberFieldOffsetX(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberFieldOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNumberLayoutGravity(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNumberSize(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNumberSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->numberSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPageBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->pageBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPageBackgroundPath(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->pageBackgroundPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyBefore(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyBefore:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyConectTexts([Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyConectTexts:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyEnd(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyEnd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyMargin(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyOffsetX(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyOffsetY_B(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyOperatorIndex(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyOperatorIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyState(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyTextSize(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrivacyTextSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->privacyTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setProtocolAction(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolAction:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setProtocolGravity(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setProtocolLayoutGravity(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->protocolLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setScreenOrientation(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->screenOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSloganHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSloganOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSloganOffsetY_B(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSloganText(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSloganTextColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSloganTextSize(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSloganTextSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->sloganTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setStatusBarColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->statusBarColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setStatusBarHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->isStatusBarHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setStatusBarUIFlag(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->statusBarUIFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSwitchAccHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSwitchAccText(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSwitchAccTextColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSwitchAccTextSize(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSwitchAccTextSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchAccTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setSwitchOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSwitchOffsetY_B(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->switchOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setUncheckedImgDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->uncheckedImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setUncheckedImgPath(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->uncheckedImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setVendorPrivacyPrefix(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->vendorPrivacyPrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setVendorPrivacySuffix(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->vendorPrivacySuffix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setWebNavColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setWebNavReturnImgDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavReturnImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setWebNavReturnImgPath(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavReturnImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setWebNavTextColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setWebNavTextSize(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setWebNavTextSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->makeTextSizeSpec(II)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webNavTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setWebSupportedJavascript(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webSupportedJavascript:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setWebViewStatusBarColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->webViewStatusBarColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
