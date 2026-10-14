package cn.mucang.android.account.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.api.data.ThirdBindResponse;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.account.third.ThirdAccountUtils;
import cn.mucang.android.account.third.ThirdBindManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.framework.account.databinding.AccountActivitySafeBinding;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\fH\u0002J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\fH\u0002J\"\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0012\u0010\u0019\u001a\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\b\u0010\u001c\u001a\u00020\fH\u0014J\b\u0010\u001d\u001a\u00020\fH\u0002J\u0010\u0010\u001e\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006 "}, d2 = {"Lcn/mucang/android/account/activity/AccountSafeActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", SocialConstants.PARAM_RECEIVER, "Landroid/content/BroadcastReceiver;", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "bindThirdAccount", "thirdType", "", "displayMiAndWxUI", "getStatName", "getThirdAccountList", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "refreshUserInfo", "unBindThirdAccount", "Companion", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AccountSafeActivity extends l1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f1980d = new ViewBindingLazy(AccountActivitySafeBinding.class, new c(this));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BroadcastReceiver f1981e = new b();

    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/activity/AccountSafeActivity$bindThirdAccount$1", "Lcn/mucang/android/account/listener/AccountBindThirdListener;", "onCancel", "", "onFailed", "throwable", "", "onSuccess", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements cn.mucang.android.account.i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1982a;
        final /* synthetic */ AccountSafeActivity b;

        a(String str, AccountSafeActivity accountSafeActivity) {
            this.f1982a = str;
            this.b = accountSafeActivity;
        }

        @Override // cn.mucang.android.account.i.a
        public void a(Throwable th) {
            if (th != null) {
                cn.mucang.android.core.utils.u.h(th.getMessage());
            }
        }

        @Override // cn.mucang.android.account.i.a
        public void onCancel() {
        }

        @Override // cn.mucang.android.account.i.a
        public void onSuccess() {
            cn.mucang.android.core.utils.u.h("绑定成功！");
            if (kotlin.jvm.internal.r.a("xiaomi", this.f1982a)) {
                this.b.z().accountSafeXiaomiBindTv.setText("已绑定");
            } else if (kotlin.jvm.internal.r.a("weixin", this.f1982a)) {
                this.b.z().accountSafeWxBindTv.setText("已绑定");
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/activity/AccountSafeActivity$receiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(intent, "intent");
            AccountSafeActivity.this.J();
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f1984a;

        public c(Activity activity) {
            this.f1984a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f1984a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/activity/AccountSafeActivity$unBindThirdAccount$1", "Lcn/mucang/android/account/listener/AccountBindThirdListener;", "onCancel", "", "onFailed", "throwable", "", "onSuccess", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements cn.mucang.android.account.i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1985a;
        final /* synthetic */ AccountSafeActivity b;

        d(String str, AccountSafeActivity accountSafeActivity) {
            this.f1985a = str;
            this.b = accountSafeActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(String thirdType, AccountSafeActivity this$0) {
            kotlin.jvm.internal.r.e(thirdType, "$thirdType");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            if (kotlin.jvm.internal.r.a("xiaomi", thirdType)) {
                this$0.z().accountSafeXiaomiBindTv.setText("未绑定");
            } else if (kotlin.jvm.internal.r.a("weixin", thirdType)) {
                this$0.z().accountSafeWxBindTv.setText("未绑定");
            }
        }

        @Override // cn.mucang.android.account.i.a
        public void a(Throwable th) {
            if (th != null) {
                cn.mucang.android.core.utils.u.h(th.getMessage());
            }
        }

        @Override // cn.mucang.android.account.i.a
        public void onCancel() {
        }

        @Override // cn.mucang.android.account.i.a
        public void onSuccess() {
            final String str = this.f1985a;
            final AccountSafeActivity accountSafeActivity = this.b;
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.activity.j
                @Override // java.lang.Runnable
                public final void run() {
                    AccountSafeActivity.d.d(str, accountSafeActivity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J() {
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG == null) {
            return;
        }
        z().accountText.setText(authUserG.getPhone());
        z().password.setVisibility((ThirdAccountUtils.a("set_psd_enable_ui", true) || authUserG.isPasswordSet()) ? 0 : 8);
        if (authUserG.isPasswordSet()) {
            z().passwordText.setText("已设置");
        } else {
            z().passwordText.setText("未设置");
        }
        if (authUserG.isCertified()) {
            z().realNameText.setText("已认证");
        } else {
            z().realNameText.setText("未认证");
        }
    }

    private final void K(String str) {
        ThirdBindManager.f2301a.N(this, str, new d(str, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(AccountSafeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(AccountSafeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AccountManager.h().E(this$0, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(AccountSafeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG == null) {
            return;
        }
        if (authUserG.isPasswordSet()) {
            m1.c(this$0, 2);
        } else {
            m1.g(this$0, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(AccountSafeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG == null) {
            return;
        }
        if (authUserG.isCertified()) {
            m1.a(this$0);
        } else {
            AccountManager.h().D(this$0);
            this$0.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(AccountSafeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.account.utils.a.onEvent("注销账号");
        cn.mucang.android.core.utils.u0.h(this$0, "https://laofuzi.kakamobi.com/common-logout/", "注销账号");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(AccountSafeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a("未绑定", this$0.z().accountSafeXiaomiBindTv.getText().toString())) {
            this$0.u("xiaomi");
        } else {
            this$0.K("xiaomi");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(AccountSafeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a("未绑定", this$0.z().accountSafeWxBindTv.getText().toString())) {
            this$0.u("weixin");
        } else {
            this$0.K("weixin");
        }
    }

    private final void u(String str) {
        ThirdBindManager.f2301a.F(this, str, new a(str, this));
    }

    private final void v() {
        if (ThirdAccountUtils.a("mi_login_enable_ui", false)) {
            z().accountSafeXiaomiRl.setVisibility(0);
        }
        if (ThirdAccountUtils.a("wechat_login_enable_ui", false)) {
            z().accountSafeWxRl.setVisibility(0);
        }
    }

    private final void w() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.activity.b
            @Override // java.lang.Runnable
            public final void run() {
                AccountSafeActivity.x(this.f2064a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(final AccountSafeActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            final List<ThirdBindResponse> listF = new cn.mucang.android.account.g.n().f();
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.account.activity.h
                @Override // java.lang.Runnable
                public final void run() {
                    AccountSafeActivity.y(listF, this$0);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(List list, AccountSafeActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.b(list)) {
            this$0.z().accountSafeXiaomiBindTv.setText("未绑定");
            this$0.z().accountSafeWxBindTv.setText("未绑定");
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ThirdBindResponse thirdBindResponse = (ThirdBindResponse) it.next();
            if (kotlin.jvm.internal.r.a("xiaomi", thirdBindResponse.getThirdParty())) {
                this$0.z().accountSafeXiaomiBindTv.setText("已绑定");
            } else if (kotlin.jvm.internal.r.a("weixin", thirdBindResponse.getThirdParty())) {
                this$0.z().accountSafeWxBindTv.setText("已绑定");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AccountActivitySafeBinding z() {
        return (AccountActivitySafeBinding) this.f1980d.getValue();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "账号安全";
    }

    public final void m() {
        z().titleBar.titleBarCenter.setText("账号安全");
        J();
        z().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountSafeActivity.n(this.f2085a, view);
            }
        });
        z().account.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountSafeActivity.o(this.f2073a, view);
            }
        });
        z().password.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountSafeActivity.p(this.f2061a, view);
            }
        });
        z().authRealName.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountSafeActivity.q(this.f2079a, view);
            }
        });
        z().layoutUnregisterAccount.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountSafeActivity.r(this.f2070a, view);
            }
        });
        z().accountSafeXiaomiRl.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountSafeActivity.s(this.f2067a, view);
            }
        });
        z().accountSafeWxRl.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountSafeActivity.t(this.f2076a, view);
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1) {
            J();
        }
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(z().getRoot());
        MucangConfig.q().c(this.f1981e, new IntentFilter("cn.mucang.android.account.ACTION_PHONE_CHANGED"));
        v();
        w();
        m();
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MucangConfig.q().e(this.f1981e);
    }
}
