package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;", "Ljava/io/Serializable;", "()V", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "showInRoute", "", "(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V", "getShowInRoute", "()Z", "setShowInRoute", "(Z)V", "getStep", "()Lcn/mucang/android/jiakaoyi/engine/model/Step;", "setStep", "(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V", "component1", "component2", MenuOptions.COPY, "equals", "other", "", "hashCode", "", "toString", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class K3OrderItem implements Serializable {
    private boolean showInRoute;
    private Step step;

    public K3OrderItem(Step step, boolean z) {
        r.e(step, "step");
        this.step = step;
        this.showInRoute = z;
    }

    public static /* synthetic */ K3OrderItem copy$default(K3OrderItem k3OrderItem, Step step, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            step = k3OrderItem.step;
        }
        if ((i & 2) != 0) {
            z = k3OrderItem.showInRoute;
        }
        return k3OrderItem.copy(step, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Step getStep() {
        return this.step;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getShowInRoute() {
        return this.showInRoute;
    }

    public final K3OrderItem copy(Step step, boolean showInRoute) {
        r.e(step, "step");
        return new K3OrderItem(step, showInRoute);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof K3OrderItem)) {
            return false;
        }
        K3OrderItem k3OrderItem = (K3OrderItem) other;
        return this.step == k3OrderItem.step && this.showInRoute == k3OrderItem.showInRoute;
    }

    public final boolean getShowInRoute() {
        return this.showInRoute;
    }

    public final Step getStep() {
        return this.step;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = this.step.hashCode() * 31;
        boolean z = this.showInRoute;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public final void setShowInRoute(boolean z) {
        this.showInRoute = z;
    }

    public final void setStep(Step step) {
        r.e(step, "<set-?>");
        this.step = step;
    }

    public String toString() {
        return "K3OrderItem(step=" + this.step + ", showInRoute=" + this.showInRoute + ')';
    }

    public /* synthetic */ K3OrderItem(Step step, boolean z, int i, o oVar) {
        this(step, (i & 2) != 0 ? true : z);
    }

    public K3OrderItem() {
        this(Step.K3_ShangChe, false, 2, null);
    }
}
