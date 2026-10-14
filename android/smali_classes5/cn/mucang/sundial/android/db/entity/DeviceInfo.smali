.class public Lcn/mucang/sundial/android/db/entity/DeviceInfo;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private carNo:Ljava/lang/String;

.field private cityId:I

.field private color:I

.field private deviceModel:Ljava/lang/String;

.field private devicePhone:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private platformHost:Ljava/lang/String;

.field private platformIp:Ljava/lang/String;

.field private platformPort:I

.field private provinceId:I

.field private serialNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->carNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->cityId:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->color:I

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->devicePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->platformHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->platformIp:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->platformPort:I

    return v0
.end method

.method public getProvinceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->provinceId:I

    return v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public setCarNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->carNo:Ljava/lang/String;

    return-void
.end method

.method public setCityId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->cityId:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->color:I

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDevicePhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->devicePhone:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setPlatformHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->platformHost:Ljava/lang/String;

    return-void
.end method

.method public setPlatformIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->platformIp:Ljava/lang/String;

    return-void
.end method

.method public setPlatformPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->platformPort:I

    return-void
.end method

.method public setProvinceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->provinceId:I

    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->serialNo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
