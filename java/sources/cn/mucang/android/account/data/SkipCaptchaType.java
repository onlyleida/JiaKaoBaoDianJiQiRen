package cn.mucang.android.account.data;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public enum SkipCaptchaType {
    LOCAL(MucangConfig.getContext().getResources().getBoolean(R.bool.account__sms_login_skip_captcha)),
    SKIP(true),
    NOT_SKIP(false);

    boolean skipCaptcha;

    SkipCaptchaType(boolean z) {
        this.skipCaptcha = z;
    }

    public static SkipCaptchaType getSkipCaptchaType(boolean z) {
        return z ? SKIP : NOT_SKIP;
    }

    public boolean isSkipCaptcha() {
        return this.skipCaptcha;
    }
}
