package cn.mucang.android.account.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.data.CaptchaModel;
import cn.mucang.android.account.utils.AccountProtocolUtils;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.verify.captcha.CaptchaConstant;
import cn.mucang.android.framework.account.R;
import cn.mucang.android.framework.account.databinding.AccountActivityForgotPasswordBinding;
import cn.mucang.android.framework.account.databinding.AccountIncludeProtocolBinding;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0002J\"\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0012\u0010\u0019\u001a\u00020\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/account/activity/ForgotPasswordActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", "captchaPresenter", "Lcn/mucang/android/account/presenter/CaptchaPresenter;", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "doOk", "getStatName", "", "initProtocol", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "OkApiContext", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ForgotPasswordActivity extends l1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f2001d = new ViewBindingLazy(AccountActivityForgotPasswordBinding.class, new b(this));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputMethodManager f2002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.account.k.a f2003f;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B'\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0002\u0010\tJ\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/account/activity/ForgotPasswordActivity$OkApiContext;", "Lcn/mucang/android/account/api/context/AccountBaseApiContext;", "Lcn/mucang/android/account/activity/ForgotPasswordActivity;", "Lcn/mucang/android/account/api/data/CheckSmsResponse;", "forgotPasswordActivity", "username", "", "captchaId", CaptchaConstant.TAG, "(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "api", "Lcn/mucang/android/account/api/ForgotPasswordApi;", "onApiSuccess", "", "response", SocialConstants.TYPE_REQUEST, "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    static final class a extends cn.mucang.android.account.g.q.a<ForgotPasswordActivity, CheckSmsResponse> {
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f2004d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f2005e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final cn.mucang.android.account.g.i f2006f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ForgotPasswordActivity forgotPasswordActivity, String username, String captchaId, String captcha) {
            super(forgotPasswordActivity, "校验");
            kotlin.jvm.internal.r.e(username, "username");
            kotlin.jvm.internal.r.e(captchaId, "captchaId");
            kotlin.jvm.internal.r.e(captcha, "captcha");
            this.c = username;
            this.f2004d = captchaId;
            this.f2005e = captcha;
            this.f2006f = new cn.mucang.android.account.g.i();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final void j(a this$0) {
            cn.mucang.android.account.k.a aVar;
            kotlin.jvm.internal.r.e(this$0, "this$0");
            ForgotPasswordActivity forgotPasswordActivity = (ForgotPasswordActivity) this$0.f();
            if (forgotPasswordActivity == null || (aVar = forgotPasswordActivity.f2003f) == null) {
                return;
            }
            aVar.u();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void b(CheckSmsResponse checkSmsResponse) {
            ForgotPasswordActivity forgotPasswordActivity = (ForgotPasswordActivity) f();
            if (forgotPasswordActivity == null) {
                return;
            }
            ValidationActivity.a aVar = new ValidationActivity.a(forgotPasswordActivity);
            aVar.d(4);
            aVar.b(checkSmsResponse);
            aVar.f("验证手机");
            aVar.e(this.c);
            aVar.c("验证手机后，你可以直接重置密码");
            forgotPasswordActivity.startActivityForResult(aVar.a(), 1234);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public CheckSmsResponse request() throws Exception {
            try {
                CheckSmsResponse checkSmsResponseF = this.f2006f.f(this.c, this.f2004d, this.f2005e);
                kotlin.jvm.internal.r.d(checkSmsResponseF, "{\n                api.ch…d, captcha)\n            }");
                return checkSmsResponseF;
            } catch (ApiException e2) {
                cn.mucang.android.core.utils.t.c("Exception", e2);
                if (e2.getErrorCode() == 20011) {
                    cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.activity.d0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ForgotPasswordActivity.a.j(this.f2071a);
                        }
                    });
                }
                throw e2;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f2007a;

        public b(Activity activity) {
            this.f2007a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f2007a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ForgotPasswordActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        InputMethodManager inputMethodManager = this$0.f2002e;
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(this$0.q().username, 1);
        } else {
            kotlin.jvm.internal.r.u("inputMethodManager");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ForgotPasswordActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ForgotPasswordActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    private final void p() {
        String strT;
        String strS;
        String string = q().username.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入手机号");
            return;
        }
        cn.mucang.android.account.k.a aVar = this.f2003f;
        if (cn.mucang.android.core.utils.n0.e(aVar == null ? null : aVar.s())) {
            cn.mucang.android.core.utils.u.h("请输入验证码");
            return;
        }
        AccountIncludeProtocolBinding accountIncludeProtocolBinding = q().accountProtocolIn;
        if (!accountIncludeProtocolBinding.checkBox.isChecked()) {
            accountIncludeProtocolBinding.getRoot().startAnimation(AnimationUtils.loadAnimation(accountIncludeProtocolBinding.getRoot().getContext(), R.anim.core__account_protocol));
            cn.mucang.android.core.utils.u.h(cn.mucang.android.core.utils.n0.c(R.string.account__disagree_protocol_tip));
            return;
        }
        cn.mucang.android.account.k.a aVar2 = this.f2003f;
        String str = "";
        if (aVar2 == null || (strT = aVar2.t()) == null) {
            strT = "";
        }
        cn.mucang.android.account.k.a aVar3 = this.f2003f;
        if (aVar3 != null && (strS = aVar3.s()) != null) {
            str = strS;
        }
        cn.mucang.android.core.api.c.b.b(new a(this, string, strT, str));
    }

    private final AccountActivityForgotPasswordBinding q() {
        return (AccountActivityForgotPasswordBinding) this.f2001d.getValue();
    }

    private final void r() {
        AccountIncludeProtocolBinding accountIncludeProtocolBinding = q().accountProtocolIn;
        accountIncludeProtocolBinding.checkBox.setText(cn.mucang.android.core.utils.n0.c(R.string.account__find_pwd_agree_protocol_content));
        AccountProtocolUtils accountProtocolUtils = AccountProtocolUtils.f2251a;
        TextView tvProtocol = accountIncludeProtocolBinding.tvProtocol;
        kotlin.jvm.internal.r.d(tvProtocol, "tvProtocol");
        AccountProtocolUtils.c(accountProtocolUtils, tvProtocol, null, null, 6, null);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "找回密码页";
    }

    public final void l() {
        r();
        q().titleBar.titleBarCenter.setText("找回密码");
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.account.activity.c0
            @Override // java.lang.Runnable
            public final void run() {
                ForgotPasswordActivity.m(this.f2068a);
            }
        }, 500L);
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("__extra_phone_number__") : null;
        if (!(stringExtra == null || stringExtra.length() == 0)) {
            q().username.setText(stringExtra);
            q().username.setSelection(stringExtra.length());
        }
        cn.mucang.android.account.k.a aVar = new cn.mucang.android.account.k.a(q().captcha.captcha);
        this.f2003f = aVar;
        if (aVar != null) {
            aVar.a(new CaptchaModel("/forgot-password/request-captcha.htm"));
        }
        q().username.addTextChangedListener(new cn.mucang.android.account.utils.e(q().username, q().btnOk));
        q().btnOk.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ForgotPasswordActivity.n(this.f2074a, view);
            }
        });
        q().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ForgotPasswordActivity.o(this.f2065a, view);
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1234 && resultCode == -1) {
            setResult(-1);
            finish();
            return;
        }
        cn.mucang.android.account.k.a aVar = this.f2003f;
        if (aVar == null || aVar == null) {
            return;
        }
        aVar.u();
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(q().getRoot());
        Object systemService = getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        this.f2002e = (InputMethodManager) systemService;
        l();
    }
}
