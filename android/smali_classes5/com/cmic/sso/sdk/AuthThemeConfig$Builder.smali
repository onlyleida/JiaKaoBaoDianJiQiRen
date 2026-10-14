.class public Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/AuthThemeConfig;
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

.field private backPressedListener:Lcom/mobile/auth/e/b;

.field private checkBoxImgHeight:I

.field private checkBoxImgWidth:I

.field private checkTipText:Ljava/lang/String;

.field private checkedImgPath:Ljava/lang/String;

.field private clauseBaseColor:I

.field private clauseColor:I

.field private clauseLayoutResID:I

.field private clauseLayoutReturnID:Ljava/lang/String;

.field private clauseName:Ljava/lang/String;

.field private clauseName2:Ljava/lang/String;

.field private clauseUrl:Ljava/lang/String;

.field private clauseUrl2:Ljava/lang/String;

.field private contentView:Landroid/view/View;

.field private isLightColor:Z

.field private isPrivacyTextGravityCenter:Z

.field private layoutResID:I

.field private logBtnBackgroundPath:Ljava/lang/String;

.field private logBtnHeight:I

.field private logBtnMarginLeft:I

.field private logBtnMarginRight:I

.field private logBtnOffsetY:I

.field private logBtnOffsetY_B:I

.field private logBtnText:Ljava/lang/String;

.field private logBtnTextColor:I

.field private logBtnTextSize:I

.field private logBtnWidth:I

.field private loginClickListener:Lcom/mobile/auth/e/c;

.field private navColor:I

.field private navReturnImgHeight:I

.field private navReturnImgPath:Ljava/lang/String;

.field private navReturnImgScaleType:Landroid/widget/ImageView$ScaleType;

.field private navReturnImgWidth:I

.field private navTextColor:I

.field private navTextSize:I

.field private numFieldOffsetY:I

.field private numFieldOffsetY_B:I

.field private numberColor:I

.field private numberOffsetX:I

.field private numberSize:I

.field private privacy:Ljava/lang/String;

.field private privacyMarginLeft:I

.field private privacyMarginRight:I

.field private privacyOffsetY:I

.field private privacyOffsetY_B:I

.field private privacyState:Z

.field private privacyTextSize:I

.field private statusBarColor:I

.field private themeId:I

.field private uncheckedImgPath:Ljava/lang/String;

.field private windowBottom:I

.field private windowHeight:I

.field private windowWidth:I

.field private windowX:I

.field private windowY:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->statusBarColor:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->isLightColor:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->contentView:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->layoutResID:I

    iput v2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseLayoutResID:I

    const/16 v3, 0x11

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navTextSize:I

    iput v2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navTextColor:I

    const v3, -0xff7930

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navColor:I

    const-string v4, "return_bg"

    iput-object v4, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navReturnImgPath:Ljava/lang/String;

    const/4 v4, -0x2

    iput v4, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navReturnImgWidth:I

    iput v4, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navReturnImgHeight:I

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navReturnImgScaleType:Landroid/widget/ImageView$ScaleType;

    const/16 v4, 0x12

    iput v4, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberSize:I

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberColor:I

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberOffsetX:I

    const/16 v3, 0xb8

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numFieldOffsetY:I

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numFieldOffsetY_B:I

    const-string v3, "\u672c\u673a\u53f7\u7801\u4e00\u952e\u767b\u5f55"

    iput-object v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnText:Ljava/lang/String;

    const/16 v3, 0xf

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnTextSize:I

    iput v2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnTextColor:I

    const-string v3, "umcsdk_login_btn_bg"

    iput-object v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnBackgroundPath:Ljava/lang/String;

    iput v2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnWidth:I

    const/16 v3, 0x24

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnHeight:I

    const/16 v3, 0x2e

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnMarginLeft:I

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnMarginRight:I

    const/16 v3, 0xfe

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnOffsetY:I

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnOffsetY_B:I

    const-string v3, "umcsdk_check_image"

    iput-object v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkedImgPath:Ljava/lang/String;

    const-string v3, "umcsdk_uncheck_image"

    iput-object v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->uncheckedImgPath:Ljava/lang/String;

    const/16 v3, 0x9

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkBoxImgWidth:I

    iput v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkBoxImgHeight:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyState:Z

    const-string v3, "\u767b\u5f55\u5373\u540c\u610f$$\u8fd0\u8425\u5546\u6761\u6b3e$$\u5e76\u4f7f\u7528\u672c\u673a\u53f7\u7801\u767b\u5f55"

    iput-object v3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacy:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseName:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseName2:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseUrl2:Ljava/lang/String;

    const/16 v1, 0xa

    iput v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyTextSize:I

    const v1, -0x99999a

    iput v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseBaseColor:I

    const v1, -0xf441fa

    iput v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseColor:I

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->isPrivacyTextGravityCenter:Z

    const/16 v1, 0x34

    iput v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyMarginLeft:I

    iput v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyMarginRight:I

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyOffsetY:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyOffsetY_B:I

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowBottom:I

    iput v2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->themeId:I

    return-void
.end method

.method static synthetic access$000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->statusBarColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->isLightColor:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navReturnImgWidth:I

    return p0
.end method

.method static synthetic access$1100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navReturnImgHeight:I

    return p0
.end method

.method static synthetic access$1200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navReturnImgScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberSize:I

    return p0
.end method

.method static synthetic access$1400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberColor:I

    return p0
.end method

.method static synthetic access$1500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberOffsetX:I

    return p0
.end method

.method static synthetic access$1600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numFieldOffsetY:I

    return p0
.end method

.method static synthetic access$1700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numFieldOffsetY_B:I

    return p0
.end method

.method static synthetic access$1800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnTextSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnTextColor:I

    return p0
.end method

.method static synthetic access$2100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnBackgroundPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnWidth:I

    return p0
.end method

.method static synthetic access$2300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnHeight:I

    return p0
.end method

.method static synthetic access$2400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnMarginLeft:I

    return p0
.end method

.method static synthetic access$2500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnMarginRight:I

    return p0
.end method

.method static synthetic access$2600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnOffsetY:I

    return p0
.end method

.method static synthetic access$2700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnOffsetY_B:I

    return p0
.end method

.method static synthetic access$2800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkTipText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Lcom/mobile/auth/e/b;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->backPressedListener:Lcom/mobile/auth/e/b;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->layoutResID:I

    return p0
.end method

.method static synthetic access$3000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Lcom/mobile/auth/e/c;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->loginClickListener:Lcom/mobile/auth/e/c;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkedImgPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->uncheckedImgPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkBoxImgWidth:I

    return p0
.end method

.method static synthetic access$3400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkBoxImgHeight:I

    return p0
.end method

.method static synthetic access$3500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyState:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacy:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseName2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseLayoutResID:I

    return p0
.end method

.method static synthetic access$4000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseUrl2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyTextSize:I

    return p0
.end method

.method static synthetic access$4200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseBaseColor:I

    return p0
.end method

.method static synthetic access$4300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseColor:I

    return p0
.end method

.method static synthetic access$4400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->isPrivacyTextGravityCenter:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyMarginLeft:I

    return p0
.end method

.method static synthetic access$4600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyMarginRight:I

    return p0
.end method

.method static synthetic access$4700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyOffsetY:I

    return p0
.end method

.method static synthetic access$4800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyOffsetY_B:I

    return p0
.end method

.method static synthetic access$4900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->authPageActIn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseLayoutReturnID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->activityOut:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->authPageActOut:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->activityIn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowWidth:I

    return p0
.end method

.method static synthetic access$5400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowHeight:I

    return p0
.end method

.method static synthetic access$5500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowX:I

    return p0
.end method

.method static synthetic access$5600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowY:I

    return p0
.end method

.method static synthetic access$5700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowBottom:I

    return p0
.end method

.method static synthetic access$5800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->themeId:I

    return p0
.end method

.method static synthetic access$600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navTextSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navTextColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navReturnImgPath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/cmic/sso/sdk/AuthThemeConfig;
    .locals 2

    new-instance v0, Lcom/cmic/sso/sdk/AuthThemeConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmic/sso/sdk/AuthThemeConfig;-><init>(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;Lcom/cmic/sso/sdk/AuthThemeConfig$a;)V

    return-object v0
.end method

.method public setAuthContentView(Landroid/view/View;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->contentView:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->layoutResID:I

    return-object p0
.end method

.method public setAuthLayoutResID(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->layoutResID:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public setAuthPageActIn(Ljava/lang/String;Ljava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->authPageActIn:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->activityOut:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthPageActOut(Ljava/lang/String;Ljava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->authPageActOut:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->activityIn:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthPageWindowMode(II)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowWidth:I

    iput p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowHeight:I

    return-object p0
.end method

.method public setAuthPageWindowOffset(II)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowX:I

    iput p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowY:I

    return-object p0
.end method

.method public setBackPressedListener(Lcom/mobile/auth/e/b;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->backPressedListener:Lcom/mobile/auth/e/b;

    return-object p0
.end method

.method public setCheckBoxImgPath(Ljava/lang/String;Ljava/lang/String;II)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkedImgPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->uncheckedImgPath:Ljava/lang/String;

    iput p3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkBoxImgWidth:I

    iput p4, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkBoxImgHeight:I

    return-object p0
.end method

.method public setCheckTipText(Ljava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, "\u8bf7\u52fe\u9009\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    :cond_2
    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkTipText:Ljava/lang/String;

    return-object p0
.end method

.method public setCheckedImgPath(Ljava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->checkedImgPath:Ljava/lang/String;

    return-object p0
.end method

.method public setClauseColor(II)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseBaseColor:I

    iput p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseColor:I

    return-object p0
.end method

.method public setClauseLayoutResID(ILjava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseLayoutResID:I

    iput-object p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseLayoutReturnID:Ljava/lang/String;

    return-object p0
.end method

.method public setLogBtn(II)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnWidth:I

    iput p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnHeight:I

    return-object p0
.end method

.method public setLogBtnClickListener(Lcom/mobile/auth/e/c;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->loginClickListener:Lcom/mobile/auth/e/c;

    return-object p0
.end method

.method public setLogBtnImgPath(Ljava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnBackgroundPath:Ljava/lang/String;

    return-object p0
.end method

.method public setLogBtnMargin(II)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnMarginLeft:I

    iput p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnMarginRight:I

    return-object p0
.end method

.method public setLogBtnOffsetY(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnOffsetY:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnOffsetY_B:I

    return-object p0
.end method

.method public setLogBtnOffsetY_B(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnOffsetY_B:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnOffsetY:I

    return-object p0
.end method

.method public setLogBtnText(Ljava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^\\s*\\n*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnText:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setLogBtnText(Ljava/lang/String;II)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^\\s*\\n*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnText:Ljava/lang/String;

    :cond_0
    iput p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnTextColor:I

    iput p3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnTextSize:I

    return-object p0
.end method

.method public setLogBtnTextColor(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->logBtnTextColor:I

    return-object p0
.end method

.method public setNavColor(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navColor:I

    return-object p0
.end method

.method public setNavTextColor(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navTextColor:I

    return-object p0
.end method

.method public setNavTextSize(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->navTextSize:I

    return-object p0
.end method

.method public setNumFieldOffsetY(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numFieldOffsetY:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numFieldOffsetY_B:I

    return-object p0
.end method

.method public setNumFieldOffsetY_B(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numFieldOffsetY_B:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numFieldOffsetY:I

    return-object p0
.end method

.method public setNumberColor(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberColor:I

    return-object p0
.end method

.method public setNumberOffsetX(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberOffsetX:I

    return-object p0
.end method

.method public setNumberSize(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->numberSize:I

    :cond_0
    return-object p0
.end method

.method public setPrivacyAlignment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 1

    const-string v0, "$$\u8fd0\u8425\u5546\u6761\u6b3e$$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$$\u300a\u8fd0\u8425\u5546\u6761\u6b3e\u300b$$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacy:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseName2:Ljava/lang/String;

    iput-object p5, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseUrl2:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public setPrivacyMargin(II)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyMarginLeft:I

    iput p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyMarginRight:I

    return-object p0
.end method

.method public setPrivacyOffsetY(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyOffsetY:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyOffsetY_B:I

    return-object p0
.end method

.method public setPrivacyOffsetY_B(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyOffsetY_B:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyOffsetY:I

    return-object p0
.end method

.method public setPrivacyState(Z)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyState:Z

    return-object p0
.end method

.method public setPrivacyText(IIIZ)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->privacyTextSize:I

    iput p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseBaseColor:I

    iput p3, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->clauseColor:I

    iput-boolean p4, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->isPrivacyTextGravityCenter:Z

    return-object p0
.end method

.method public setStatusBar(IZ)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->statusBarColor:I

    iput-boolean p2, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->isLightColor:Z

    return-object p0
.end method

.method public setThemeId(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->themeId:I

    return-object p0
.end method

.method public setUncheckedImgPath(Ljava/lang/String;)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->uncheckedImgPath:Ljava/lang/String;

    return-object p0
.end method

.method public setWindowBottom(I)Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->windowBottom:I

    return-object p0
.end method
