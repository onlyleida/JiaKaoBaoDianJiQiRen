package cn.mucang.sundial.library.sdk.coach.logic;

import android.app.Activity;
import android.view.View;
import androidx.fragment.app.d;
import androidx.viewbinding.a;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0011\u001a\u00028\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u0006J\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;", "Landroidx/viewbinding/a;", "VB", "", "Lkotlin/v;", "init", "()V", "", "fromUser", TtmlNode.START, "(Z)V", "switch", "stop", "release", "Landroidx/fragment/app/d;", "getActivity", "()Landroidx/fragment/app/d;", "binding", "Landroidx/viewbinding/a;", "getBinding", "()Landroidx/viewbinding/a;", "<init>", "(Landroidx/viewbinding/a;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public abstract class BaseLogic<VB extends a> {
    private final VB binding;

    public BaseLogic(VB binding) {
        r.e(binding, "binding");
        this.binding = binding;
    }

    public static /* synthetic */ void start$default(BaseLogic baseLogic, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: start");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        baseLogic.start(z);
    }

    public final d getActivity() {
        Activity activityA = cn.mucang.android.core.utils.d.a(this.binding.getRoot());
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (d) activityA;
    }

    public final VB getBinding() {
        return this.binding;
    }

    public abstract void init();

    public void release() {
    }

    public void start(boolean fromUser) {
        View root = this.binding.getRoot();
        r.d(root, "binding.root");
        root.setVisibility(0);
    }

    public void stop(boolean z) {
        if (z) {
            View root = this.binding.getRoot();
            r.d(root, "binding.root");
            root.setVisibility(8);
        }
    }
}
