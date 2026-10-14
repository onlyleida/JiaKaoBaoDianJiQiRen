package cn.mucang.jiakaoyi.uilib.message;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ButtonConfig implements Serializable {
    private String action;
    private String name;

    public String getAction() {
        return this.action;
    }

    public String getName() {
        return this.name;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setName(String str) {
        this.name = str;
    }
}
