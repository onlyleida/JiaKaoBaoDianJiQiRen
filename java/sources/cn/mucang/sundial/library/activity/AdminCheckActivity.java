package cn.mucang.sundial.library.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import cn.mucang.android.core.utils.p0;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.databinding.TtActivityAdminCheckBinding;
import cn.mucang.sundial.library.util.ToastUtil;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Date;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u001d\u0010\u0012\u001a\u00020\r8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcn/mucang/sundial/library/activity/AdminCheckActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "initView", "()V", "", "getPassword", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;", "binding$delegate", "Lkotlin/f;", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;", "binding", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class AdminCheckActivity extends BaseActivity {

    /* JADX INFO: renamed from: binding$delegate, reason: from kotlin metadata */
    private final Lazy binding = new ViewBindingLazy(TtActivityAdminCheckBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.AdminCheckActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });

    private final TtActivityAdminCheckBinding getBinding() {
        return (TtActivityAdminCheckBinding) this.binding.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getPassword() {
        String time = p0.a(new Date(), "yyyyMMdd");
        r.d(time, "time");
        Objects.requireNonNull(time, "null cannot be cast to non-null type java.lang.String");
        char[] charArray = time.toCharArray();
        r.d(charArray, "(this as java.lang.String).toCharArray()");
        int i = 0;
        for (char c : charArray) {
            i += c - '0';
        }
        return time + '.' + i;
    }

    private final void initView() {
        final TtActivityAdminCheckBinding binding = getBinding();
        binding.back.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.AdminCheckActivity$initView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.finish();
            }
        });
        binding.checkPassword.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.AdminCheckActivity$initView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String string;
                EditText password = binding.password;
                r.d(password, "password");
                Editable text = password.getText();
                if (text == null || (string = text.toString()) == null) {
                    string = "";
                }
                if (!t.q(this.getPassword(), string, false, 2, null)) {
                    ToastUtil.INSTANCE.showToastOnce("请输入正确的密码");
                    return;
                }
                SundialLog.normal("跳转终端设置页面");
                this.startActivity(new Intent(this, (Class<?>) SettingActivity.class));
                this.finish();
            }
        });
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        initView();
        FrameLayout root = getBinding().getRoot();
        r.d(root, "binding.root");
        return root;
    }
}
