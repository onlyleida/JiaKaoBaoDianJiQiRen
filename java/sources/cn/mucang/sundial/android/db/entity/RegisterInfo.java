package cn.mucang.sundial.android.db.entity;

import cn.mucang.android.core.db.IdEntity;

/* JADX INFO: loaded from: classes5.dex */
public class RegisterInfo extends IdEntity {
    private String certPassword;
    private String deviceCertificate;
    private String deviceCode;
    private String insCode;
    private String platformCode;

    public String getCertPassword() {
        return this.certPassword;
    }

    public String getDeviceCertificate() {
        return this.deviceCertificate;
    }

    public String getDeviceCode() {
        return this.deviceCode;
    }

    public String getInsCode() {
        return this.insCode;
    }

    public String getPlatformCode() {
        return this.platformCode;
    }

    public void setCertPassword(String str) {
        this.certPassword = str;
    }

    public void setDeviceCertificate(String str) {
        this.deviceCertificate = str;
    }

    public void setDeviceCode(String str) {
        this.deviceCode = str;
    }

    public void setInsCode(String str) {
        this.insCode = str;
    }

    public void setPlatformCode(String str) {
        this.platformCode = str;
    }
}
