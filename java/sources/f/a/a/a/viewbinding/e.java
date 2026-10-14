package f.a.a.a.viewbinding;

import android.app.Activity;
import android.view.LayoutInflater;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class e implements ViewBindingLazy.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f14502a;

    public e(Activity activity) {
        this.f14502a = activity;
    }

    @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
    public LayoutInflater get() {
        LayoutInflater layoutInflater = this.f14502a.getLayoutInflater();
        r.d(layoutInflater, "layoutInflater");
        return layoutInflater;
    }
}
