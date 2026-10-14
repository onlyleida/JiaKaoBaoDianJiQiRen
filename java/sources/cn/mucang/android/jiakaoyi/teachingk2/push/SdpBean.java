package cn.mucang.android.jiakaoyi.teachingk2.push;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class SdpBean implements Serializable {
    private int code;
    private String sdp;
    private String server;
    private String sessionid;

    public int getCode() {
        return this.code;
    }

    public String getSdp() {
        return this.sdp;
    }

    public String getServer() {
        return this.server;
    }

    public String getSessionid() {
        return this.sessionid;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setSdp(String str) {
        this.sdp = str;
    }

    public void setServer(String str) {
        this.server = str;
    }

    public void setSessionid(String str) {
        this.sessionid = str;
    }
}
