package cn.mucang.jiakaoyi.uilib.unityres;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class UpgradeLocalInfo implements Serializable {
    public String path;
    public int type;
    public int version;

    public UpgradeLocalInfo() {
    }

    public UpgradeLocalInfo(int i, int i2, String str) {
        this.type = i;
        this.version = i2;
        this.path = str;
    }
}
