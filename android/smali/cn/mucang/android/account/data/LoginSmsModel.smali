.class public Lcn/mucang/android/account/data/LoginSmsModel;
.super Lcn/mucang/android/account/data/LoginModel;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/BaseModel;


# instance fields
.field private phoneNumber:Ljava/lang/String;

.field private skipCaptcha:Lcn/mucang/android/account/data/SkipCaptchaType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/api/data/CheckType;->TRUE:Lcn/mucang/android/account/api/data/CheckType;

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/account/data/LoginModel;-><init>(Lcn/mucang/android/account/api/data/CheckType;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcn/mucang/android/account/data/SkipCaptchaType;->LOCAL:Lcn/mucang/android/account/data/SkipCaptchaType;

    iput-object p1, p0, Lcn/mucang/android/account/data/LoginSmsModel;->skipCaptcha:Lcn/mucang/android/account/data/SkipCaptchaType;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/data/LoginModel;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-void
.end method


# virtual methods
.method public getCheckType()Lcn/mucang/android/account/api/data/CheckType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/LoginModel;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/LoginModel;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/LoginSmsModel;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipCaptcha()Lcn/mucang/android/account/data/SkipCaptchaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/LoginSmsModel;->skipCaptcha:Lcn/mucang/android/account/data/SkipCaptchaType;

    return-object v0
.end method

.method public bridge synthetic setCheckType(Lcn/mucang/android/account/api/data/CheckType;)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    return-object p1
.end method

.method public setCheckType(Lcn/mucang/android/account/api/data/CheckType;)Lcn/mucang/android/account/data/LoginSmsModel;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/account/data/LoginModel;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-object p0
.end method

.method public bridge synthetic setExtraData(Ljava/lang/String;)Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setExtraData(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    return-object p1
.end method

.method public setExtraData(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginSmsModel;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/account/data/AccountBaseModel;->extraData:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setFrom(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setFrom(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginSmsModel;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/account/data/LoginModel;->from:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginSmsModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/LoginSmsModel;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSkipAuthRealName(Z)Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    return-object p1
.end method

.method public setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AccountBaseModel;->skipAuthRealName:Z

    return-object p0
.end method

.method public bridge synthetic setSkipBindThird(Z)Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    return-object p1
.end method

.method public setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AccountBaseModel;->skipBindThird:Z

    return-object p0
.end method

.method public setSkipCaptcha(Lcn/mucang/android/account/data/SkipCaptchaType;)Lcn/mucang/android/account/data/LoginSmsModel;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lcn/mucang/android/account/data/SkipCaptchaType;->LOCAL:Lcn/mucang/android/account/data/SkipCaptchaType;

    iput-object v0, p0, Lcn/mucang/android/account/data/LoginSmsModel;->skipCaptcha:Lcn/mucang/android/account/data/SkipCaptchaType;

    .line 2
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/account/data/LoginSmsModel;->skipCaptcha:Lcn/mucang/android/account/data/SkipCaptchaType;

    return-object p0
.end method
