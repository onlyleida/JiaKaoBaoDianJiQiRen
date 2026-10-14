package cn.mucang.android.account.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import cn.mucang.android.framework.account.databinding.AccountActivityChangePhoneTransferBinding;
import com.mobile.auth.gatewayauth.Constant;
import f.a.a.a.viewbinding.ViewBindingLazy;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0012\u0010\u0013\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "()V", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "getStatName", "", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ChangePhoneTransferActivity extends l1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f1997d = new ViewBindingLazy(AccountActivityChangePhoneTransferBinding.class, new a(this));

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f1998a;

        public a(Activity activity) {
            this.f1998a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f1998a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(ChangePhoneTransferActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ChangePhoneTransferActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        m1.h(this$0, 101);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(View view) {
    }

    private final AccountActivityChangePhoneTransferBinding o() {
        return (AccountActivityChangePhoneTransferBinding) this.f1997d.getValue();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "更换手机-选择更换方式";
    }

    public final void k() {
        o().titleBar.titleBarCenter.setText("更换手机");
        o().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChangePhoneTransferActivity.l(this.f2138a, view);
            }
        });
        o().changeMobile.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChangePhoneTransferActivity.m(this.f2136a, view);
            }
        });
        o().toAuthRealName.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChangePhoneTransferActivity.n(view);
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 101 && resultCode == -1) {
            m1.f(this, 103, data == null ? null : data.getStringExtra("__change_phone_session_id__"), 1);
        }
        if (requestCode == 102 && resultCode == -1) {
            m1.f(this, 103, data != null ? data.getStringExtra("__change_phone_session_id__") : null, 0);
        }
        if (requestCode == 103 && resultCode == -1) {
            cn.mucang.android.core.utils.u.h("手机号更换成功!");
            setResult(-1);
            finish();
        }
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(o().getRoot());
        k();
    }
}
