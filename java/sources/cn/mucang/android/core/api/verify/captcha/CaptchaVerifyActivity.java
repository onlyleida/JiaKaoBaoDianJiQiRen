package cn.mucang.android.core.api.verify.captcha;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.mucang.android.core.api.verify.ErrorAction;
import cn.mucang.android.core.api.verify.e;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.k;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.x;
import f.a.a.a.activity.c;
import f.a.a.a.activity.h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class CaptchaVerifyActivity extends Activity {
    public static final int INIT_TIMEOUT = 1;
    public static final int NO_NETWORK = 0;
    public static final int VALIDATE_TIMEOUT = 2;
    private String actionId;
    private CaptchaDialog captchaDialog;
    private boolean isAlreadySendNetMsg;
    private ProgressDialog progressDialog;
    private Handler handler = null;
    private Timer timer = null;
    private CaptchaListener captchaListener = new CaptchaListener() { // from class: cn.mucang.android.core.api.verify.captcha.CaptchaVerifyActivity.4
        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void closeWindow() {
            t.d(CaptchaConstant.TAG, "closeWindow");
            if (CaptchaVerifyActivity.this.isFinishing()) {
                return;
            }
            CaptchaVerifyActivity.this.finish(false, null);
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void onCancel() {
            t.d(CaptchaConstant.TAG, "onCancel");
            if (CaptchaVerifyActivity.this.isFinishing()) {
                return;
            }
            CaptchaVerifyActivity.this.finish(false, null);
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void onError(String str) {
            t.d(CaptchaConstant.TAG, "onError s: " + str);
            if (CaptchaVerifyActivity.this.isFinishing()) {
                return;
            }
            u.h(CaptchaConstant.TOAST_LOAD_ERROR);
            CaptchaVerifyActivity.this.finish(false, null);
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void onReady(boolean z) {
            t.d(CaptchaConstant.TAG, "onReady b: " + z);
            if (CaptchaVerifyActivity.this.isFinishing()) {
                return;
            }
            k.b(CaptchaVerifyActivity.this.progressDialog);
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void onValidate(String str, String str2, String str3) {
            t.d(CaptchaConstant.TAG, "onValidate result: " + str + " validate: " + str2 + " message: " + str3);
            if (!CaptchaVerifyActivity.this.isFinishing() && "true".equals(str) && n0.g(str2)) {
                MucangNameValuePair mucangNameValuePair = new MucangNameValuePair(CaptchaConstant.KEY_CAPTCHA_RESULT, str2);
                MucangNameValuePair mucangNameValuePair2 = new MucangNameValuePair(CaptchaConstant.KEY_ACTION_ID, CaptchaVerifyActivity.this.actionId);
                ArrayList arrayList = new ArrayList();
                arrayList.add(mucangNameValuePair);
                arrayList.add(mucangNameValuePair2);
                CaptchaVerifyActivity.this.finish(true, arrayList);
            }
        }
    };

    private static class MyHandler extends Handler {
        WeakReference<CaptchaVerifyActivity> mActivityReference;

        MyHandler(CaptchaVerifyActivity captchaVerifyActivity) {
            this.mActivityReference = new WeakReference<>(captchaVerifyActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            CaptchaVerifyActivity captchaVerifyActivity = this.mActivityReference.get();
            if (captchaVerifyActivity == null || captchaVerifyActivity.isFinishing()) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                u.h("网络异常，请检查网络后重试");
            } else if (i == 1) {
                u.h("初始化超时，请关闭并检查网络");
            } else if (i == 2) {
                u.h("验证超时，请关闭并检查网络");
            }
            captchaVerifyActivity.finish(false, null);
            t.a(CaptchaConstant.TAG, "handleMessage end");
        }
    }

    private class MyTask extends TimerTask {
        private int type;

        public MyTask(int i) {
            this.type = i;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            t.a(CaptchaConstant.TAG, "MyTask start");
            Message message = new Message();
            int i = this.type;
            if (i == 0) {
                message.what = 0;
            } else if (i == 1) {
                message.what = 1;
            } else if (i != 2) {
                return;
            } else {
                message.what = 2;
            }
            if (!CaptchaVerifyActivity.this.isAlreadySendNetMsg) {
                CaptchaVerifyActivity.this.handler.sendMessage(message);
                CaptchaVerifyActivity.this.isAlreadySendNetMsg = true;
            }
            t.a(CaptchaConstant.TAG, "MyTask end");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(boolean z, Object obj) {
        verifyComplete(z, obj);
        finish();
    }

    private boolean initCaptchaDialog() {
        try {
            CaptchaDialog captchaDialog = new CaptchaDialog(this);
            this.captchaDialog = captchaDialog;
            captchaDialog.setDebug(MucangConfig.v());
            this.captchaDialog.setCaptchaId(CaptchaConstant.CAPTCHA_ID);
            this.captchaDialog.setCaListener(this.captchaListener);
            this.captchaDialog.setProgressDialog(this.progressDialog);
            this.captchaDialog.setCanceledOnTouchOutside(true);
            this.captchaDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: cn.mucang.android.core.api.verify.captcha.CaptchaVerifyActivity.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    CaptchaVerifyActivity.this.captchaListener.onCancel();
                    k.b(CaptchaVerifyActivity.this.progressDialog);
                    t.a(CaptchaConstant.TAG, "用户取消验证");
                }
            });
            this.captchaDialog.initDialog();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private void initProgressDialog() {
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.progressDialog = progressDialog;
        progressDialog.setMessage("正在加载验证码");
        this.progressDialog.setCancelable(true);
        this.progressDialog.setIndeterminate(true);
        this.progressDialog.setCanceledOnTouchOutside(true);
        this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: cn.mucang.android.core.api.verify.captcha.CaptchaVerifyActivity.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (CaptchaVerifyActivity.this.isFinishing()) {
                    return;
                }
                if (CaptchaVerifyActivity.this.timer != null) {
                    CaptchaVerifyActivity.this.timer.cancel();
                    CaptchaVerifyActivity.this.timer.purge();
                }
                if (CaptchaVerifyActivity.this.captchaListener != null) {
                    CaptchaVerifyActivity.this.captchaListener.onCancel();
                }
            }
        });
        this.progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.core.api.verify.captcha.CaptchaVerifyActivity.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (CaptchaVerifyActivity.this.timer != null) {
                    CaptchaVerifyActivity.this.timer.cancel();
                    CaptchaVerifyActivity.this.timer.purge();
                }
            }
        });
        this.progressDialog.show();
        if (this.handler == null) {
            this.handler = new MyHandler(this);
        }
        this.isAlreadySendNetMsg = false;
        setSchedule(1, 10000);
    }

    public static void launch(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) CaptchaVerifyActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        intent.putExtra(CaptchaConstant.KEY_ACTION_ID, safeGetQueryParameter(str, "actionId"));
        context.startActivity(intent);
    }

    private static String safeGetQueryParameter(String str, String str2) {
        if (n0.e(str)) {
            return "";
        }
        try {
            return Uri.parse(str).getQueryParameter(str2);
        } catch (Exception unused) {
            return "";
        }
    }

    private void setSchedule(int i, int i2) {
        t.a(CaptchaConstant.TAG, "setSchedule start");
        MyTask myTask = new MyTask(i);
        Timer timer = new Timer();
        this.timer = timer;
        timer.schedule(myTask, i2);
    }

    private void verifyComplete(boolean z, Object obj) {
        c cVarA = h.a(ErrorAction.VERIFY_CAPTCHA.url);
        if (cVarA == null || !(cVarA instanceof e)) {
            return;
        }
        ((e) cVarA).c(z, obj);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.actionId = getIntent().getStringExtra(CaptchaConstant.KEY_ACTION_ID);
        initProgressDialog();
        validate();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        verifyComplete(false, null);
    }

    public void validate() {
        try {
            t.a(CaptchaConstant.TAG, "validate start");
            if (!isFinishing()) {
                if (!x.e()) {
                    this.captchaListener.onError("no network!");
                    setSchedule(0, 500);
                } else if (!initCaptchaDialog()) {
                    u.h(CaptchaConstant.TOAST_LOAD_ERROR);
                    finish(false, null);
                }
            }
        } catch (Exception e2) {
            t.d(CaptchaConstant.TAG, "Captcha SDK validate Error:" + e2.toString());
        }
    }
}
