package cn.mucang.android.core.api.verify;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SmsCheckInfo implements Serializable {
    private int restSeconds;
    private String smsId;

    public SmsCheckInfo() {
    }

    public int getRestSeconds() {
        return this.restSeconds;
    }

    public String getSmsId() {
        return this.smsId;
    }

    public void setRestSeconds(int i) {
        this.restSeconds = i;
    }

    public void setSmsId(String str) {
        this.smsId = str;
    }

    public SmsCheckInfo(int i, String str) {
        this.restSeconds = i;
        this.smsId = str;
    }
}
