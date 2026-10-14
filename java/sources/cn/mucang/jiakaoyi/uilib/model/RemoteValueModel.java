package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class RemoteValueModel implements Serializable {
    private String desc;
    private String value;
    private String version;

    public String getDesc() {
        return this.desc;
    }

    public String getValue() {
        return this.value;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
