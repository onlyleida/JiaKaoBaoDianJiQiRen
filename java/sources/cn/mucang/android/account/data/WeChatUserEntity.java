package cn.mucang.android.account.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class WeChatUserEntity implements Serializable {
    private String appId;
    private long createTime;
    private String mucangId;
    private String openId;
    private String unionId;
    private long updateTime;

    public String getAppId() {
        return this.appId;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public String getMucangId() {
        return this.mucangId;
    }

    public String getOpenId() {
        return this.openId;
    }

    public String getUnionId() {
        return this.unionId;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setMucangId(String str) {
        this.mucangId = str;
    }

    public void setOpenId(String str) {
        this.openId = str;
    }

    public void setUnionId(String str) {
        this.unionId = str;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }
}
