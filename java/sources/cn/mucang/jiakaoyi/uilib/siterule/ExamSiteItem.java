package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.siterule.e0, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\n\"\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/ExamSiteItem;", "", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "isDeleteMode", "", "isSelected", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZZ)V", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "()Z", "setDeleteMode", "(Z)V", "setSelected", "component1", "component2", "component3", MenuOptions.COPY, "equals", "other", "hashCode", "", "toString", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class ExamSiteItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private final ExamSiteModel examSite;

    /* JADX INFO: renamed from: b, reason: from toString */
    private boolean isDeleteMode;

    /* JADX INFO: renamed from: c, reason: from toString */
    private boolean isSelected;

    public ExamSiteItem(ExamSiteModel examSite, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(examSite, "examSite");
        this.examSite = examSite;
        this.isDeleteMode = z;
        this.isSelected = z2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final ExamSiteModel getExamSite() {
        return this.examSite;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final void c(boolean z) {
        this.isSelected = z;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExamSiteItem)) {
            return false;
        }
        ExamSiteItem examSiteItem = (ExamSiteItem) other;
        return kotlin.jvm.internal.r.a(this.examSite, examSiteItem.examSite) && this.isDeleteMode == examSiteItem.isDeleteMode && this.isSelected == examSiteItem.isSelected;
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
        int iHashCode = this.examSite.hashCode() * 31;
        boolean z = this.isDeleteMode;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode + r1) * 31;
        boolean z2 = this.isSelected;
        return i + (z2 ? 1 : z2);
    }

    public String toString() {
        return "ExamSiteItem(examSite=" + this.examSite + ", isDeleteMode=" + this.isDeleteMode + ", isSelected=" + this.isSelected + ')';
    }

    public /* synthetic */ ExamSiteItem(ExamSiteModel examSiteModel, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        this(examSiteModel, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
    }
}
