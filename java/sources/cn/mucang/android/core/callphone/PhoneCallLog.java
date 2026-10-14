package cn.mucang.android.core.callphone;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PhoneCallLog extends PhoneCallRequest implements Serializable {
    public static final int CONFIRM_NO = 0;
    public static final int CONFIRM_NOT_SET = -1;
    public static final int CONFIRM_YES = 1;
    private int appSwitchInterval;
    private long callTimeFromLog;
    private int confirmed;
    private int duration;

    public PhoneCallLog() {
        this.duration = -1;
        this.confirmed = -1;
        this.appSwitchInterval = -1;
        this.callTimeFromLog = 0L;
    }

    public int getAppSwitchInterval() {
        return this.appSwitchInterval;
    }

    public long getCallTimeFromLog() {
        return this.callTimeFromLog;
    }

    public int getConfirmed() {
        return this.confirmed;
    }

    public int getDuration() {
        return this.duration;
    }

    public void setAppSwitchInterval(int i) {
        if (i >= 0) {
            this.appSwitchInterval = i;
        }
    }

    public void setCallTimeFromLog(long j) {
    }

    public void setConfirmed(int i) {
        this.confirmed = i;
    }

    public void setDuration(int i) {
    }

    public PhoneCallLog(PhoneCallRequest phoneCallRequest) {
        super(phoneCallRequest);
        this.duration = -1;
        this.confirmed = -1;
        this.appSwitchInterval = -1;
        this.callTimeFromLog = 0L;
        this.confirmed = -1;
    }
}
