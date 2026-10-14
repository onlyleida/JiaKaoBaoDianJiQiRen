.class public Lcn/mucang/sundial/android/db/entity/RegisterInfo;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private certPassword:Ljava/lang/String;

.field private deviceCertificate:Ljava/lang/String;

.field private deviceCode:Ljava/lang/String;

.field private insCode:Ljava/lang/String;

.field private platformCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->certPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCertificate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->deviceCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->deviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getInsCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->insCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->platformCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCertPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->certPassword:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCertificate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->deviceCertificate:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->deviceCode:Ljava/lang/String;

    return-void
.end method

.method public setInsCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->insCode:Ljava/lang/String;

    return-void
.end method

.method public setPlatformCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->platformCode:Ljava/lang/String;

    return-void
.end method
