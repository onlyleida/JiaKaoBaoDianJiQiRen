package cn.mucang.android.core.data;

import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class CityNameCodeMapping$MucangPOI implements BaseModel {
    public String code;
    public String latitude;
    public String longitude;
    public String name;

    public CityNameCodeMapping$MucangPOI() {
    }

    public String getCode() {
        return this.code;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public String getName() {
        return this.name;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public CityNameCodeMapping$MucangPOI(String str, String str2, String str3, String str4) {
        this.name = str;
        this.code = str2;
        this.latitude = str3;
        this.longitude = str4;
    }
}
