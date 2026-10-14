package cn.mucang.android.core.api.verify.geetest;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GeetestCheckInfo implements Serializable {
    private String content;
    private String reqId;

    public String getContent() {
        return this.content;
    }

    public String getReqId() {
        return this.reqId;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setReqId(String str) {
        this.reqId = str;
    }
}
