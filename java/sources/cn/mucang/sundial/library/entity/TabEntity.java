package cn.mucang.sundial.library.entity;

import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import cn.mucang.android.core.webview.MenuOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u0000*\n\b\u0000\u0010\u0002 \u0001*\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ2\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\n\u001a\u00020\u00042\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0007HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R!\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\tR\u0019\u0010\n\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u0019\u0010\u0006¨\u0006\u001c"}, d2 = {"Lcn/mucang/sundial/library/entity/TabEntity;", "Landroidx/fragment/app/Fragment;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "component1", "()Ljava/lang/String;", "Ljava/lang/Class;", "component2", "()Ljava/lang/Class;", "label", "page", MenuOptions.COPY, "(Ljava/lang/String;Ljava/lang/Class;)Lcn/mucang/sundial/library/entity/TabEntity;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Class;", "getPage", "Ljava/lang/String;", "getLabel", "<init>", "(Ljava/lang/String;Ljava/lang/Class;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final /* data */ class TabEntity<T extends Fragment> {
    private final String label;
    private final Class<? extends T> page;

    public TabEntity(String label, Class<? extends T> page) {
        r.e(label, "label");
        r.e(page, "page");
        this.label = label;
        this.page = page;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TabEntity copy$default(TabEntity tabEntity, String str, Class cls, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tabEntity.label;
        }
        if ((i & 2) != 0) {
            cls = tabEntity.page;
        }
        return tabEntity.copy(str, cls);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    public final Class<? extends T> component2() {
        return this.page;
    }

    public final TabEntity<T> copy(String label, Class<? extends T> page) {
        r.e(label, "label");
        r.e(page, "page");
        return new TabEntity<>(label, page);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabEntity)) {
            return false;
        }
        TabEntity tabEntity = (TabEntity) other;
        return r.a(this.label, tabEntity.label) && r.a(this.page, tabEntity.page);
    }

    public final String getLabel() {
        return this.label;
    }

    public final Class<? extends T> getPage() {
        return this.page;
    }

    public int hashCode() {
        String str = this.label;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Class<? extends T> cls = this.page;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "TabEntity(label=" + this.label + ", page=" + this.page + ")";
    }
}
