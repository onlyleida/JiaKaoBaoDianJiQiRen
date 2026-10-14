package cn.mucang.android.jiakaoyi.teachingk2.push;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class AliPushUrl implements Serializable {
    public static final int TYPE_ALI = 1;
    public static final int TYPE_YS = 0;
    private int type;
    private String url;

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
