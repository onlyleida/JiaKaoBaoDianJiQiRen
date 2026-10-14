package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceExpiredInfo implements Serializable {
    public int cooperationMode;
    public boolean expired;
    public long expiredTime;
    public String message;
    public boolean showMsg;

    public int getCooperationMode() {
        return this.cooperationMode;
    }

    public long getExpiredTime() {
        return this.expiredTime;
    }

    public String getMessage() {
        return this.message;
    }

    public boolean isExpired() {
        return this.expired;
    }

    public boolean isShowMsg() {
        return this.showMsg;
    }

    public void setCooperationMode(int i) {
        this.cooperationMode = i;
    }

    public void setExpired(boolean z) {
        this.expired = z;
    }

    public void setExpiredTime(long j) {
        this.expiredTime = j;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setShowMsg(boolean z) {
        this.showMsg = z;
    }
}
