package cn.mucang.android.core.api.verify.captcha;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.view.WindowManager;
import cn.mucang.android.core.identity.PrivacyDataManager;
import cn.mucang.android.core.utils.k;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class CaptchaDialog extends Dialog {
    private String dCaptchaId;
    private float dScale;
    private String dTitle;
    private int dWidth;
    private CaptchaListener dcaListener;
    private Context dcontext;
    private boolean debug;
    private CaptchaWebView dwebview;
    private boolean isShowing;
    private int mPositionH;
    private int mPositionW;
    private int mPositionX;
    private int mPositionY;
    private ProgressDialog progressDialog;

    public CaptchaDialog(Context context) {
        super(context);
        this.dwebview = null;
        this.dcaListener = null;
        this.dcontext = null;
        this.dCaptchaId = "";
        this.dTitle = "";
        this.debug = false;
        this.isShowing = false;
        this.mPositionX = -1;
        this.mPositionY = -1;
        this.mPositionW = -1;
        this.mPositionH = -1;
        this.progressDialog = null;
        this.dcontext = context;
    }

    private void getDialogWidth() {
        try {
            DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            float f2 = displayMetrics.density;
            this.dScale = f2;
            int i3 = this.mPositionW;
            if (i3 > 270) {
                this.dWidth = i3;
                return;
            }
            if (i2 < i) {
                i = (i2 * 3) / 4;
            }
            int i4 = (i * 4) / 5;
            if (((int) (i4 / f2)) < 270) {
                i4 = (int) (f2 * 270.0f);
            }
            this.dWidth = i4;
        } catch (Exception unused) {
            t.d(CaptchaConstant.TAG, "getDialogWidth failed");
        }
    }

    private void setWebView() {
        if (this.dwebview == null) {
            this.dwebview = new CaptchaWebView(this.dcontext, this.dcaListener, this);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(CaptchaConstant.BASE_URL);
        stringBuffer.append("?captchaId=" + this.dCaptchaId);
        stringBuffer.append("&deviceId=" + PrivacyDataManager.g());
        stringBuffer.append("&os=android");
        stringBuffer.append("&osVer=" + Build.VERSION.RELEASE);
        stringBuffer.append("&sdkVer=2.4.2");
        stringBuffer.append("&title=" + this.dTitle);
        stringBuffer.append("&debug=" + this.debug);
        stringBuffer.append("&width=" + ((int) (((float) this.dWidth) / this.dScale)));
        String string = stringBuffer.toString();
        t.a(CaptchaConstant.TAG, "url: " + string);
        this.dwebview.addJavascriptInterface(new JSInterface(this.dcontext, this.dcaListener, this), "JSInterface");
        this.dwebview.loadUrl(string);
        this.dwebview.buildLayer();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        int i = this.mPositionX;
        if (i != -1) {
            attributes.gravity = 3;
            attributes.x = i;
        }
        int i2 = this.mPositionY;
        if (i2 != -1) {
            attributes.gravity |= 48;
            attributes.y = i2;
        }
        int i3 = this.mPositionW;
        if (i3 > 0) {
            attributes.width = i3;
        }
        int i4 = this.mPositionH;
        if (i4 > 0) {
            attributes.height = i4;
        }
        getWindow().setAttributes(attributes);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.isShowing = false;
        try {
            super.dismiss();
        } catch (Exception e2) {
            t.d(CaptchaConstant.TAG, "Captcha Dialog dismiss Error:" + e2.toString());
        }
    }

    public ProgressDialog getProgressDialog() {
        return this.progressDialog;
    }

    public void initDialog() {
        t.a(CaptchaConstant.TAG, "start init dialog");
        getDialogWidth();
        setWebView();
    }

    public boolean isDebug() {
        return this.debug;
    }

    @Override // android.app.Dialog
    public boolean isShowing() {
        return this.isShowing;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(this.dwebview);
        ViewGroup.LayoutParams layoutParams = this.dwebview.getLayoutParams();
        int i = this.dWidth;
        layoutParams.width = i;
        layoutParams.height = (int) ((((double) i) / 2.0d) + ((double) (this.dScale * 52.0f)) + 15.0d);
        this.dwebview.setLayoutParams(layoutParams);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void onPageFinished() {
        k.b(this.progressDialog);
    }

    public CaptchaDialog setCaListener(CaptchaListener captchaListener) {
        this.dcaListener = captchaListener;
        return this;
    }

    public CaptchaDialog setCaptchaId(String str) {
        this.dCaptchaId = str;
        return this;
    }

    public CaptchaDialog setDebug(boolean z) {
        this.debug = z;
        return this;
    }

    public void setPosition(int i, int i2, int i3, int i4) {
        this.mPositionX = i;
        this.mPositionY = i2;
        this.mPositionW = i3;
        this.mPositionH = i4;
    }

    public CaptchaDialog setProgressDialog(ProgressDialog progressDialog) {
        if (this.progressDialog == null && progressDialog != null) {
            this.progressDialog = progressDialog;
        }
        return this;
    }

    public CaptchaDialog setTitle(String str) {
        this.dTitle = str;
        return this;
    }

    @Override // android.app.Dialog
    public void show() {
        this.isShowing = true;
        try {
            Context context = this.dcontext;
            if (context == null || ((Activity) context).isFinishing()) {
                return;
            }
            super.show();
        } catch (Exception e2) {
            t.d(CaptchaConstant.TAG, "Captcha Dialog show Error:" + e2.toString());
        }
    }
}
