package cn.mucang.sundial.library.entity;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class UpdateInfo implements Serializable {
    private String md5;
    private boolean needUpdate;
    private long size;
    private String url;
    private String versionName;
    private int versionNumber;

    public String getMd5() {
        return this.md5;
    }

    public long getSize() {
        return this.size;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }

    public boolean isNeedUpdate() {
        return this.needUpdate;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setNeedUpdate(boolean z) {
        this.needUpdate = z;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public void setVersionNumber(int i) {
        this.versionNumber = i;
    }
}
