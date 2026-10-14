.class public Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public address:Ljava/lang/String;

.field public areaCode:Ljava/lang/String;

.field public driveSchoolName:Ljava/lang/String;

.field public id:J

.field public imei:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveSchoolName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->driveSchoolName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->id:J

    return-wide v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->longitude:D

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->status:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->address:Ljava/lang/String;

    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setDriveSchoolName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->driveSchoolName:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->id:J

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->imei:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->longitude:D

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;->status:I

    return-void
.end method
