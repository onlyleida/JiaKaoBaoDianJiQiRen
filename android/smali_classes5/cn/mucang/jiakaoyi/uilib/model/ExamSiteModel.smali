.class public Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public altitude:D

.field public boundaryMd5:Ljava/lang/String;

.field public boundaryUrl:Ljava/lang/String;

.field public canAdd:Z

.field public canPublic:Z

.field public cityCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public comprehensive:Z

.field public driveSchoolId:J

.field public driveSchoolName:Ljava/lang/String;

.field public enable:Z

.field public examSiteId:J

.field public examSiteName:Ljava/lang/String;

.field public examSysName:Ljava/lang/String;

.field public gpsBaseId:J

.field public gpsBaseName:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public mapData:Ljava/lang/String;

.field public mapDataMd5:Ljava/lang/String;

.field public mapDataUrl:Ljava/lang/String;

.field public mapId:J

.field public mapStatus:I

.field public mapTileMd5:Ljava/lang/String;

.field public mapTileUrl:Ljava/lang/String;

.field public official:Z

.field public originAltitude:D

.field public originLatitude:D

.field public originLongitude:D

.field public owner:Ljava/lang/String;

.field public ownerName:Ljava/lang/String;

.field public provinceCode:Ljava/lang/String;

.field public provinceName:Ljava/lang/String;

.field public qrCode:Ljava/lang/String;

.field public skinId:J

.field public skinName:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public voicePackageId:J

.field public voicePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyWithoutMapData()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->enable:Z

    iput-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->enable:Z

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->provinceCode:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->provinceCode:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->provinceName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->provinceName:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolName:Ljava/lang/String;

    .line 8
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolId:J

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolId:J

    .line 9
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->owner:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->owner:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->ownerName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->ownerName:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    .line 12
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    .line 13
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    iput-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    .line 14
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canAdd:Z

    iput-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canAdd:Z

    .line 15
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->official:Z

    iput-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->official:Z

    .line 16
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSysName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSysName:Ljava/lang/String;

    .line 17
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->latitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->latitude:D

    .line 18
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->longitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->longitude:D

    .line 19
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->altitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->altitude:D

    .line 20
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    .line 21
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    .line 22
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    .line 23
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->version:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->version:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->qrCode:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->qrCode:Ljava/lang/String;

    .line 25
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseId:J

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseId:J

    .line 26
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseName:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->skinName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->skinName:Ljava/lang/String;

    .line 30
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->skinId:J

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->skinId:J

    .line 31
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->voicePackageName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->voicePackageName:Ljava/lang/String;

    .line 32
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->voicePackageId:J

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->voicePackageId:J

    .line 33
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->comprehensive:Z

    iput-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->comprehensive:Z

    .line 34
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapTileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapTileUrl:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapTileMd5:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapTileMd5:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->boundaryUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->boundaryUrl:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->boundaryMd5:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->boundaryMd5:Ljava/lang/String;

    .line 38
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapId:J

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapId:J

    .line 39
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapStatus:I

    iput v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapStatus:I

    return-object v0
.end method

.method public hasOriginGps()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
