package cn.mucang.android.account.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import cn.mucang.android.framework.account.databinding.AccountActivityAuthRealNameBinding;
import com.amap.api.fence.GeoFence;
import com.mobile.auth.gatewayauth.Constant;
import f.a.a.a.viewbinding.ViewBindingLazy;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0016J\u0006\u0010\u0013\u001a\u00020\u0006J\"\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0012\u0010\u001a\u001a\u00020\u000f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u001a\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00162\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006\""}, d2 = {"Lcn/mucang/android/account/activity/AuthRealNameActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", "actionName", "", "modifyCertification", "", "noBack", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "doButtonLeft", "doOk", "getStatName", "isModifyCertification", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyDown", "keyCode", GeoFence.BUNDLE_KEY_FENCESTATUS, "Landroid/view/KeyEvent;", "Companion", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AuthRealNameActivity extends l1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f1986d = new ViewBindingLazy(AccountActivityAuthRealNameBinding.class, new a(this));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1989g;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f1990a;

        public a(Activity activity) {
            this.f1990a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f1990a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(AuthRealNameActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(AuthRealNameActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(AuthRealNameActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(AuthRealNameActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        m1.b(this$0, 101, this$0.f1987e);
    }

    private final void p() {
        if (this.f1988f) {
            return;
        }
        cn.mucang.android.account.utils.a.onEvent("实名认证-暂不认证");
        finish();
    }

    private final void q() {
        final String string = s().realNameEt.getText().toString();
        final String string2 = s().idCardNumber.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入真实姓名!");
            return;
        }
        if (cn.mucang.android.core.utils.n0.e(string2)) {
            cn.mucang.android.core.utils.u.h("请输入证件号码!");
            return;
        }
        if (string2.length() != 18) {
            cn.mucang.android.core.utils.u.h("请输入合法的证件号码!");
            return;
        }
        cn.mucang.android.account.api.data.a aVar = new cn.mucang.android.account.api.data.a();
        aVar.d(string);
        aVar.c(string2);
        cn.mucang.android.account.h.a.t(getSupportFragmentManager(), aVar, new cn.mucang.android.account.h.a.c() { // from class: cn.mucang.android.account.activity.m
            @Override // cn.mucang.android.account.h.a.c
            public final void a() {
                AuthRealNameActivity.r(this.f2097a, string, string2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(AuthRealNameActivity this$0, String realName, String number) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(realName, "$realName");
        kotlin.jvm.internal.r.e(number, "$number");
        cn.mucang.android.core.api.c.b.b(new cn.mucang.android.account.g.q.b(this$0, realName, number, this$0.f1989g));
    }

    private final AccountActivityAuthRealNameBinding s() {
        return (AccountActivityAuthRealNameBinding) this.f1986d.getValue();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "实名认证";
    }

    public final void k() {
        s().titleBar.titleBarCenter.setText("账户实名认证");
        s().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuthRealNameActivity.l(this.f2091a, view);
            }
        });
        s().okBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuthRealNameActivity.m(this.f2099a, view);
            }
        });
        s().ignore.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuthRealNameActivity.n(this.f2094a, view);
            }
        });
        s().otherWay.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuthRealNameActivity.o(this.f2101a, view);
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 101 && resultCode == -1) {
            finish();
        }
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(s().getRoot());
        this.f1987e = getIntent().getBooleanExtra("key_extra_modify_data__", false);
        this.f1988f = getIntent().getBooleanExtra("__key_extra_no_back__", false);
        this.f1989g = getIntent().getStringExtra("__key_extra_success_action_name__");
        if (this.f1988f) {
            s().titleBar.titleBarLeft.setVisibility(8);
            s().ignore.setVisibility(8);
            s().otherWay.setVisibility(8);
        }
        k();
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        p();
        return true;
    }

    /* JADX INFO: renamed from: t, reason: from getter */
    public final boolean getF1987e() {
        return this.f1987e;
    }
}
