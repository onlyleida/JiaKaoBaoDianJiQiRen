.class public Lcom/mobile/auth/gatewayauth/AuthUIConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;
    }
.end annotation


# static fields
.field public static DEFAULT_BOTTOM_NAV_COLOR:I = -0x1000000

.field public static DEFAULT_LOGIN_BTN_TEXT_COLOR:I = -0x1

.field public static DEFAULT_NAV_COLOR:I = -0xfd912e

.field public static DEFAULT_NAV_TEXT_COLOR:I = -0x1

.field public static DEFAULT_NUMBER_COLOR:I = -0x1000000

.field public static DEFAULT_PROTOCOL_COLOR:I = -0x666667

.field public static DEFAULT_PROTOCOL_ONE_COLOR:I = -0xc77213

.field public static DEFAULT_PROTOCOL_THREE_COLOR:I = -0xc77213

.field public static DEFAULT_PROTOCOL_TWO_COLOR:I = -0xc77213

.field public static DEFAULT_SLOGAN_TEXT_COLOR:I = -0x666667

.field public static DEFAULT_STATUS_BAR_COLOR:I = -0x1

.field public static DEFAULT_SWITCH_ACC_TEXT_COLOR:I = -0x99999a

.field public static DEFAULT_WEB_NAV_COLOR:I = -0xfd912e

.field public static DEFAULT_WEB_NAV_TEXT_COLOR:I = -0x1

.field public static DEFAULT_WEB_STATUS_BAR_COLOR:I = -0x1

.field public static final DP_MODE:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final SP_MODE:I


# instance fields
.field private activityIn:Ljava/lang/String;

.field private activityOut:Ljava/lang/String;

.field private authPageActIn:Ljava/lang/String;

.field private authPageActOut:Ljava/lang/String;

.field private bottomNavBarColor:I

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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogAlpha:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeURL:Ljava/lang/String;

    sget v0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_PROTOCOL_THREE_COLOR:I

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->statusBarColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->bottomNavBarColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isLightColor:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isStatusBarHidden:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->statusBarUIFlag:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navText:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navTextColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgWidth:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgHeight:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnHidden:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoHidden:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccHidden:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccTextColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$1900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnText:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnTextColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneURL:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoURL:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganTextColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$2900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberSize:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnBackgroundPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->loadingImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganOffsetY:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoOffsetY:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoOffsetY_B:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numFieldOffsetY:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numFieldOffsetY_B:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberFieldOffsetX:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchOffsetY:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$3900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchOffsetY_B:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnTextSize:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetY:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetY_B:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnWidth:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnHeight:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetX:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnMarginLeftAndRight:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetY:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetY_B:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$4900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganOffsetY_B:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkboxHidden:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganText:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navTextSize:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoWidth:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoHeight:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccTextSize:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccText:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganTextSize:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganHidden:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$5900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->uncheckedImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkedImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkBoxHeight:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkBoxWidth:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyState:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolGravity:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyTextSize:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyMargin:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyBefore:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->vendorPrivacyPrefix:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$6900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->vendorPrivacySuffix:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyEnd:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogWidth:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogHeight:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogBottom:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogOffsetX:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogOffsetY:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->pageBackgroundPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navHidden:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webViewStatusBarColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$7900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavTextColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavTextSize:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavReturnImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->authPageActIn:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->activityOut:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->authPageActOut:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->activityIn:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->screenOrientation:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolLayoutGravity:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$8900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberLayoutGravity:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnLayoutGravity:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetX:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnToastHidden:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogAlpha:F

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeURL:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeColor:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webSupportedJavascript:Z

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOperatorIndex:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$9900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->makePrivacyConectTexts([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyConectTexts:[Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10000(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10100(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10200(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->uncheckedImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10300(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkedImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10400(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10500(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->pageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10600(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavReturnImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10700(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10800(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolAction:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->access$10900(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->loadingImgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;Lcom/mobile/auth/gatewayauth/AuthUIConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;-><init>(Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;)V

    return-void
.end method

.method private makePrivacyConectTexts([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const-string v0, "\u548c"

    const-string v1, "\u3001"

    :try_start_0
    filled-new-array {v0, v1, v1}, [Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    array-length v3, p1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    filled-new-array {v0, v1, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    if-ge v1, v2, :cond_1

    aget-object v4, p1, v1

    aput-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object v2

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getActivityIn()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->activityIn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityOut()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->activityOut:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthPageActIn()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->authPageActIn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthPageActOut()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->authPageActOut:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomNavBarColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->bottomNavBarColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getCheckBoxHeight()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkBoxHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getCheckBoxWidth()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkBoxWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedImgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkedImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCheckedImgPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkedImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialogAlpha()F
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getDialogHeight()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getDialogOffsetX()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getDialogOffsetY()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getDialogWidth()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLoadingImgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->loadingImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadingImgPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->loadingImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogBtnBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogBtnBackgroundPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnBackgroundPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogBtnHeight()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogBtnLayoutGravity()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogBtnMarginLeftAndRight()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnMarginLeftAndRight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogBtnOffsetX()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogBtnOffsetY()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogBtnOffsetY_B()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogBtnText()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogBtnTextColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogBtnTextSize()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogBtnWidth()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogoHeight()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogoImgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogoImgPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogoOffsetY()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogoOffsetY_B()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getLogoScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoScaleType:Landroid/widget/ImageView$ScaleType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogoWidth()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getMode(I)I
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr p1, v0

    return p1
.end method

.method public getNavColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNavReturnImgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavReturnImgHeight()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNavReturnImgPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavReturnImgWidth()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNavReturnScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnScaleType:Landroid/widget/ImageView$ScaleType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavText()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavTextColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNavTextSize()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNumFieldOffsetY()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numFieldOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNumFieldOffsetY_B()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numFieldOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNumberColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNumberFieldOffsetX()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberFieldOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNumberLayoutGravity()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getNumberSize()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->pageBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageBackgroundPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->pageBackgroundPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacyBefore()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyBefore:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacyConectTexts()[Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyConectTexts:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacyEnd()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyEnd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacyMargin()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getPrivacyOffsetX()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getPrivacyOffsetY()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getPrivacyOffsetY_B()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getPrivacyOperatorIndex()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOperatorIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getPrivacyTextSize()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getProtocolAction()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolAction:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocolColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getProtocolGravity()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getProtocolLayoutGravity()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolLayoutGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getProtocolOneColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getProtocolOneName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocolOneURL()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocolThreeColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getProtocolThreeName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocolThreeURL()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocolTwoColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getProtocolTwoName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocolTwoURL()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOrientation()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->screenOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSize(I)I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v0

    return p1
.end method

.method public getSloganOffsetY()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSloganOffsetY_B()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSloganText()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSloganTextColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSloganTextSize()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->statusBarColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getStatusBarUIFlag()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->statusBarUIFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSwitchAccText()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwitchAccTextColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSwitchAccTextSize()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSwitchOffsetY()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchOffsetY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSwitchOffsetY_B()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchOffsetY_B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getUncheckedImgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->uncheckedImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUncheckedImgPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->uncheckedImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorPrivacyPrefix()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->vendorPrivacyPrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorPrivacySuffix()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->vendorPrivacySuffix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebNavColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getWebNavReturnImgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavReturnImgDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebNavReturnImgPath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavReturnImgPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebNavTextColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getWebNavTextSize()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getWebViewStatusBarColor()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webViewStatusBarColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public isCheckboxHidden()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkboxHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isDialog()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public isDialogBottom()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogBottom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isLightColor()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isLightColor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isLogBtnToastHidden()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnToastHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isLogoHidden()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isNavHidden()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isNavReturnHidden()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isPrivacyState()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSloganHidden()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isStatusBarHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSwitchAccHidden()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isWebSupportedJavascript()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webSupportedJavascript:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setDialogAlpha(F)V
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setProtocolThreeColor(I)V
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setProtocolThreeName(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setProtocolThreeURL(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setTextSize(Landroid/widget/TextView;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getSize(I)I

    move-result p2

    :goto_0
    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getSize(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthUIConfig{statusBarColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->statusBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomNavBarColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->bottomNavBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLightColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isLightColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStatusBarHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isStatusBarHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", statusBarUIFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->statusBarUIFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", navColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", navText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", navTextColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navTextColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", navTextSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navTextSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", navReturnImgPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", navReturnImgWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", navReturnImgHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnImgHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", navReturnHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnHidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", navReturnScaleType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navReturnScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", navHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->navHidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", logoImgPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoImgPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", logoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logoHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logoHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoHidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", logoOffsetY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoOffsetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logoOffsetY_B="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoOffsetY_B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logoScaleType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", checkboxHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkboxHidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", uncheckedImgPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->uncheckedImgPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", checkedImgPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkedImgPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", checkBoxHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkBoxHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", checkBoxWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->checkBoxWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numberColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numberSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numFieldOffsetY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numFieldOffsetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numFieldOffsetY_B="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numFieldOffsetY_B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numberFieldOffsetX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberFieldOffsetX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numberLayoutGravity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->numberLayoutGravity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", switchAccHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccHidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", switchAccTextColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccTextColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", switchAccTextSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccTextSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", switchAccText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchAccText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", switchOffsetY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchOffsetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", switchOffsetY_B="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->switchOffsetY_B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnTextColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnTextColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnTextSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnTextSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnBackgroundPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnBackgroundPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnOffsetX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnOffsetY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnOffsetY_B="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnOffsetY_B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnMarginLeftAndRight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnMarginLeftAndRight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", loadingImgPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->loadingImgPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnLayoutGravity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnLayoutGravity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logBtnToastHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->logBtnToastHidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", protocolOneName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", protocolOneURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", protocolOneColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolOneColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", protocolTwoName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", protocolTwoURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", protocolTwoColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolTwoColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", protocolColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", privacyOffsetX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", privacyOffsetY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", privacyOffsetY_B="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOffsetY_B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", privacyState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", protocolGravity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolGravity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", privacyTextSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyTextSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", privacyMargin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", privacyBefore=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyBefore:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", privacyEnd=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyEnd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vendorPrivacyPrefix=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->vendorPrivacyPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vendorPrivacySuffix=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->vendorPrivacySuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", protocolLayoutGravity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolLayoutGravity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sloganHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganHidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sloganText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sloganTextSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganTextSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sloganTextColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganTextColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sloganOffsetY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganOffsetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sloganOffsetY_B="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->sloganOffsetY_B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogBottom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogBottom:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dialogOffsetX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogOffsetX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogOffsetY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogOffsetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pageBackgroundPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->pageBackgroundPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", webViewStatusBarColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webViewStatusBarColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", webNavColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", webNavTextColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavTextColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", webNavTextSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavTextSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", webNavReturnImgPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webNavReturnImgPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", webSupportedJavascript="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->webSupportedJavascript:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", authPageActIn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->authPageActIn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activityOut=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->activityOut:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", authPageActOut=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->authPageActOut:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activityIn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->activityIn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->screenOrientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogAlpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->dialogAlpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", protocolThreeName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", protocolThreeURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", privacyConectTexts=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyConectTexts:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", privacyOperatorIndex=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->privacyOperatorIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", protocolAction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", protocolThreeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->protocolThreeColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
