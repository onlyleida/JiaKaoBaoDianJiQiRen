package cn.mucang.android.account.api.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CommonResponse implements Serializable {
    private String captchaToken;
    private CheckType checkType;
    private String phoneNumber;
    private String sessionId;
    private String smsId;
    private String smsToken;
    private String ssoToken;

    public String getCaptchaToken() {
        return this.captchaToken;
    }

    public CheckType getCheckType() {
        return this.checkType;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getSmsId() {
        return this.smsId;
    }

    public String getSmsToken() {
        return this.smsToken;
    }

    public String getSsoToken() {
        return this.ssoToken;
    }

    public void setCaptchaToken(String str) {
        this.captchaToken = str;
    }

    public void setCheckType(CheckType checkType) {
        this.checkType = checkType;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public void setSmsId(String str) {
        this.smsId = str;
    }

    public void setSmsToken(String str) {
        this.smsToken = str;
    }

    public void setSsoToken(String str) {
        this.ssoToken = str;
    }
}
