.class public Lcom/cmic/sso/sdk/AuthThemeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;
    }
.end annotation


# static fields
.field public static final PLACEHOLDER:Ljava/lang/String; = "$$\u8fd0\u8425\u5546\u6761\u6b3e$$"

.field public static final PLACEHOLDER2:Ljava/lang/String; = "$$\u300a\u8fd0\u8425\u5546\u6761\u6b3e\u300b$$"


# instance fields
.field private activityIn:Ljava/lang/String;

.field private activityOut:Ljava/lang/String;

.field private authPageActIn:Ljava/lang/String;

.field private authPageActOut:Ljava/lang/String;

.field private backPressedListener:Lcom/mobile/auth/e/b;

.field private checkTipText:Ljava/lang/String;

.field private checkedImgHeight:I

.field private checkedImgPath:Ljava/lang/String;

.field private checkedImgWidth:I

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
.method private constructor <init>(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->statusBarColor:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->isLightColor:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->contentView:Landroid/view/View;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->layoutResID:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseLayoutResID:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseLayoutReturnID:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navTextSize:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navTextColor:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navColor:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navReturnImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navReturnImgWidth:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navReturnImgHeight:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navReturnImgScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numberSize:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numberColor:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numberOffsetX:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numFieldOffsetY:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numFieldOffsetY_B:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnText:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$1900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnTextSize:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnTextColor:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnBackgroundPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnWidth:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnHeight:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnMarginLeft:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnMarginRight:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnOffsetY:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnOffsetY_B:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->checkTipText:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$2900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Lcom/mobile/auth/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->backPressedListener:Lcom/mobile/auth/e/b;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Lcom/mobile/auth/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->loginClickListener:Lcom/mobile/auth/e/c;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->checkedImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->uncheckedImgPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->checkedImgWidth:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->checkedImgHeight:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyState:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacy:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseName:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$3900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseName2:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseUrl2:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyTextSize:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseBaseColor:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseColor:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->isPrivacyTextGravityCenter:Z

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyMarginLeft:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyMarginRight:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyOffsetY:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyOffsetY_B:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$4900(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->authPageActIn:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5000(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->activityOut:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5100(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->authPageActOut:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5200(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->activityIn:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5300(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowWidth:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5400(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowHeight:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5500(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowX:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5600(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowY:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5700(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowBottom:I

    invoke-static {p1}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->access$5800(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->themeId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;Lcom/cmic/sso/sdk/AuthThemeConfig$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/AuthThemeConfig;-><init>(Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getActivityIn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->activityIn:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->activityOut:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageActIn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->authPageActIn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageActOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->authPageActOut:Ljava/lang/String;

    return-object v0
.end method

.method public getBackPressedListener()Lcom/mobile/auth/e/b;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->backPressedListener:Lcom/mobile/auth/e/b;

    return-object v0
.end method

.method public getCheckTipText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->checkTipText:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedImgHeight()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->checkedImgHeight:I

    return v0
.end method

.method public getCheckedImgPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->checkedImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedImgWidth()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->checkedImgWidth:I

    return v0
.end method

.method public getClauseBaseColor()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseBaseColor:I

    return v0
.end method

.method public getClauseColor()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseColor:I

    return v0
.end method

.method public getClauseLayoutResID()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseLayoutResID:I

    return v0
.end method

.method public getClauseLayoutReturnID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseLayoutReturnID:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseName:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseName2:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->clauseUrl2:Ljava/lang/String;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutResID()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->layoutResID:I

    return v0
.end method

.method public getLogBtnBackgroundPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnBackgroundPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLogBtnHeight()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnHeight:I

    return v0
.end method

.method public getLogBtnMarginLeft()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnMarginLeft:I

    return v0
.end method

.method public getLogBtnMarginRight()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnMarginRight:I

    return v0
.end method

.method public getLogBtnOffsetY()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnOffsetY:I

    return v0
.end method

.method public getLogBtnOffsetY_B()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnOffsetY_B:I

    return v0
.end method

.method public getLogBtnText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getLogBtnTextColor()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnTextColor:I

    return v0
.end method

.method public getLogBtnTextSize()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnTextSize:I

    return v0
.end method

.method public getLogBtnWidth()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->logBtnWidth:I

    return v0
.end method

.method public getLoginClickListener()Lcom/mobile/auth/e/c;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->loginClickListener:Lcom/mobile/auth/e/c;

    return-object v0
.end method

.method public getNavColor()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navColor:I

    return v0
.end method

.method public getNavReturnImgHeight()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navReturnImgHeight:I

    return v0
.end method

.method public getNavReturnImgPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navReturnImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNavReturnImgScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navReturnImgScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getNavReturnImgWidth()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navReturnImgWidth:I

    return v0
.end method

.method public getNavTextColor()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navTextColor:I

    return v0
.end method

.method public getNavTextSize()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->navTextSize:I

    return v0
.end method

.method public getNumFieldOffsetY()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numFieldOffsetY:I

    return v0
.end method

.method public getNumFieldOffsetY_B()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numFieldOffsetY_B:I

    return v0
.end method

.method public getNumberColor()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numberColor:I

    return v0
.end method

.method public getNumberOffsetX()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numberOffsetX:I

    return v0
.end method

.method public getNumberSize()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->numberSize:I

    return v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyMarginLeft()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyMarginLeft:I

    return v0
.end method

.method public getPrivacyMarginRight()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyMarginRight:I

    return v0
.end method

.method public getPrivacyOffsetY()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyOffsetY:I

    return v0
.end method

.method public getPrivacyOffsetY_B()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyOffsetY_B:I

    return v0
.end method

.method public getPrivacyTextSize()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyTextSize:I

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->statusBarColor:I

    return v0
.end method

.method public getThemeId()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->themeId:I

    return v0
.end method

.method public getUncheckedImgPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->uncheckedImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowBottom()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowBottom:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowHeight:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowWidth:I

    return v0
.end method

.method public getWindowX()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowX:I

    return v0
.end method

.method public getWindowY()I
    .locals 1

    iget v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->windowY:I

    return v0
.end method

.method public isLightColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->isLightColor:Z

    return v0
.end method

.method public isPrivacyState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->privacyState:Z

    return v0
.end method

.method public isPrivacyTextGravityCenter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/AuthThemeConfig;->isPrivacyTextGravityCenter:Z

    return v0
.end method
