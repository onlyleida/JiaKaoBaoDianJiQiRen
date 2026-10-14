package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ExamSiteModel implements Serializable {
    public double altitude;
    public String boundaryMd5;
    public String boundaryUrl;
    public boolean canAdd;
    public boolean canPublic;
    public String cityCode;
    public String cityName;
    public boolean comprehensive;
    public long driveSchoolId;
    public String driveSchoolName;
    public boolean enable;
    public long examSiteId;
    public String examSiteName;
    public String examSysName;
    public long gpsBaseId;
    public String gpsBaseName;
    public double latitude;
    public double longitude;
    public String mapData;
    public String mapDataMd5;
    public String mapDataUrl;
    public long mapId;
    public int mapStatus;
    public String mapTileMd5;
    public String mapTileUrl;
    public boolean official;
    public double originAltitude;
    public double originLatitude;
    public double originLongitude;
    public String owner;
    public String ownerName;
    public String provinceCode;
    public String provinceName;
    public String qrCode;
    public long skinId;
    public String skinName;
    public String version;
    public long voicePackageId;
    public String voicePackageName;

    public ExamSiteModel copyWithoutMapData() {
        ExamSiteModel examSiteModel = new ExamSiteModel();
        examSiteModel.enable = this.enable;
        examSiteModel.cityCode = this.cityCode;
        examSiteModel.cityName = this.cityName;
        examSiteModel.provinceCode = this.provinceCode;
        examSiteModel.provinceName = this.provinceName;
        examSiteModel.driveSchoolName = this.driveSchoolName;
        examSiteModel.driveSchoolId = this.driveSchoolId;
        examSiteModel.owner = this.owner;
        examSiteModel.ownerName = this.ownerName;
        examSiteModel.examSiteName = this.examSiteName;
        examSiteModel.examSiteId = this.examSiteId;
        examSiteModel.canPublic = this.canPublic;
        examSiteModel.canAdd = this.canAdd;
        examSiteModel.official = this.official;
        examSiteModel.examSysName = this.examSysName;
        examSiteModel.latitude = this.latitude;
        examSiteModel.longitude = this.longitude;
        examSiteModel.altitude = this.altitude;
        examSiteModel.originLatitude = this.originLatitude;
        examSiteModel.originLongitude = this.originLongitude;
        examSiteModel.originAltitude = this.originAltitude;
        examSiteModel.version = this.version;
        examSiteModel.qrCode = this.qrCode;
        examSiteModel.gpsBaseId = this.gpsBaseId;
        examSiteModel.gpsBaseName = this.gpsBaseName;
        examSiteModel.mapDataUrl = this.mapDataUrl;
        examSiteModel.mapDataMd5 = this.mapDataMd5;
        examSiteModel.skinName = this.skinName;
        examSiteModel.skinId = this.skinId;
        examSiteModel.voicePackageName = this.voicePackageName;
        examSiteModel.voicePackageId = this.voicePackageId;
        examSiteModel.comprehensive = this.comprehensive;
        examSiteModel.mapTileUrl = this.mapTileUrl;
        examSiteModel.mapTileMd5 = this.mapTileMd5;
        examSiteModel.boundaryUrl = this.boundaryUrl;
        examSiteModel.boundaryMd5 = this.boundaryMd5;
        examSiteModel.mapId = this.mapId;
        examSiteModel.mapStatus = this.mapStatus;
        return examSiteModel;
    }

    public boolean hasOriginGps() {
        return this.originLatitude >= 1.0E-10d && this.originLongitude >= 1.0E-10d;
    }
}
