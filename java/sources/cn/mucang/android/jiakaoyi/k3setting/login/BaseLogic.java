package cn.mucang.android.jiakaoyi.k3setting.login;

import android.app.Activity;
import androidx.fragment.app.d;
import androidx.viewbinding.a;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.d.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u0010\u0005J\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\fH\u0016J\u0012\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0010H\u0016R\u0013\u0010\u0004\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;", "VB", "Landroidx/viewbinding/ViewBinding;", "", "binding", "(Landroidx/viewbinding/ViewBinding;)V", "getBinding", "()Landroidx/viewbinding/ViewBinding;", "Landroidx/viewbinding/ViewBinding;", "getActivity", "Landroidx/fragment/app/FragmentActivity;", "init", "", "release", TtmlNode.START, "fromUser", "", "stop", "switch", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class BaseLogic<VB extends a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final VB f4219a;

    public BaseLogic(VB binding) {
        r.e(binding, "binding");
        this.f4219a = binding;
    }

    public static /* synthetic */ void i(BaseLogic baseLogic, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: start");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        baseLogic.h(z);
    }

    public final d c() {
        Activity activityA = cn.mucang.android.core.utils.d.a(this.f4219a.getRoot());
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (d) activityA;
    }

    public final VB d() {
        return this.f4219a;
    }

    public abstract void f();

    public void g() {
    }

    public void h(boolean z) {
        this.f4219a.getRoot().setVisibility(0);
    }

    public void j(boolean z) {
        if (z) {
            this.f4219a.getRoot().setVisibility(8);
        }
    }
}
