package cn.mucang.android.account.api.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ForgotPasswordCheckResponse implements Serializable {
    private String smsId;

    public String getSmsId() {
        return this.smsId;
    }

    public void setSmsId(String str) {
        this.smsId = str;
    }
}
