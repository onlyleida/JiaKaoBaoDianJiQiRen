package cn.mucang.android.account.api.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CaptchaResponse implements Serializable {
    private String captchaId;
    private String captchaUrl;
    private String title;

    public String getCaptchaId() {
        return this.captchaId;
    }

    public String getCaptchaUrl() {
        return this.captchaUrl;
    }

    public String getTitle() {
        return this.title;
    }

    public void setCaptchaId(String str) {
        this.captchaId = str;
    }

    public void setCaptchaUrl(String str) {
        this.captchaUrl = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
