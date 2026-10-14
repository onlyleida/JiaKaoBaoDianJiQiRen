package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.model.i, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\t\"\u0004\b\f\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/StepItem;", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "isSelect", "", "hasData", "(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZZ)V", "getHasData", "()Z", "setHasData", "(Z)V", "setSelect", "getStep", "()Lcn/mucang/android/jiakaoyi/engine/model/Step;", "component1", "component2", "component3", MenuOptions.COPY, "equals", "other", "hashCode", "", "toString", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class StepItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private final Step step;

    /* JADX INFO: renamed from: b, reason: from toString */
    private boolean isSelect;

    /* JADX INFO: renamed from: c, reason: from toString */
    private boolean hasData;

    public StepItem(Step step, boolean z, boolean z2) {
        r.e(step, "step");
        this.step = step;
        this.isSelect = z;
        this.hasData = z2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getHasData() {
        return this.hasData;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Step getStep() {
        return this.step;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getIsSelect() {
        return this.isSelect;
    }

    public final void d(boolean z) {
        this.hasData = z;
    }

    public final void e(boolean z) {
        this.isSelect = z;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StepItem)) {
            return false;
        }
        StepItem stepItem = (StepItem) other;
        return this.step == stepItem.step && this.isSelect == stepItem.isSelect && this.hasData == stepItem.hasData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = this.step.hashCode() * 31;
        boolean z = this.isSelect;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode + r1) * 31;
        boolean z2 = this.hasData;
        return i + (z2 ? 1 : z2);
    }

    public String toString() {
        return "StepItem(step=" + this.step + ", isSelect=" + this.isSelect + ", hasData=" + this.hasData + ')';
    }

    public /* synthetic */ StepItem(Step step, boolean z, boolean z2, int i, o oVar) {
        this(step, z, (i & 4) != 0 ? true : z2);
    }
}
