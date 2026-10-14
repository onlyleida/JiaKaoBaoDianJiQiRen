package cn.mucang.android.account.api.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ThirdBindResponse implements Serializable {
    private int thirdAccountId;
    private String thirdParty;

    public int getThirdAccountId() {
        return this.thirdAccountId;
    }

    public String getThirdParty() {
        return this.thirdParty;
    }

    public void setThirdAccountId(int i) {
        this.thirdAccountId = i;
    }

    public void setThirdParty(String str) {
        this.thirdParty = str;
    }
}
