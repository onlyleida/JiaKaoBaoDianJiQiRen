package cn.mucang.android.account.data;

import cn.mucang.android.account.api.data.CheckType;

/* JADX INFO: loaded from: classes.dex */
public class LoginModel extends AccountBaseModel {
    protected CheckType checkType;
    protected String from;

    public LoginModel(CheckType checkType, String str) {
        this.checkType = checkType;
        this.from = str;
    }

    public CheckType getCheckType() {
        return this.checkType;
    }

    public String getFrom() {
        return this.from;
    }

    @Override // cn.mucang.android.account.data.AccountBaseModel
    public boolean isSkipAuthRealName() {
        return super.isSkipAuthRealName();
    }

    @Override // cn.mucang.android.account.data.AccountBaseModel
    public boolean isSkipBindThird() {
        return super.isSkipBindThird();
    }

    public LoginModel setCheckType(CheckType checkType) {
        this.checkType = checkType;
        return this;
    }

    public LoginModel setFrom(String str) {
        this.from = str;
        return this;
    }

    @Override // cn.mucang.android.account.data.AccountBaseModel
    public LoginModel setSkipAuthRealName(boolean z) {
        this.skipAuthRealName = z;
        return this;
    }

    @Override // cn.mucang.android.account.data.AccountBaseModel
    public LoginModel setSkipBindThird(boolean z) {
        this.skipBindThird = z;
        return this;
    }
}
