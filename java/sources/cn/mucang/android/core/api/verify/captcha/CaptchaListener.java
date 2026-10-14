package cn.mucang.android.core.api.verify.captcha;

/* JADX INFO: loaded from: classes.dex */
public interface CaptchaListener {
    void closeWindow();

    void onCancel();

    void onError(String str);

    void onReady(boolean z);

    void onValidate(String str, String str2, String str3);
}
