package cn.mucang.android.account.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.data.AccountBaseModel;
import cn.mucang.android.account.data.LoginModel;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.third.LoginPlatforms;
import cn.mucang.android.account.third.ThirdAccountUtils;
import cn.mucang.android.account.utils.AccountProtocolUtils;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.api.verify.captcha.CaptchaConstant;
import cn.mucang.android.core.api.verify.captcha.CaptchaDialog;
import cn.mucang.android.core.api.verify.captcha.CaptchaListener;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.framework.account.R;
import cn.mucang.android.framework.account.databinding.AccountActivityLoginBinding;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 (2\u00020\u0001:\u0002()B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0014H\u0002J\b\u0010\u0018\u001a\u00020\u0006H\u0016J\b\u0010\u0019\u001a\u00020\u0014H\u0002J\"\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0012\u0010 \u001a\u00020\u00142\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\b\u0010#\u001a\u00020\u0014H\u0014J\b\u0010$\u001a\u00020\u0014H\u0014J\u0010\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020'H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010¨\u0006*"}, d2 = {"Lcn/mucang/android/account/activity/LoginActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", "checkType", "Lcn/mucang/android/account/api/data/CheckType;", "from", "", "loginModel", "Lcn/mucang/android/account/data/LoginModel;", "loginSuccess", "", SocialConstants.PARAM_RECEIVER, "Landroid/content/BroadcastReceiver;", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "displayMiAndWxUI", "doCanNotLogin", "doLogin", "getStatName", "handleThirdLoginUI", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPause", "showCaptchaDialog", "captchaListener", "Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;", "Companion", "LoginApiContext", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginActivity extends l1 {
    public static final a j = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CheckType f2009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2010f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f2011g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LoginModel f2012h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f2008d = new ViewBindingLazy(AccountActivityLoginBinding.class, new e(this));
    private final BroadcastReceiver i = new d();

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/account/activity/LoginActivity$Companion;", "", "()V", "REQUEST_FORGOT_PASSWORD", "", "REQUEST_THIRD_ACCOUNT_LOGIN", "TAG", "", "launch", "", "context", "Landroid/content/Context;", "loginModel", "Lcn/mucang/android/account/data/LoginModel;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, LoginModel loginModel) {
            if (context == null || loginModel == null) {
                cn.mucang.android.core.utils.t.d("LoginActivity", "context == null || loginModel == null");
                return;
            }
            Intent intent = new Intent(context, (Class<?>) LoginActivity.class);
            if (!cn.mucang.android.core.utils.d.c(context)) {
                intent.setFlags(268435456);
            }
            intent.putExtra("__key_extra_model__", loginModel);
            context.startActivity(intent);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B3\b\u0000\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0016R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/account/activity/LoginActivity$LoginApiContext;", "Lcn/mucang/android/account/api/context/AccountBaseApiContext;", "Lcn/mucang/android/account/activity/LoginActivity;", "Lcn/mucang/android/account/api/data/UserInfoResponseWrapper;", "loginActivity", "phoneNumber", "", "password", "from", "captchaValidate", "(Lcn/mucang/android/account/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "api", "Lcn/mucang/android/account/api/LoginApi;", "onApiSuccess", "", "response", SocialConstants.TYPE_REQUEST, "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private static final class b extends cn.mucang.android.account.g.q.a<LoginActivity, cn.mucang.android.account.api.data.b> {
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f2013d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f2014e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f2015f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final cn.mucang.android.account.g.j f2016g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(LoginActivity loginActivity, String phoneNumber, String password, String str, String captchaValidate) {
            super(loginActivity, "登录");
            kotlin.jvm.internal.r.e(phoneNumber, "phoneNumber");
            kotlin.jvm.internal.r.e(password, "password");
            kotlin.jvm.internal.r.e(captchaValidate, "captchaValidate");
            this.c = phoneNumber;
            this.f2013d = password;
            this.f2014e = str;
            this.f2015f = captchaValidate;
            this.f2016g = new cn.mucang.android.account.g.j();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(cn.mucang.android.account.api.data.b bVar) {
            LoginActivity loginActivity = (LoginActivity) f();
            if (loginActivity == null) {
                return;
            }
            cn.mucang.android.account.f.e(bVar == null ? null : bVar.f2147a, loginActivity.f2012h);
            loginActivity.f2010f = true;
            cn.mucang.android.account.utils.a.onEvent("手机号密码登录页-登录成功");
            cn.mucang.android.account.f.d(loginActivity, loginActivity.f2012h, bVar);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public cn.mucang.android.account.api.data.b request() throws Exception {
            cn.mucang.android.account.api.data.b bVarA = cn.mucang.android.account.f.a(this.f2016g.f(this.c, this.f2013d, this.f2014e, this.f2015f));
            kotlin.jvm.internal.r.d(bVarA, "checkNeedThirdBind(userInfoResponse)");
            return bVarA;
        }
    }

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016¨\u0006\u000f"}, d2 = {"cn/mucang/android/account/activity/LoginActivity$doLogin$captchaListener$1", "Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;", "closeWindow", "", "onCancel", "onError", SocialConstants.PARAM_SEND_MSG, "", "onReady", SpeechUtility.TAG_RESOURCE_RET, "", "onValidate", SpeechUtility.TAG_RESOURCE_RESULT, "validate", ErrorDialogParams.EXTRA_MESSAGE, "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements CaptchaListener {
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        c(String str, String str2) {
            this.b = str;
            this.c = str2;
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void closeWindow() {
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void onCancel() {
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void onError(String msg) {
            kotlin.jvm.internal.r.e(msg, "msg");
            cn.mucang.android.core.utils.u.h(CaptchaConstant.TOAST_LOAD_ERROR);
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void onReady(boolean ret) {
        }

        @Override // cn.mucang.android.core.api.verify.captcha.CaptchaListener
        public void onValidate(String result, String validate, String message) {
            kotlin.jvm.internal.r.e(result, "result");
            kotlin.jvm.internal.r.e(validate, "validate");
            kotlin.jvm.internal.r.e(message, "message");
            if (!kotlin.jvm.internal.r.a("true", result) || !cn.mucang.android.core.utils.n0.g(validate)) {
                cn.mucang.android.core.utils.u.h("验证码校验失败");
            } else {
                LoginActivity loginActivity = LoginActivity.this;
                cn.mucang.android.core.api.c.b.b(new b(loginActivity, this.b, this.c, loginActivity.f2011g, validate));
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/activity/LoginActivity$receiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends BroadcastReceiver {
        d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(intent, "intent");
            String action = intent.getAction();
            if (kotlin.jvm.internal.r.a("cn.mucang.android.account.ACTION_LOGINED", action)) {
                LoginActivity.this.f2010f = true;
                LoginActivity.this.setResult(-1);
                LoginActivity.this.finish();
            } else {
                if (!kotlin.jvm.internal.r.a("cn.mucang.android.account.ACTION_INNER_THIRD_LOGIN_OK", action) || (stringExtra = intent.getStringExtra("third_login_platform")) == null) {
                    return;
                }
                cn.mucang.android.account.third.u uVarA = LoginPlatforms.f2300a.a(stringExtra);
                if (uVarA != null) {
                    LoginActivity.this.j(uVarA.d());
                }
                cn.mucang.android.account.utils.a.onEvent("第三方登录成功");
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f2019a;

        public e(Activity activity) {
            this.f2019a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f2019a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    public static final void H(Context context, LoginModel loginModel) {
        j.a(context, loginModel);
    }

    private final void I(CaptchaListener captchaListener) {
        try {
            CaptchaDialog captchaDialog = new CaptchaDialog(this);
            captchaDialog.setDebug(false);
            captchaDialog.setCaptchaId(CaptchaConstant.CAPTCHA_ID);
            captchaDialog.setCanceledOnTouchOutside(true);
            captchaDialog.setCaListener(captchaListener);
            captchaDialog.initDialog();
            captchaDialog.show();
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.h("登录失败，请重试");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LoginModel loginModel = this$0.f2012h;
        LoginSmsModel loginSmsModel = new LoginSmsModel(loginModel == null ? null : loginModel.getFrom());
        LoginSmsModel checkType = loginSmsModel.setCheckType(this$0.f2009e);
        LoginModel loginModel2 = this$0.f2012h;
        checkType.setSkipAuthRealName(loginModel2 == null ? false : loginModel2.isSkipAuthRealName());
        AccountManager.h().G(this$0, loginSmsModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        m1.d(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!this$0.y().accountProtocolIn.checkBox.isChecked()) {
            this$0.y().accountProtocolIn.getRoot().startAnimation(AnimationUtils.loadAnimation(this$0, R.anim.core__account_protocol));
            cn.mucang.android.core.utils.u.h(cn.mucang.android.core.utils.n0.c(R.string.account__disagree_protocol_tip));
        } else {
            AccountManager accountManagerH = AccountManager.h();
            LoginModel loginModel = this$0.f2012h;
            accountManagerH.J(this$0, 1027, loginModel == null ? null : loginModel.setFrom("LoginActivity"), "xiaomi");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!this$0.y().accountProtocolIn.checkBox.isChecked()) {
            this$0.y().accountProtocolIn.getRoot().startAnimation(AnimationUtils.loadAnimation(this$0, R.anim.core__account_protocol));
            cn.mucang.android.core.utils.u.h(cn.mucang.android.core.utils.n0.c(R.string.account__disagree_protocol_tip));
        } else {
            AccountManager accountManagerH = AccountManager.h();
            LoginModel loginModel = this$0.f2012h;
            accountManagerH.K(this$0, 1027, loginModel == null ? null : loginModel.setFrom("LoginActivity"));
        }
    }

    private final void v() {
        LoginPlatforms loginPlatforms = LoginPlatforms.f2300a;
        if (loginPlatforms.a("xiaomi") != null && ThirdAccountUtils.a("mi_login_enable_ui", false)) {
            z();
            y().accountLoginThirdLayoutIn.accountLoginThirdXiaomiIv.setVisibility(0);
        }
        if (loginPlatforms.a("weixin") == null || !ThirdAccountUtils.a("wechat_login_enable_ui", false)) {
            return;
        }
        z();
        y().accountLoginThirdLayoutIn.accountLoginThirdWeixinIv.setVisibility(0);
    }

    private final void w() {
        m1.e(this, 1026, y().username.getText().toString());
        cn.mucang.android.account.utils.a.onEvent("手机号密码登录页-点击忘记密码");
    }

    private final void x() {
        Object systemService = getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(y().password.getWindowToken(), 0);
        String string = y().username.getText().toString();
        String string2 = y().password.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入手机号");
            return;
        }
        if (string.length() != 11) {
            cn.mucang.android.core.utils.u.h("手机号格式错误，请重新输入");
            return;
        }
        cn.mucang.android.account.f.g(string);
        if (cn.mucang.android.core.utils.n0.e(string2)) {
            cn.mucang.android.core.utils.u.h("请输入密码");
        } else if (y().accountProtocolIn.checkBox.isChecked()) {
            I(new c(string, string2));
            cn.mucang.android.account.utils.a.onEvent("手机号密码登录页-点击登录");
        } else {
            y().accountProtocolIn.getRoot().startAnimation(AnimationUtils.loadAnimation(this, R.anim.core__account_protocol));
            cn.mucang.android.core.utils.u.h(cn.mucang.android.core.utils.n0.c(R.string.account__disagree_protocol_tip));
        }
    }

    private final AccountActivityLoginBinding y() {
        return (AccountActivityLoginBinding) this.f2008d.getValue();
    }

    private final void z() {
        if (y().accountLoginThirdLayoutIn.getRoot().getVisibility() != 0) {
            y().accountLoginThirdLayoutIn.getRoot().setVisibility(0);
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "手机号密码登录页";
    }

    public final void n() {
        if (h() != null && (h() instanceof LoginModel)) {
            AccountBaseModel accountBaseModelH = h();
            Objects.requireNonNull(accountBaseModelH, "null cannot be cast to non-null type cn.mucang.android.account.data.LoginModel");
            this.f2012h = (LoginModel) accountBaseModelH;
        }
        LoginModel loginModel = this.f2012h;
        if (loginModel == null) {
            cn.mucang.android.core.utils.u.h("参数缺失");
            finish();
            return;
        }
        this.f2011g = loginModel == null ? null : loginModel.getFrom();
        LoginModel loginModel2 = this.f2012h;
        CheckType checkType = loginModel2 != null ? loginModel2.getCheckType() : null;
        CheckType checkType2 = CheckType.TRUE;
        if (checkType != checkType2) {
            checkType2 = CheckType.FALSE;
        }
        this.f2009e = checkType2;
        y().titleBar.titleBarCenter.setText("");
        String strB = cn.mucang.android.account.f.b();
        if (cn.mucang.android.core.utils.n0.g(strB)) {
            y().username.setText(strB);
            y().username.setSelection(strB.length());
        }
        y().username.addTextChangedListener(new cn.mucang.android.account.utils.e(y().username, y().btnOk));
        AccountProtocolUtils accountProtocolUtils = AccountProtocolUtils.f2251a;
        TextView textView = y().accountProtocolIn.tvProtocol;
        kotlin.jvm.internal.r.d(textView, "viewBinding.accountProtocolIn.tvProtocol");
        AccountProtocolUtils.c(accountProtocolUtils, textView, null, null, 6, null);
        y().btnOk.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.o(this.f2080a, view);
            }
        });
        y().canNotLogin.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.p(this.f2086a, view);
            }
        });
        y().loginSms.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.q(this.f2089a, view);
            }
        });
        y().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.r(this.f2095a, view);
            }
        });
        y().accountAppeal.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.s(this.f2083a, view);
            }
        });
        y().accountLoginThirdLayoutIn.accountLoginThirdXiaomiIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.t(this.f2077a, view);
            }
        });
        y().accountLoginThirdLayoutIn.accountLoginThirdWeixinIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.u(this.f2092a, view);
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1 && requestCode == 1026) {
            this.f2010f = true;
            setResult(-1);
            finish();
        }
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(y().getRoot());
        IntentFilter intentFilter = new IntentFilter("cn.mucang.android.account.ACTION_LOGINED");
        intentFilter.addAction("cn.mucang.android.account.ACTION_INNER_THIRD_LOGIN_OK");
        MucangConfig.q().c(this.i, intentFilter);
        v();
        n();
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MucangConfig.q().e(this.i);
        if (this.f2010f) {
            return;
        }
        cn.mucang.android.account.f.j();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        g();
    }
}
