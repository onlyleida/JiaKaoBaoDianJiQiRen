.class public Lcn/mucang/android/account/data/LoginModel;
.super Lcn/mucang/android/account/data/AccountBaseModel;
.source "SourceFile"


# instance fields
.field protected checkType:Lcn/mucang/android/account/api/data/CheckType;

.field protected from:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/api/data/CheckType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/data/AccountBaseModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/account/data/LoginModel;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/account/data/LoginModel;->from:Ljava/lang/String;

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

.method public isSkipAuthRealName()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/account/data/AccountBaseModel;->isSkipAuthRealName()Z

    move-result v0

    return v0
.end method

.method public isSkipBindThird()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/account/data/AccountBaseModel;->isSkipBindThird()Z

    move-result v0

    return v0
.end method

.method public setCheckType(Lcn/mucang/android/account/api/data/CheckType;)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/LoginModel;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/LoginModel;->from:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSkipAuthRealName(Z)Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginModel;

    move-result-object p1

    return-object p1
.end method

.method public setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AccountBaseModel;->skipAuthRealName:Z

    return-object p0
.end method

.method public bridge synthetic setSkipBindThird(Z)Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/data/LoginModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginModel;

    move-result-object p1

    return-object p1
.end method

.method public setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AccountBaseModel;->skipBindThird:Z

    return-object p0
.end method
