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
import android.widget.TextView;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.AccountBaseModel;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.third.LoginPlatforms;
import cn.mucang.android.account.third.ThirdAccountUtils;
import cn.mucang.android.account.ui.LoginSmsCommonView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.framework.account.R;
import cn.mucang.android.framework.account.databinding.AccountActivityLoginMultiDefaultSmsBinding;
import cn.mucang.android.framework.account.databinding.AccountActivityLoginThirdLayoutBinding;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0010H\u0002J\u0012\u0010\u0015\u001a\u00020\u00102\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0010H\u0014J\b\u0010\u0019\u001a\u00020\u0010H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", "loginSmsModel", "Lcn/mucang/android/account/data/LoginSmsModel;", "loginSuccess", "", SocialConstants.PARAM_RECEIVER, "Landroid/content/BroadcastReceiver;", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "displayMiAndWxUI", "getStatName", "", "handleThirdLoginUI", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPause", "Companion", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginMultiDefaultSmsActivity extends l1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f2020h = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LoginSmsModel f2023f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f2021d = new ViewBindingLazy(AccountActivityLoginMultiDefaultSmsBinding.class, new c(this));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final BroadcastReceiver f2024g = new b();

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J$\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\fH\u0003J\u001c\u0010\r\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$Companion;", "", "()V", "TAG", "", "launch", "", "context", "Landroid/content/Context;", "loginSmsModel", "Lcn/mucang/android/account/data/LoginSmsModel;", "firstQuickLogin", "", "launchPreferQuickLogin", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        private final void b(Context context, LoginSmsModel loginSmsModel, boolean z) {
            if (context == null || loginSmsModel == null) {
                return;
            }
            Intent intent = new Intent(context, (Class<?>) LoginMultiDefaultSmsActivity.class);
            if (!cn.mucang.android.core.utils.d.c(context)) {
                intent.setFlags(268435456);
            }
            intent.putExtra("__key_extra_model__", loginSmsModel);
            context.startActivity(intent);
        }

        public final void a(Context context, LoginSmsModel loginSmsModel) {
            b(context, loginSmsModel, false);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$receiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            cn.mucang.android.account.third.u uVarA;
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(intent, "intent");
            String action = intent.getAction();
            if (kotlin.jvm.internal.r.a("cn.mucang.android.account.ACTION_LOGINED", action)) {
                LoginMultiDefaultSmsActivity.this.f2022e = true;
                LoginMultiDefaultSmsActivity.this.setResult(-1);
                LoginMultiDefaultSmsActivity.this.finish();
            } else {
                if (!kotlin.jvm.internal.r.a("cn.mucang.android.account.ACTION_INNER_THIRD_LOGIN_OK", action) || (stringExtra = intent.getStringExtra("third_login_platform")) == null || (uVarA = LoginPlatforms.f2300a.a(stringExtra)) == null) {
                    return;
                }
                LoginMultiDefaultSmsActivity.this.j(uVarA.d());
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f2026a;

        public c(Activity activity) {
            this.f2026a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f2026a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    public static final void B(Context context, LoginSmsModel loginSmsModel) {
        f2020h.a(context, loginSmsModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(LoginMultiDefaultSmsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(View view) {
        f.a.a.a.activity.h.e("https://laofuzi.kakamobi.com/login-guide/login-guide.html");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(LoginMultiDefaultSmsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LoginActivity.j.a(this$0, this$0.f2023f);
        cn.mucang.android.account.utils.a.onEvent("手机号短信登录页-点击密码登录");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(LoginMultiDefaultSmsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        m1.d(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(LoginSmsCommonView loginSmsCommonView, LoginMultiDefaultSmsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(loginSmsCommonView, "$loginSmsCommonView");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!loginSmsCommonView.getCheckBox().isChecked()) {
            loginSmsCommonView.getProtocolIn().startAnimation(AnimationUtils.loadAnimation(this$0, R.anim.core__account_protocol));
            cn.mucang.android.core.utils.u.h(cn.mucang.android.core.utils.n0.c(R.string.account__disagree_protocol_tip));
        } else {
            AccountManager accountManagerH = AccountManager.h();
            LoginSmsModel loginSmsModel = this$0.f2023f;
            accountManagerH.J(this$0, 1027, loginSmsModel == null ? null : loginSmsModel.setFrom("LoginMultiDefaultSmsActivity"), "xiaomi");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(LoginSmsCommonView loginSmsCommonView, LoginMultiDefaultSmsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(loginSmsCommonView, "$loginSmsCommonView");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!loginSmsCommonView.getCheckBox().isChecked()) {
            loginSmsCommonView.getProtocolIn().startAnimation(AnimationUtils.loadAnimation(this$0, R.anim.core__account_protocol));
            cn.mucang.android.core.utils.u.h(cn.mucang.android.core.utils.n0.c(R.string.account__disagree_protocol_tip));
        } else {
            AccountManager accountManagerH = AccountManager.h();
            LoginSmsModel loginSmsModel = this$0.f2023f;
            accountManagerH.K(this$0, 1027, loginSmsModel == null ? null : loginSmsModel.setFrom("LoginMultiDefaultSmsActivity"));
        }
    }

    private final void s() {
        LoginPlatforms loginPlatforms = LoginPlatforms.f2300a;
        if (loginPlatforms.a("xiaomi") != null && ThirdAccountUtils.a("mi_login_enable_ui", false)) {
            u();
            t().accountLoginThirdLayoutIn.accountLoginThirdXiaomiIv.setVisibility(0);
        }
        if (loginPlatforms.a("weixin") == null || !ThirdAccountUtils.a("wechat_login_enable_ui", false)) {
            return;
        }
        u();
        t().accountLoginThirdLayoutIn.accountLoginThirdWeixinIv.setVisibility(0);
    }

    private final AccountActivityLoginMultiDefaultSmsBinding t() {
        return (AccountActivityLoginMultiDefaultSmsBinding) this.f2021d.getValue();
    }

    private final void u() {
        if (t().accountLoginThirdLayoutIn.getRoot().getVisibility() != 0) {
            t().accountLoginThirdLayoutIn.getRoot().setVisibility(0);
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "手机号短信登录页";
    }

    public final void l() {
        if (h() != null && (h() instanceof LoginSmsModel)) {
            AccountBaseModel accountBaseModelH = h();
            Objects.requireNonNull(accountBaseModelH, "null cannot be cast to non-null type cn.mucang.android.account.data.LoginSmsModel");
            this.f2023f = (LoginSmsModel) accountBaseModelH;
        }
        if (this.f2023f == null) {
            cn.mucang.android.core.utils.t.m("LoginMultiDefaultSmsActivity", "loginSmsModel must be not null");
            finish();
            return;
        }
        AccountActivityLoginThirdLayoutBinding accountActivityLoginThirdLayoutBinding = t().accountLoginThirdLayoutIn;
        final LoginSmsCommonView loginSmsCommonView = t().smsCommon.smsCommon;
        kotlin.jvm.internal.r.d(loginSmsCommonView, "viewBinding.smsCommon.smsCommon");
        boolean z = true;
        loginSmsCommonView.setFocusable(true);
        loginSmsCommonView.setFocusableInTouchMode(true);
        loginSmsCommonView.setBtnSendSmsCode((TextView) findViewById(R.id.btn_send_voice_code));
        t().titleBar.titleBarCenter.setText("");
        LoginSmsModel loginSmsModel = this.f2023f;
        String phoneNumber = loginSmsModel == null ? null : loginSmsModel.getPhoneNumber();
        new cn.mucang.android.account.k.c(loginSmsCommonView).a(this.f2023f);
        if (cn.mucang.android.core.utils.n0.e(phoneNumber)) {
            phoneNumber = cn.mucang.android.account.f.b();
        }
        if (phoneNumber != null && phoneNumber.length() != 0) {
            z = false;
        }
        if (!z) {
            t().smsCommon.usernameInput.setText(phoneNumber);
            t().smsCommon.usernameInput.setSelection(phoneNumber.length());
        }
        t().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginMultiDefaultSmsActivity.m(this.f2125a, view);
            }
        });
        t().titleBar.tvUnknownSendSmsCode.setVisibility(getResources().getBoolean(R.bool.account__show_sms_code_help) ? 0 : 8);
        t().titleBar.tvUnknownSendSmsCode.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginMultiDefaultSmsActivity.n(view);
            }
        });
        t().loginByAccount.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginMultiDefaultSmsActivity.o(this.f2129a, view);
            }
        });
        t().accountAppeal.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginMultiDefaultSmsActivity.p(this.f2131a, view);
            }
        });
        t().accountLoginThirdLayoutIn.accountLoginThirdXiaomiIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginMultiDefaultSmsActivity.q(loginSmsCommonView, this, view);
            }
        });
        t().accountLoginThirdLayoutIn.accountLoginThirdWeixinIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginMultiDefaultSmsActivity.r(loginSmsCommonView, this, view);
            }
        });
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(t().getRoot());
        IntentFilter intentFilter = new IntentFilter("cn.mucang.android.account.ACTION_LOGINED");
        intentFilter.addAction("cn.mucang.android.account.ACTION_INNER_THIRD_LOGIN_OK");
        MucangConfig.q().c(this.f2024g, intentFilter);
        s();
        l();
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MucangConfig.q().e(this.f2024g);
        if (this.f2022e) {
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
