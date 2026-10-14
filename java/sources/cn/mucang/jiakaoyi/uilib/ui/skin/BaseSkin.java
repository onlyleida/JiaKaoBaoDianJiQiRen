package cn.mucang.jiakaoyi.uilib.ui.skin;

import cn.mucang.android.core.webview.MenuOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.skin.f, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0018\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J1\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006 "}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/skin/BaseSkin;", "", "skinId", "", "resourceId", "skinName", "", "isCheck", "", "(IILjava/lang/String;Z)V", "()Z", "setCheck", "(Z)V", "getResourceId", "()I", "setResourceId", "(I)V", "getSkinId", "setSkinId", "getSkinName", "()Ljava/lang/String;", "setSkinName", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", MenuOptions.COPY, "equals", "other", "hashCode", "toString", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class BaseSkin {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private int skinId;

    /* JADX INFO: renamed from: b, reason: from toString */
    private int resourceId;

    /* JADX INFO: renamed from: c, reason: from toString */
    private String skinName;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from toString */
    private boolean isCheck;

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getSkinId() {
        return this.skinId;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getSkinName() {
        return this.skinName;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getIsCheck() {
        return this.isCheck;
    }

    public final void e(boolean z) {
        this.isCheck = z;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BaseSkin)) {
            return false;
        }
        BaseSkin baseSkin = (BaseSkin) other;
        return this.skinId == baseSkin.skinId && this.resourceId == baseSkin.resourceId && r.a(this.skinName, baseSkin.skinName) && this.isCheck == baseSkin.isCheck;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public int hashCode() {
        int iHashCode = ((((this.skinId * 31) + this.resourceId) * 31) + this.skinName.hashCode()) * 31;
        boolean z = this.isCheck;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return "BaseSkin(skinId=" + this.skinId + ", resourceId=" + this.resourceId + ", skinName=" + this.skinName + ", isCheck=" + this.isCheck + ')';
    }
}
