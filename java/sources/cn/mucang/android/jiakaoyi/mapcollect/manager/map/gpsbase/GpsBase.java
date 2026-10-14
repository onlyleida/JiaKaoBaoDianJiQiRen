package cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GpsBase implements Serializable {
    public String address;
    public String areaCode;
    public String driveSchoolName;
    public long id;
    public String imei;
    public double latitude;
    public double longitude;
    public int status;

    public String getAddress() {
        return this.address;
    }

    public String getAreaCode() {
        return this.areaCode;
    }

    public String getDriveSchoolName() {
        return this.driveSchoolName;
    }

    public long getId() {
        return this.id;
    }

    public String getImei() {
        return this.imei;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public int getStatus() {
        return this.status;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setAreaCode(String str) {
        this.areaCode = str;
    }

    public void setDriveSchoolName(String str) {
        this.driveSchoolName = str;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public void setLatitude(double d2) {
        this.latitude = d2;
    }

    public void setLongitude(double d2) {
        this.longitude = d2;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
