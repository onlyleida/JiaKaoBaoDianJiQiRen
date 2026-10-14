package cn.mucang.android.jiakaoyi.framework.base.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.base.i;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.m.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0014J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014R\u001c\u0010\u0005\u001a\u00028\u0000X\u0086.¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "VB", "Landroidx/viewbinding/ViewBinding;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "viewBinding", "getViewBinding", "()Landroidx/viewbinding/ViewBinding;", "setViewBinding", "(Landroidx/viewbinding/ViewBinding;)V", "Landroidx/viewbinding/ViewBinding;", "init", "", "initViewBinding", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class BaseViewBindingActivity<VB extends a> extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public VB f3424a;

    private final View h(LayoutInflater layoutInflater) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke = i.a(getClass()).getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, layoutInflater, null, Boolean.FALSE);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type VB of cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity");
        i((a) objInvoke);
        View root = g().getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    public final VB g() {
        VB vb = this.f3424a;
        if (vb != null) {
            return vb;
        }
        r.u("viewBinding");
        throw null;
    }

    public final void i(VB vb) {
        r.e(vb, "<set-?>");
        this.f3424a = vb;
    }

    protected void init() {
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LayoutInflater layoutInflater = getLayoutInflater();
        r.d(layoutInflater, "layoutInflater");
        setContentView(h(layoutInflater));
        init();
    }
}
