package cn.mucang.android.account.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AccountBaseModel implements Serializable {
    protected String extraData;
    protected boolean skipAuthRealName;
    protected boolean skipBindThird;

    public String getExtraData() {
        return this.extraData;
    }

    public boolean isSkipAuthRealName() {
        return this.skipAuthRealName;
    }

    public boolean isSkipBindThird() {
        return this.skipBindThird;
    }

    public AccountBaseModel setExtraData(String str) {
        this.extraData = str;
        return this;
    }

    public AccountBaseModel setSkipAuthRealName(boolean z) {
        this.skipAuthRealName = z;
        return this;
    }

    public AccountBaseModel setSkipBindThird(boolean z) {
        this.skipBindThird = z;
        return this;
    }
}
