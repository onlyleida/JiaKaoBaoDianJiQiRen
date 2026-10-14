package cn.mucang.android.account.data;

import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes.dex */
public class LoginSmsModel extends LoginModel implements BaseModel {
    private String phoneNumber;
    private SkipCaptchaType skipCaptcha;

    /* JADX WARN: Illegal instructions before constructor call */
    public LoginSmsModel(String str) {
        CheckType checkType = CheckType.TRUE;
        super(checkType, str);
        this.skipCaptcha = SkipCaptchaType.LOCAL;
        this.checkType = checkType;
    }

    @Override // cn.mucang.android.account.data.LoginModel
    public CheckType getCheckType() {
        return this.checkType;
    }

    @Override // cn.mucang.android.account.data.LoginModel
    public String getFrom() {
        return this.from;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public SkipCaptchaType getSkipCaptcha() {
        return this.skipCaptcha;
    }

    public LoginSmsModel setPhoneNumber(String str) {
        this.phoneNumber = str;
        return this;
    }

    public LoginSmsModel setSkipCaptcha(SkipCaptchaType skipCaptchaType) {
        if (skipCaptchaType == null) {
            this.skipCaptcha = SkipCaptchaType.LOCAL;
        }
        this.skipCaptcha = skipCaptchaType;
        return this;
    }

    @Override // cn.mucang.android.account.data.LoginModel
    public LoginSmsModel setCheckType(CheckType checkType) {
        this.checkType = checkType;
        return this;
    }

    @Override // cn.mucang.android.account.data.AccountBaseModel
    public LoginSmsModel setExtraData(String str) {
        this.extraData = str;
        return this;
    }

    @Override // cn.mucang.android.account.data.LoginModel
    public LoginSmsModel setFrom(String str) {
        this.from = str;
        return this;
    }

    @Override // cn.mucang.android.account.data.LoginModel, cn.mucang.android.account.data.AccountBaseModel
    public LoginSmsModel setSkipAuthRealName(boolean z) {
        this.skipAuthRealName = z;
        return this;
    }

    @Override // cn.mucang.android.account.data.LoginModel, cn.mucang.android.account.data.AccountBaseModel
    public LoginSmsModel setSkipBindThird(boolean z) {
        this.skipBindThird = z;
        return this;
    }
}
