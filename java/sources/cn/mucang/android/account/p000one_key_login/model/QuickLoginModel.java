package cn.mucang.android.account.p000one_key_login.model;

import cn.mucang.android.account.data.AccountBaseModel;
import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes.dex */
public class QuickLoginModel extends AccountBaseModel implements BaseModel {
    private String secret;
    private String securityPhone;

    public QuickLoginModel(String str) {
        this.secret = str;
    }

    public String getSecret() {
        return this.secret;
    }

    public String getSecurityPhone() {
        return this.securityPhone;
    }

    public QuickLoginModel setSecret(String str) {
        this.secret = str;
        return this;
    }

    public QuickLoginModel setSecurityPhone(String str) {
        this.securityPhone = str;
        return this;
    }

    public QuickLoginModel() {
    }
}
