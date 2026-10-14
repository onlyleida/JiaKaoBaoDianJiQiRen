.class public Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;
.super Lcn/mucang/android/account/data/AccountBaseModel;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/BaseModel;


# instance fields
.field private secret:Ljava/lang/String;

.field private securityPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/data/AccountBaseModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/data/AccountBaseModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;->secret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;->securityPhone:Ljava/lang/String;

    return-object v0
.end method

.method public setSecret(Ljava/lang/String;)Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;->secret:Ljava/lang/String;

    return-object p0
.end method

.method public setSecurityPhone(Ljava/lang/String;)Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;->securityPhone:Ljava/lang/String;

    return-object p0
.end method
