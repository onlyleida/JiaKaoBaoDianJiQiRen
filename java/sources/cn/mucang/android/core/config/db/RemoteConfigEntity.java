package cn.mucang.android.core.config.db;

import cn.mucang.android.core.db.IdEntity;

/* JADX INFO: loaded from: classes.dex */
public class RemoteConfigEntity extends IdEntity {
    private String remoteKey;
    private int remoteKeyCount;

    public String getRemoteKey() {
        return this.remoteKey;
    }

    public int getRemoteKeyCount() {
        return this.remoteKeyCount;
    }

    public void setRemoteKey(String str) {
        this.remoteKey = str;
    }

    public void setRemoteKeyCount(int i) {
        this.remoteKeyCount = i;
    }
}
