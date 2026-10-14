.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public acquisitionTime:J

.field public bodyData:Ljava/lang/String;

.field public cityCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public coachName:Ljava/lang/String;

.field public createTime:J

.field public describe:Ljava/lang/String;

.field public deviceNumber:Ljava/lang/String;

.field public driveSchoolId:J

.field public driveSchoolName:Ljava/lang/String;

.field public hasAdd:Z

.field public id:J

.field public isManager:Z

.field public modelCode:Ljava/lang/String;

.field public modelName:Ljava/lang/String;

.field public mountingMethod:I

.field public plateNum:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->bodyData:Ljava/lang/String;

    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    return-object v0
.end method

.method public getMethodDesc()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->mountingMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u6a2a\u5411"

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\u7eb5\u5411"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method
