package cn.mucang.android.account.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.framework.account.databinding.AccountActivitySetPasswordBinding;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0005\u001d\u001e\u001f !B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0016J\u0012\u0010\u0018\u001a\u00020\u00122\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u001cH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006\""}, d2 = {"Lcn/mucang/android/account/activity/SetPasswordActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", "from", "", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "passwordType", "", "smsId", "smsToken", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "doForgotPassword", "password", "doOk", "doSetPassword", "getStatName", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "verifyIntentData", "", "Companion", "ForgotApiContext", "IntentBuilder", "LoginSmsSetPasswordApiContext", "SetPasswordApiContext", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SetPasswordActivity extends l1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f2033d = new ViewBindingLazy(AccountActivitySetPasswordBinding.class, new e(this));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputMethodManager f2034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2035f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f2036g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2037h;
    private String i;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B+\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/account/activity/SetPasswordActivity$ForgotApiContext;", "Lcn/mucang/android/account/api/context/AccountBaseApiContext;", "Lcn/mucang/android/account/activity/SetPasswordActivity;", "Lcn/mucang/android/account/api/data/UserInfoResponse;", "setPasswordActivity", "password", "", "smsId", "smsToken", "(Lcn/mucang/android/account/activity/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "api", "Lcn/mucang/android/account/api/ForgotPasswordApi;", "onApiSuccess", "", "response", SocialConstants.TYPE_REQUEST, "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private static final class a extends cn.mucang.android.account.g.q.a<SetPasswordActivity, UserInfoResponse> {
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f2038d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f2039e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final cn.mucang.android.account.g.i f2040f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SetPasswordActivity setPasswordActivity, String password, String str, String str2) {
            super(setPasswordActivity, "设置密码");
            kotlin.jvm.internal.r.e(password, "password");
            this.c = password;
            this.f2038d = str;
            this.f2039e = str2;
            this.f2040f = new cn.mucang.android.account.g.i();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(UserInfoResponse userInfoResponse) {
            SetPasswordActivity setPasswordActivity = (SetPasswordActivity) f();
            kotlin.jvm.internal.r.c(setPasswordActivity);
            cn.mucang.android.account.f.e(userInfoResponse, setPasswordActivity.h());
            cn.mucang.android.account.utils.a.onEvent("找回密码-登录成功");
            setPasswordActivity.setResult(-1);
            setPasswordActivity.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public UserInfoResponse request() throws Exception {
            UserInfoResponse userInfoResponseH = this.f2040f.h(this.c, this.f2038d, this.f2039e);
            kotlin.jvm.internal.r.d(userInfoResponseH, "api.submit(password, smsId, smsToken)");
            return userInfoResponseH;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/account/activity/SetPasswordActivity$IntentBuilder;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "from", "", "passwordType", "", "smsId", "smsToken", "build", "Landroid/content/Intent;", "setFrom", "setPasswordType", "setSmsId", "setSmsToken", "Companion", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2041a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f2042d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2043e;

        public b(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            this.f2041a = context;
        }

        public final Intent a() {
            Intent intent = new Intent(this.f2041a, (Class<?>) SetPasswordActivity.class);
            intent.putExtra("__sms_id__", this.c);
            intent.putExtra("__sms_token__", this.b);
            intent.putExtra("__password_type__", this.f2042d);
            if (cn.mucang.android.core.utils.n0.g(this.f2043e)) {
                intent.putExtra("__extra_from__", this.f2043e);
            }
            return intent;
        }

        public final b b(int i) {
            this.f2042d = i;
            return this;
        }

        public final b c(String str) {
            this.c = str;
            return this;
        }

        public final b d(String str) {
            this.b = str;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B+\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ\u0017\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0002\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u0011R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/account/activity/SetPasswordActivity$LoginSmsSetPasswordApiContext;", "Lcn/mucang/android/account/api/context/AccountBaseApiContext;", "Lcn/mucang/android/account/activity/SetPasswordActivity;", "", "setPasswordActivity", "password", "", "smsId", "smsToken", "(Lcn/mucang/android/account/activity/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "api", "Lcn/mucang/android/account/api/LoginSmsApi;", "onApiSuccess", "", "response", "(Ljava/lang/Boolean;)V", SocialConstants.TYPE_REQUEST, "()Ljava/lang/Boolean;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private static final class c extends cn.mucang.android.account.g.q.a<SetPasswordActivity, Boolean> {
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f2044d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f2045e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final cn.mucang.android.account.g.k f2046f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(SetPasswordActivity setPasswordActivity, String password, String str, String str2) {
            super(setPasswordActivity, "设置密码");
            kotlin.jvm.internal.r.e(password, "password");
            this.c = password;
            this.f2044d = str;
            this.f2045e = str2;
            this.f2046f = new cn.mucang.android.account.g.k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(Boolean bool) {
            if (bool == null || !bool.booleanValue()) {
                return;
            }
            SetPasswordActivity setPasswordActivity = (SetPasswordActivity) f();
            cn.mucang.android.account.f.k(true);
            kotlin.jvm.internal.r.c(setPasswordActivity);
            setPasswordActivity.setResult(-1);
            setPasswordActivity.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Boolean request() throws Exception {
            this.f2046f.i(this.c, this.f2044d, this.f2045e);
            return Boolean.TRUE;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B+\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ\u0017\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0002\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u0011R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/account/activity/SetPasswordActivity$SetPasswordApiContext;", "Lcn/mucang/android/account/api/context/AccountBaseApiContext;", "Lcn/mucang/android/account/activity/SetPasswordActivity;", "", "setPasswordActivity", "password", "", "smsId", "smsToken", "(Lcn/mucang/android/account/activity/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "api", "Lcn/mucang/android/account/api/SetPasswordApi;", "onApiSuccess", "", "response", "(Ljava/lang/Boolean;)V", SocialConstants.TYPE_REQUEST, "()Ljava/lang/Boolean;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private static final class d extends cn.mucang.android.account.g.q.a<SetPasswordActivity, Boolean> {
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f2047d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f2048e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final cn.mucang.android.account.g.m f2049f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(SetPasswordActivity setPasswordActivity, String password, String str, String str2) {
            super(setPasswordActivity, "设置密码");
            kotlin.jvm.internal.r.e(password, "password");
            this.c = password;
            this.f2047d = str;
            this.f2048e = str2;
            this.f2049f = new cn.mucang.android.account.g.m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(Boolean bool) {
            if (bool == null || !bool.booleanValue()) {
                return;
            }
            SetPasswordActivity setPasswordActivity = (SetPasswordActivity) f();
            cn.mucang.android.account.f.k(true);
            kotlin.jvm.internal.r.c(setPasswordActivity);
            setPasswordActivity.setResult(-1);
            setPasswordActivity.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Boolean request() throws Exception {
            this.f2049f.g(this.c, this.f2047d, this.f2048e);
            return Boolean.TRUE;
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f2050a;

        public e(Activity activity) {
            this.f2050a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f2050a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(SetPasswordActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        InputMethodManager inputMethodManager = this$0.f2034e;
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(this$0.r().password, 1);
        } else {
            kotlin.jvm.internal.r.u("inputMethodManager");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(SetPasswordActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(SetPasswordActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.p();
    }

    private final void o(String str) {
        cn.mucang.android.core.api.c.b.b(new a(this, str, this.f2035f, this.f2036g));
    }

    private final void p() {
        String string = r().password.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入密码");
            return;
        }
        if (string.length() < 6 || string.length() > 20) {
            cn.mucang.android.core.utils.u.h("密码应由6-20个字符组成");
            return;
        }
        int i = this.f2037h;
        if (i == 1) {
            o(string);
        } else {
            if (i != 2) {
                return;
            }
            q(string);
        }
    }

    private final void q(String str) {
        if (kotlin.jvm.internal.r.a("__from_login_sms_set_password__", this.i)) {
            cn.mucang.android.core.api.c.b.b(new c(this, str, this.f2035f, this.f2036g));
        } else {
            cn.mucang.android.core.api.c.b.b(new d(this, str, this.f2035f, this.f2036g));
        }
        cn.mucang.android.account.utils.a.onEvent("设置密码页-点击确定并登录");
    }

    private final AccountActivitySetPasswordBinding r() {
        return (AccountActivitySetPasswordBinding) this.f2033d.getValue();
    }

    private final boolean v() {
        Intent intent = getIntent();
        this.f2035f = intent.getStringExtra("__sms_id__");
        this.f2036g = intent.getStringExtra("__sms_token__");
        this.f2037h = intent.getIntExtra("__password_type__", -1);
        this.i = intent.getStringExtra("__extra_from__");
        if (cn.mucang.android.core.utils.n0.e(this.f2036g) || cn.mucang.android.core.utils.n0.e(this.f2035f)) {
            cn.mucang.android.core.utils.u.h("非法访问本界面");
            finish();
            return false;
        }
        int i = this.f2037h;
        if (i == 1 || i == 2) {
            return true;
        }
        cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m("非法的密码设置类型:", Integer.valueOf(i)));
        finish();
        return false;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "设置密码页";
    }

    public final void k() {
        if (v()) {
            r().titleBar.titleBarCenter.setText("设置密码");
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.account.activity.x0
                @Override // java.lang.Runnable
                public final void run() {
                    SetPasswordActivity.l(this.f2141a);
                }
            }, 500L);
            r().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.y0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SetPasswordActivity.m(this.f2143a, view);
                }
            });
            r().btnOk.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.z0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SetPasswordActivity.n(this.f2145a, view);
                }
            });
        }
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(r().getRoot());
        Object systemService = getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        this.f2034e = (InputMethodManager) systemService;
        k();
    }
}
