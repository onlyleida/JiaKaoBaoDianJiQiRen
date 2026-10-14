package cn.mucang.android.account.api.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CheckSmsResponse implements Serializable {
    private CheckType checkType;
    private int delay;
    private int restSeconds;
    private String smsCode;
    private String smsId;

    public static CheckSmsResponse getMockResponse(CheckType checkType) {
        CheckSmsResponse checkSmsResponse = new CheckSmsResponse();
        checkSmsResponse.setCheckType(checkType);
        return checkSmsResponse;
    }

    public CheckType getCheckType() {
        return this.checkType;
    }

    public long getDelay() {
        return this.delay;
    }

    public int getRestSeconds() {
        return this.restSeconds;
    }

    public String getSmsCode() {
        return this.smsCode;
    }

    public String getSmsId() {
        return this.smsId;
    }

    public void setCheckType(CheckType checkType) {
        this.checkType = checkType;
    }

    public void setDelay(int i) {
        this.delay = i;
    }

    public void setRestSeconds(int i) {
        this.restSeconds = i;
    }

    public void setSmsCode(String str) {
        this.smsCode = str;
    }

    public void setSmsId(String str) {
        this.smsId = str;
    }
}
