package cn.mucang.android.jiakaoyi.k3setting.teach;

import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.y, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J)\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/TeachStepItem;", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", Constant.PROTOCOL_WEBVIEW_NAME, "", "isSelect", "", "(Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;Z)V", "()Z", "setSelect", "(Z)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getStep", "()Lcn/mucang/android/jiakaoyi/engine/model/Step;", "setStep", "(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V", "component1", "component2", "component3", MenuOptions.COPY, "equals", "other", "hashCode", "", "toString", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class TeachStepItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private Step step;

    /* JADX INFO: renamed from: b, reason: from toString */
    private String name;

    /* JADX INFO: renamed from: c, reason: from toString */
    private boolean isSelect;

    public TeachStepItem(Step step, String str, boolean z) {
        kotlin.jvm.internal.r.e(step, "step");
        this.step = step;
        this.name = str;
        this.isSelect = z;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getName() {
        return this.name;
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
        this.isSelect = z;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TeachStepItem)) {
            return false;
        }
        TeachStepItem teachStepItem = (TeachStepItem) other;
        return this.step == teachStepItem.step && kotlin.jvm.internal.r.a(this.name, teachStepItem.name) && this.isSelect == teachStepItem.isSelect;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int iHashCode = this.step.hashCode() * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z = this.isSelect;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode2 + r1;
    }

    public String toString() {
        return "TeachStepItem(step=" + this.step + ", name=" + ((Object) this.name) + ", isSelect=" + this.isSelect + ')';
    }

    public /* synthetic */ TeachStepItem(Step step, String str, boolean z, int i, kotlin.jvm.internal.o oVar) {
        this(step, (i & 2) != 0 ? null : str, (i & 4) != 0 ? false : z);
    }
}
