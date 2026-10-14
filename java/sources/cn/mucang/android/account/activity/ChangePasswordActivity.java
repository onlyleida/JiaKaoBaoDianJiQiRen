package cn.mucang.android.account.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.framework.account.databinding.AccountActivityChangePasswordBinding;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\b\u0010\r\u001a\u00020\fH\u0002J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/account/activity/ChangePasswordActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "doOk", "getStatName", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "ChangePasswordApiContext", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ChangePasswordActivity extends l1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f1992d = new ViewBindingLazy(AccountActivityChangePasswordBinding.class, new b(this));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputMethodManager f1993e;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B\u001f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0017\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0002\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u0010R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/account/activity/ChangePasswordActivity$ChangePasswordApiContext;", "Lcn/mucang/android/account/api/context/AccountBaseApiContext;", "Lcn/mucang/android/account/activity/ChangePasswordActivity;", "", "changePasswordActivity", "oldPassword", "", "newPassword", "(Lcn/mucang/android/account/activity/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V", "api", "Lcn/mucang/android/account/api/ChangePasswordApi;", "onApiSuccess", "", "response", "(Ljava/lang/Boolean;)V", SocialConstants.TYPE_REQUEST, "()Ljava/lang/Boolean;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private static final class a extends cn.mucang.android.account.g.q.a<ChangePasswordActivity, Boolean> {
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f1994d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final cn.mucang.android.account.g.f f1995e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ChangePasswordActivity changePasswordActivity, String oldPassword, String newPassword) {
            super(changePasswordActivity, "修改密码");
            kotlin.jvm.internal.r.e(oldPassword, "oldPassword");
            kotlin.jvm.internal.r.e(newPassword, "newPassword");
            this.c = oldPassword;
            this.f1994d = newPassword;
            this.f1995e = new cn.mucang.android.account.g.f();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(Boolean bool) {
            if (bool == null || !bool.booleanValue()) {
                return;
            }
            ChangePasswordActivity changePasswordActivity = (ChangePasswordActivity) f();
            kotlin.jvm.internal.r.c(changePasswordActivity);
            changePasswordActivity.setResult(-1);
            changePasswordActivity.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Boolean request() throws Exception {
            this.f1995e.f(this.c, this.f1994d);
            return Boolean.TRUE;
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f1996a;

        public b(Activity activity) {
            this.f1996a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f1996a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(ChangePasswordActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        InputMethodManager inputMethodManager = this$0.f1993e;
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(this$0.q().oldPassword, 1);
        } else {
            kotlin.jvm.internal.r.u("inputMethodManager");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ChangePasswordActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ChangePasswordActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ChangePasswordActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        m1.g(this$0, 0);
    }

    private final void p() {
        String string = q().oldPassword.getText().toString();
        String string2 = q().newPassword.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入原密码");
            return;
        }
        if (cn.mucang.android.core.utils.n0.e(string2)) {
            cn.mucang.android.core.utils.u.h("请输入新密码");
            return;
        }
        if (string2.length() < 6) {
            cn.mucang.android.core.utils.u.h("密码长度不能少于6位");
        } else if (string2.length() > 20) {
            cn.mucang.android.core.utils.u.h("密码长度不能大于20位");
        } else {
            cn.mucang.android.core.api.c.b.b(new a(this, string, string2));
        }
    }

    private final AccountActivityChangePasswordBinding q() {
        return (AccountActivityChangePasswordBinding) this.f1992d.getValue();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "修改密码";
    }

    public final void k() {
        if (AccountManager.h().g() == null) {
            cn.mucang.android.core.utils.u.h("只有登录用户才可以修改密码");
            finish();
            return;
        }
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.account.activity.u
            @Override // java.lang.Runnable
            public final void run() {
                ChangePasswordActivity.l(this.f2134a);
            }
        }, 500L);
        q().titleBar.titleBarCenter.setText("更改密码");
        q().btnOk.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChangePasswordActivity.m(this.f2132a, view);
            }
        });
        q().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChangePasswordActivity.n(this.f2130a, view);
            }
        });
        q().forgotPasswordBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChangePasswordActivity.o(this.f2128a, view);
            }
        });
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(q().getRoot());
        Object systemService = getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        this.f1993e = (InputMethodManager) systemService;
        k();
    }
}
