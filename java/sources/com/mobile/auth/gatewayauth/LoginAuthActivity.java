package com.mobile.auth.gatewayauth;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.mobile.auth.gatewayauth.annotations.AuthNumber;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.utils.h;
import com.mobile.auth.gatewayauth.utils.i;
import com.nirvana.tools.core.AppUtils;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@AuthNumber
public class LoginAuthActivity extends Activity {
    public static final String EXIST = "exist";
    public static final String STOP_LOADING = "stop_loading";
    private String mAccessCode;
    private RelativeLayout mBodyDYVRL;
    private RelativeLayout mBodyRL;
    private RelativeLayout mLoginRL;
    private TextView mLoginTV;
    private ImageView mLogoIV;
    private RelativeLayout mMainRelativeLayout;
    private TextView mMaskNumberTV;
    private RelativeLayout mNumberDYVRL;
    private String mNumberPhone;
    private RelativeLayout mNumberRL;
    private com.mobile.auth.o.a mPnsLogger;
    private com.mobile.auth.w.a mProgressDialog;
    private String mProtocol;
    private RelativeLayout mProtocolRL;
    private CheckBox mProtocolSelectCB;
    private TextView mProtocolTV;
    private String mSlogan;
    private TextView mSloganTV;
    private TextView mSwitchTV;
    private RelativeLayout mTitleDYVRL;
    private RelativeLayout mTitleRL;
    private AuthUIConfig mUIConfig;
    private d mUIManager;
    private int mUIManagerID;
    private String mVendorClick;
    private String mVendorKey;
    private String mVendorProtocol;
    private long startTime;
    private boolean mIsDialog = false;
    private List<com.mobile.auth.gatewayauth.ui.b> mProtocolConfigs = new ArrayList(3);

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.LoginAuthActivity$2, reason: invalid class name */
    class AnonymousClass2 implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LinkedHashMap f13185a;
        final /* synthetic */ String b;

        AnonymousClass2(LinkedHashMap linkedHashMap, String str) {
            this.f13185a = linkedHashMap;
            this.b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CustomInterface customInterface;
            try {
                AuthRegisterViewConfig authRegisterViewConfig = (AuthRegisterViewConfig) this.f13185a.get(this.b);
                if (authRegisterViewConfig == null || (customInterface = authRegisterViewConfig.getCustomInterface()) == null) {
                    return;
                }
                customInterface.onClick(LoginAuthActivity.this);
            } catch (Throwable th) {
                a.a(th);
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.LoginAuthActivity$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LinkedHashMap f13186a;
        final /* synthetic */ String b;

        AnonymousClass3(LinkedHashMap linkedHashMap, String str) {
            this.f13186a = linkedHashMap;
            this.b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CustomInterface customInterface;
            try {
                AuthRegisterViewConfig authRegisterViewConfig = (AuthRegisterViewConfig) this.f13186a.get(this.b);
                if (authRegisterViewConfig == null || (customInterface = authRegisterViewConfig.getCustomInterface()) == null) {
                    return;
                }
                customInterface.onClick(LoginAuthActivity.this);
            } catch (Throwable th) {
                a.a(th);
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.LoginAuthActivity$4, reason: invalid class name */
    class AnonymousClass4 implements View.OnClickListener {
        AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                LoginAuthActivity.access$200(LoginAuthActivity.this).a(LoginAuthActivity.access$100(LoginAuthActivity.this));
                LoginAuthActivity.access$300(LoginAuthActivity.this, true, Constant.CODE_ERROR_USER_CANCEL, Constant.MSG_ERROR_USER_CANCEL);
            } catch (Throwable th) {
                a.a(th);
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.LoginAuthActivity$5, reason: invalid class name */
    class AnonymousClass5 implements View.OnClickListener {
        AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                LoginAuthActivity.access$000(LoginAuthActivity.this).setClickable(false);
                boolean zAccess$400 = LoginAuthActivity.access$400(LoginAuthActivity.this);
                if (!LoginAuthActivity.access$500(LoginAuthActivity.this).isCheckboxHidden() && !LoginAuthActivity.access$600(LoginAuthActivity.this).isChecked()) {
                    LoginAuthActivity.access$200(LoginAuthActivity.this).a(LoginAuthActivity.access$100(LoginAuthActivity.this), false, zAccess$400);
                    LoginAuthActivity.access$700(LoginAuthActivity.this).d("LoginAuthActivity errorCode = ", ResultCode.CODE_ERROR_USER_CHECKBOX, "; errorMsg = 请同意服务条款");
                    if (!LoginAuthActivity.access$500(LoginAuthActivity.this).isLogBtnToastHidden()) {
                        Toast.makeText(LoginAuthActivity.this.getApplicationContext(), "请同意服务条款", 1).show();
                    }
                    LoginAuthActivity.access$000(LoginAuthActivity.this).setClickable(true);
                    return;
                }
                LoginAuthActivity.access$200(LoginAuthActivity.this).a(LoginAuthActivity.access$100(LoginAuthActivity.this), true, zAccess$400);
                if (!zAccess$400) {
                    LoginAuthActivity.access$700(LoginAuthActivity.this).d("LoginAuthActivity errorCode = ", ResultCode.CODE_ERROR_PHONE_UNSAFE_FAIL, "; errorMsg = 页面非法修改");
                    LoginAuthActivity.access$000(LoginAuthActivity.this).setClickable(true);
                    if (h.a(LoginAuthActivity.this.getApplicationContext())) {
                        Toast.makeText(LoginAuthActivity.this.getApplicationContext(), "页面非法修改！", 1).show();
                        return;
                    }
                }
                LoginAuthActivity.this.showLoadingDialog();
                LoginAuthActivity.access$700(LoginAuthActivity.this).a("LoginAuthActivity", "; PhoneNumberAuthHelper2 = ", String.valueOf(LoginAuthActivity.access$200(LoginAuthActivity.this)));
                LoginAuthActivity.access$200(LoginAuthActivity.this).b(LoginAuthActivity.access$200(LoginAuthActivity.this).a());
            } catch (Throwable th) {
                a.a(th);
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.LoginAuthActivity$6, reason: invalid class name */
    class AnonymousClass6 implements View.OnClickListener {
        AnonymousClass6() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                LoginAuthActivity.access$200(LoginAuthActivity.this).b(LoginAuthActivity.access$100(LoginAuthActivity.this));
                LoginAuthActivity.access$300(LoginAuthActivity.this, true, Constant.CODE_ERROR_USER_SWITCH, "用户切换其他登录方式");
            } catch (Throwable th) {
                a.a(th);
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.LoginAuthActivity$7, reason: invalid class name */
    class AnonymousClass7 implements CompoundButton.OnCheckedChangeListener {
        AnonymousClass7() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            try {
                if (z) {
                    LoginAuthActivity.access$200(LoginAuthActivity.this).a(true);
                } else {
                    LoginAuthActivity.access$200(LoginAuthActivity.this).a(false);
                }
                LoginAuthActivity.access$000(LoginAuthActivity.this).setActivated(LoginAuthActivity.access$600(LoginAuthActivity.this).isChecked());
            } catch (Throwable th) {
                a.a(th);
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.LoginAuthActivity$9, reason: invalid class name */
    class AnonymousClass9 extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13193a;
        final /* synthetic */ String b;
        final /* synthetic */ int c;

        AnonymousClass9(String str, String str2, int i) {
            this.f13193a = str;
            this.b = str2;
            this.c = i;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            try {
                LoginAuthActivity.access$200(LoginAuthActivity.this).a(LoginAuthActivity.access$100(LoginAuthActivity.this), this.f13193a, this.b, false);
                LoginAuthActivity.access$200(LoginAuthActivity.this).a(this.f13193a, this.b);
            } catch (Throwable th) {
                a.a(th);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            try {
                super.updateDrawState(textPaint);
                textPaint.setUnderlineText(false);
                textPaint.setColor(this.c);
            } catch (Throwable th) {
                a.a(th);
            }
        }
    }

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
    }

    static /* synthetic */ RelativeLayout access$000(LoginAuthActivity loginAuthActivity) {
        try {
            return loginAuthActivity.mLoginRL;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ String access$100(LoginAuthActivity loginAuthActivity) {
        try {
            return loginAuthActivity.mVendorKey;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ d access$200(LoginAuthActivity loginAuthActivity) {
        try {
            return loginAuthActivity.mUIManager;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ void access$300(LoginAuthActivity loginAuthActivity, boolean z, String str, String str2) {
        try {
            loginAuthActivity.finishAuthPage(z, str, str2);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    static /* synthetic */ boolean access$400(LoginAuthActivity loginAuthActivity) {
        try {
            return loginAuthActivity.checkAuthPageUILegal();
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    static /* synthetic */ AuthUIConfig access$500(LoginAuthActivity loginAuthActivity) {
        try {
            return loginAuthActivity.mUIConfig;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ CheckBox access$600(LoginAuthActivity loginAuthActivity) {
        try {
            return loginAuthActivity.mProtocolSelectCB;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ com.mobile.auth.o.a access$700(LoginAuthActivity loginAuthActivity) {
        try {
            return loginAuthActivity.mPnsLogger;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    private boolean checkAuthPageUILegal() {
        TextView textView;
        TextView textView2;
        TextView textView3;
        try {
            return (i.a(this.mProtocolTV) || i.a(this.mLoginTV) || i.a(this.mMaskNumberTV) || (textView = this.mLoginTV) == null || i.a(textView.getCurrentTextColor()) || (textView2 = this.mProtocolTV) == null || i.a(textView2.getCurrentTextColor()) || (textView3 = this.mMaskNumberTV) == null || i.a(textView3.getCurrentTextColor())) ? false : true;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    private SpannableString dealProtocol(String str, List<com.mobile.auth.gatewayauth.ui.b> list) {
        try {
            SpannableString spannableString = new SpannableString(str);
            ClickableSpan vendorProtocol = getVendorProtocol(this.mVendorProtocol, this.mVendorClick, this.mUIConfig.getProtocolOneColor());
            for (com.mobile.auth.gatewayauth.ui.b bVar : list) {
                ClickableSpan protocol = getProtocol(bVar.b(), bVar.c(), bVar.d());
                int iIndexOf = str.indexOf(bVar.b());
                spannableString.setSpan(protocol, iIndexOf, bVar.b().length() + iIndexOf, 34);
            }
            spannableString.setSpan(vendorProtocol, str.indexOf(this.mVendorProtocol), str.indexOf(this.mVendorProtocol) + this.mVendorProtocol.length(), 34);
            return spannableString;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    private void finishAuthPage(boolean z, String str, String str2) {
        try {
            d dVar = this.mUIManager;
            if (dVar != null) {
                dVar.a(z, str, str2);
            } else {
                this.mPnsLogger.d("Exception finish!");
                finish();
            }
            if (this.mUIConfig.getAuthPageActOut() == null || this.mUIConfig.getActivityIn() == null) {
                return;
            }
            overridePendingTransition(AppUtils.getAnimResID(this, this.mUIConfig.getAuthPageActOut()), AppUtils.getAnimResID(this, this.mUIConfig.getActivityIn()));
        } catch (Throwable th) {
            a.a(th);
        }
    }

    private native ClickableSpan getProtocol(String str, String str2, int i);

    private ClickableSpan getVendorProtocol(final String str, final String str2, final int i) {
        try {
            return new ClickableSpan() { // from class: com.mobile.auth.gatewayauth.LoginAuthActivity.8
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    try {
                        LoginAuthActivity.access$200(LoginAuthActivity.this).a(LoginAuthActivity.access$100(LoginAuthActivity.this), str, str2, true);
                        LoginAuthActivity.access$200(LoginAuthActivity.this).a(str, str2);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    try {
                        super.updateDrawState(textPaint);
                        textPaint.setUnderlineText(false);
                        textPaint.setColor(i);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            };
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    @SafeProtector
    private native void init();

    @SafeProtector
    private native RelativeLayout initBodyView();

    @SafeProtector
    private native void initDynamicView();

    @SafeProtector
    private void initIntentData() {
        try {
            Intent intent = getIntent();
            this.mNumberPhone = intent.getStringExtra(Constant.LOGIN_ACTIVITY_NUMBER);
            this.mVendorKey = intent.getStringExtra(Constant.LOGIN_ACTIVITY_VENDOR_KEY);
            this.mAccessCode = intent.getStringExtra(Constant.LOGIN_ACTIVITY_ACCESSCODE);
            this.startTime = intent.getLongExtra(Constant.START_TIME, 0L);
            this.mUIManagerID = intent.getIntExtra(Constant.LOGIN_ACTIVITY_UI_MANAGER_ID, 0);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @SafeProtector
    private native RelativeLayout initLoginRL();

    @SafeProtector
    private native ImageView initLogoView();

    @SafeProtector
    private native void initMaskNumberDynamicView();

    @SafeProtector
    private native RelativeLayout initNumberView();

    @SafeProtector
    private native RelativeLayout initProtocolView();

    @SafeProtector
    private native TextView initSloganView();

    @SafeProtector
    private native TextView initSwitchView();

    @SafeProtector
    private native RelativeLayout initTitleView();

    @SafeProtector
    private native void initView();

    @SafeProtector
    private native void initXMLDynamicView();

    @SafeProtector
    private native void removeDynamicView();

    @SafeProtector
    private native void removeNumberView();

    private void setBackground(View view, Drawable drawable) {
        try {
            if (Build.VERSION.SDK_INT >= 16) {
                view.setBackground(drawable);
            } else {
                view.setBackgroundDrawable(drawable);
            }
        } catch (Throwable th) {
            a.a(th);
        }
    }

    private void setDialogBackGroundAlpha(float f2) {
        try {
            getWindow().setDimAmount(f2);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    private void xmlLoadErrorCB() {
        try {
            d dVar = this.mUIManager;
            if (dVar != null) {
                dVar.e();
            }
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public int getUIManagerID() {
        try {
            return this.mUIManagerID;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public void hideLoadingDialog() {
        try {
            com.mobile.auth.w.a aVar = this.mProgressDialog;
            if (aVar == null || !aVar.isShowing()) {
                return;
            }
            this.mProgressDialog.dismiss();
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @Override // android.app.Activity
    @SafeProtector
    protected native void onActivityResult(int i, int i2, Intent intent);

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            super.onBackPressed();
            finishAuthPage(true, Constant.CODE_ERROR_USER_CANCEL, Constant.MSG_ERROR_USER_CANCEL);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @Override // android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            hideLoadingDialog();
            removeDynamicView();
            removeNumberView();
            com.mobile.auth.o.a aVar = this.mPnsLogger;
            if (aVar != null) {
                aVar.a();
            }
            this.mUIManager = null;
            this.mUIConfig = null;
            super.onDestroy();
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        try {
            super.onResume();
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void showLoadingDialog() {
        try {
            this.mPnsLogger.a("LoginAuthActivity showLoadingDialog = ", String.valueOf(this.mProgressDialog), "; isShowLoadingDialog = true");
            if (this.mProgressDialog == null) {
                com.mobile.auth.w.a aVar = new com.mobile.auth.w.a(this, this.mUIConfig);
                this.mProgressDialog = aVar;
                aVar.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.mobile.auth.gatewayauth.LoginAuthActivity.1
                    @Override // android.content.DialogInterface.OnShowListener
                    public void onShow(DialogInterface dialogInterface) {
                        try {
                            LoginAuthActivity.access$000(LoginAuthActivity.this).setClickable(true);
                        } catch (Throwable th) {
                            a.a(th);
                        }
                    }
                });
            }
            this.mProgressDialog.setCancelable(true);
            this.mProgressDialog.show();
        } catch (Throwable th) {
            a.a(th);
        }
    }
}
