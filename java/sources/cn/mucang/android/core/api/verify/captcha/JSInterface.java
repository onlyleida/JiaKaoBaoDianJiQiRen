package cn.mucang.android.core.api.verify.captcha;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.webkit.JavascriptInterface;
import cn.mucang.android.core.utils.k;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class JSInterface {
    private CaptchaDialog captchaDialog;
    private CaptchaListener captchaListener;
    private Context context;

    public JSInterface(Context context, CaptchaListener captchaListener, CaptchaDialog captchaDialog) {
        this.captchaListener = captchaListener;
        this.captchaDialog = captchaDialog;
        this.context = context;
    }

    private void runOnUiThread(Runnable runnable) {
        Context context = this.context;
        if (context == null || !(context instanceof Activity)) {
            return;
        }
        Activity activity = (Activity) context;
        if (activity.isFinishing() || runnable == null) {
            return;
        }
        activity.runOnUiThread(runnable);
    }

    @JavascriptInterface
    public void closeWindow() {
        runOnUiThread(new Runnable() { // from class: cn.mucang.android.core.api.verify.captcha.JSInterface.2
            @Override // java.lang.Runnable
            public void run() {
                k.b(JSInterface.this.captchaDialog);
                if (JSInterface.this.captchaListener != null) {
                    JSInterface.this.captchaListener.closeWindow();
                }
            }
        });
    }

    @JavascriptInterface
    public void onError(final String str) {
        runOnUiThread(new Runnable() { // from class: cn.mucang.android.core.api.verify.captcha.JSInterface.4
            @Override // java.lang.Runnable
            public void run() {
                k.b(JSInterface.this.captchaDialog);
                if (JSInterface.this.captchaListener != null) {
                    JSInterface.this.captchaListener.onError(str);
                }
            }
        });
    }

    @JavascriptInterface
    public void onReady() {
        runOnUiThread(new Runnable() { // from class: cn.mucang.android.core.api.verify.captcha.JSInterface.3
            @Override // java.lang.Runnable
            public void run() {
                if (!JSInterface.this.captchaDialog.isShowing()) {
                    new Handler().postDelayed(new Runnable() { // from class: cn.mucang.android.core.api.verify.captcha.JSInterface.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            JSInterface.this.captchaDialog.show();
                        }
                    }, 100L);
                }
                if (JSInterface.this.captchaListener != null) {
                    JSInterface.this.captchaListener.onReady(true);
                }
            }
        });
    }

    @JavascriptInterface
    public void onValidate(final String str, final String str2, final String str3) {
        runOnUiThread(new Runnable() { // from class: cn.mucang.android.core.api.verify.captcha.JSInterface.1
            @Override // java.lang.Runnable
            public void run() {
                t.h(CaptchaConstant.TAG, "result = " + str + ", validate = " + str2 + ", message = " + str3);
                String str4 = str2;
                if (str4 != null && str4.length() > 0) {
                    k.b(JSInterface.this.captchaDialog);
                }
                if (JSInterface.this.captchaListener != null) {
                    JSInterface.this.captchaListener.onValidate(str, str2, str3);
                }
            }
        });
    }
}
