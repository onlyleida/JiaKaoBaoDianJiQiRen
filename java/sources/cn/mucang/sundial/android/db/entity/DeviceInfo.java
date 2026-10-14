package cn.mucang.sundial.android.db.entity;

import cn.mucang.android.core.db.IdEntity;
import com.alibaba.fastjson.JSON;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceInfo extends IdEntity {
    private String carNo;
    private int cityId;
    private int color;
    private String deviceModel;
    private String devicePhone;
    private String imei;
    private String manufacturer;
    private String platformHost;
    private String platformIp;
    private int platformPort;
    private int provinceId;
    private String serialNo;

    public String getCarNo() {
        return this.carNo;
    }

    public int getCityId() {
        return this.cityId;
    }

    public int getColor() {
        return this.color;
    }

    public String getDeviceModel() {
        return this.deviceModel;
    }

    public String getDevicePhone() {
        return this.devicePhone;
    }

    public String getImei() {
        return this.imei;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public String getPlatformHost() {
        return this.platformHost;
    }

    public String getPlatformIp() {
        return this.platformIp;
    }

    public int getPlatformPort() {
        return this.platformPort;
    }

    public int getProvinceId() {
        return this.provinceId;
    }

    public String getSerialNo() {
        return this.serialNo;
    }

    public void setCarNo(String str) {
        this.carNo = str;
    }

    public void setCityId(int i) {
        this.cityId = i;
    }

    public void setColor(int i) {
        this.color = i;
    }

    public void setDeviceModel(String str) {
        this.deviceModel = str;
    }

    public void setDevicePhone(String str) {
        this.devicePhone = str;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setPlatformHost(String str) {
        this.platformHost = str;
    }

    public void setPlatformIp(String str) {
        this.platformIp = str;
    }

    public void setPlatformPort(int i) {
        this.platformPort = i;
    }

    public void setProvinceId(int i) {
        this.provinceId = i;
    }

    public void setSerialNo(String str) {
        this.serialNo = str;
    }

    public String toString() {
        return JSON.toJSONString(this);
    }
}
