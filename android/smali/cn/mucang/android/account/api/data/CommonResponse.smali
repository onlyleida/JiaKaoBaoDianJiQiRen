.class public Lcn/mucang/android/account/api/data/CommonResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private captchaToken:Ljava/lang/String;

.field private checkType:Lcn/mucang/android/account/api/data/CheckType;

.field private phoneNumber:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private smsId:Ljava/lang/String;

.field private smsToken:Ljava/lang/String;

.field private ssoToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptchaToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CommonResponse;->captchaToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckType()Lcn/mucang/android/account/api/data/CheckType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CommonResponse;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CommonResponse;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CommonResponse;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CommonResponse;->smsId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CommonResponse;->smsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CommonResponse;->ssoToken:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptchaToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CommonResponse;->captchaToken:Ljava/lang/String;

    return-void
.end method

.method public setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CommonResponse;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CommonResponse;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CommonResponse;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSmsId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CommonResponse;->smsId:Ljava/lang/String;

    return-void
.end method

.method public setSmsToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CommonResponse;->smsToken:Ljava/lang/String;

    return-void
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CommonResponse;->ssoToken:Ljava/lang/String;

    return-void
.end method
