.class public final enum Lcn/mucang/android/account/data/SkipCaptchaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/account/data/SkipCaptchaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/account/data/SkipCaptchaType;

.field public static final enum LOCAL:Lcn/mucang/android/account/data/SkipCaptchaType;

.field public static final enum NOT_SKIP:Lcn/mucang/android/account/data/SkipCaptchaType;

.field public static final enum SKIP:Lcn/mucang/android/account/data/SkipCaptchaType;


# instance fields
.field skipCaptcha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/account/data/SkipCaptchaType;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/android/framework/account/R$bool;->account__sms_login_skip_captcha:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "LOCAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/mucang/android/account/data/SkipCaptchaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcn/mucang/android/account/data/SkipCaptchaType;->LOCAL:Lcn/mucang/android/account/data/SkipCaptchaType;

    .line 2
    new-instance v1, Lcn/mucang/android/account/data/SkipCaptchaType;

    const-string v2, "SKIP"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcn/mucang/android/account/data/SkipCaptchaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcn/mucang/android/account/data/SkipCaptchaType;->SKIP:Lcn/mucang/android/account/data/SkipCaptchaType;

    .line 3
    new-instance v2, Lcn/mucang/android/account/data/SkipCaptchaType;

    const-string v5, "NOT_SKIP"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lcn/mucang/android/account/data/SkipCaptchaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcn/mucang/android/account/data/SkipCaptchaType;->NOT_SKIP:Lcn/mucang/android/account/data/SkipCaptchaType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/account/data/SkipCaptchaType;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    aput-object v2, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/account/data/SkipCaptchaType;->$VALUES:[Lcn/mucang/android/account/data/SkipCaptchaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcn/mucang/android/account/data/SkipCaptchaType;->skipCaptcha:Z

    return-void
.end method

.method public static getSkipCaptchaType(Z)Lcn/mucang/android/account/data/SkipCaptchaType;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcn/mucang/android/account/data/SkipCaptchaType;->SKIP:Lcn/mucang/android/account/data/SkipCaptchaType;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcn/mucang/android/account/data/SkipCaptchaType;->NOT_SKIP:Lcn/mucang/android/account/data/SkipCaptchaType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/account/data/SkipCaptchaType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/account/data/SkipCaptchaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/account/data/SkipCaptchaType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/account/data/SkipCaptchaType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/data/SkipCaptchaType;->$VALUES:[Lcn/mucang/android/account/data/SkipCaptchaType;

    invoke-virtual {v0}, [Lcn/mucang/android/account/data/SkipCaptchaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/account/data/SkipCaptchaType;

    return-object v0
.end method


# virtual methods
.method public isSkipCaptcha()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/data/SkipCaptchaType;->skipCaptcha:Z

    return v0
.end method
