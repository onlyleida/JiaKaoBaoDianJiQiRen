package cn.mucang.android.account.p000one_key_login.model;

import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes.dex */
public class PhoneModel implements BaseModel {
    public String errorMsg;
    public String phone;
    public boolean success;

    public PhoneModel(boolean z, String str, String str2) {
        this.success = z;
        this.phone = str;
        this.errorMsg = str2;
    }
}
