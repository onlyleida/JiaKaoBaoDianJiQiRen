package cn.mucang.sundial.android.db.entity;

import cn.mucang.android.core.db.IdEntity;

/* JADX INFO: loaded from: classes5.dex */
public class Gnss extends IdEntity {
    private long createTime;
    private String gnssData;
    private int uploadStatus = 0;

    public long getCreateTime() {
        return this.createTime;
    }

    public String getGnssData() {
        return this.gnssData;
    }

    public int getUploadStatus() {
        return this.uploadStatus;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setGnssData(String str) {
        this.gnssData = str;
    }

    public void setUploadStatus(int i) {
        this.uploadStatus = i;
    }
}
