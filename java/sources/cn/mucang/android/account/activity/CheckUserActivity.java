package cn.mucang.android.account.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.framework.account.databinding.AccountActivityCheckUserBinding;
import f.a.a.a.viewbinding.ViewBindingLazy;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/account/activity/CheckUserActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "doOk", "getStatName", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CheckUserActivity extends l1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f1999d = new ViewBindingLazy(AccountActivityCheckUserBinding.class, new a(this));

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f2000a;

        public a(Activity activity) {
            this.f2000a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f2000a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(CheckUserActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(CheckUserActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (AccountManager.h().k()) {
            cn.mucang.android.core.utils.u.h("已经认证！");
        } else {
            AccountManager.h().D(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(CheckUserActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.o();
    }

    private final void o() {
        String string = p().realName.getText().toString();
        String string2 = p().idCardNumber.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入真实姓名");
        } else if (cn.mucang.android.core.utils.n0.e(string2)) {
            cn.mucang.android.core.utils.u.h("请输入证件号码");
        } else {
            cn.mucang.android.core.api.c.b.b(new cn.mucang.android.account.g.q.e(this, string, string2));
        }
    }

    private final AccountActivityCheckUserBinding p() {
        return (AccountActivityCheckUserBinding) this.f1999d.getValue();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "身份认证";
    }

    public final void k() {
        p().titleBar.titleBarCenter.setText("身份认证");
        p().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckUserActivity.l(this.f2062a, view);
            }
        });
        p().toAuthRealName.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckUserActivity.m(this.f2142a, view);
            }
        });
        p().okBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckUserActivity.n(this.f2144a, view);
            }
        });
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(p().getRoot());
        k();
    }
}
