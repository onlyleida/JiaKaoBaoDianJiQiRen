package cn.mucang.jiakaoyi.uilib.diff;

import cn.mucang.android.core.webview.MenuOptions;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.diff.l, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/diff/TabCount;", "", "type", "", "count", "(II)V", "getCount", "()I", "getType", "component1", "component2", MenuOptions.COPY, "equals", "", "other", "hashCode", "toString", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class TabCount {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private final int type;

    /* JADX INFO: renamed from: b, reason: from toString */
    private final int count;

    public TabCount(int i, int i2) {
        this.type = i;
        this.count = i2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getType() {
        return this.type;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabCount)) {
            return false;
        }
        TabCount tabCount = (TabCount) other;
        return this.type == tabCount.type && this.count == tabCount.count;
    }

    public int hashCode() {
        return (this.type * 31) + this.count;
    }

    public String toString() {
        return "TabCount(type=" + this.type + ", count=" + this.count + ')';
    }
}
