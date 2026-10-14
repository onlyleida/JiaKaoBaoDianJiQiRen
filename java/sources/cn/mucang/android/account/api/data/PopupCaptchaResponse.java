package cn.mucang.android.account.api.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PopupCaptchaResponse extends CaptchaResponse implements Serializable {
    private String verifyUrl;

    public String getVerifyUrl() {
        return this.verifyUrl;
    }

    public void setVerifyUrl(String str) {
        this.verifyUrl = str;
    }
}
