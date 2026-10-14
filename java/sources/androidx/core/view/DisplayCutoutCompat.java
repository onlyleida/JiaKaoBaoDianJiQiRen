package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import androidx.core.graphics.d;
import androidx.core.os.a;
import androidx.core.util.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayCutoutCompat {
    private final Object mDisplayCutout;

    public DisplayCutoutCompat(Rect rect, List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? new DisplayCutout(rect, list) : null);
    }

    private static DisplayCutout constructDisplayCutout(d dVar, Rect rect, Rect rect2, Rect rect3, Rect rect4, d dVar2) {
        if (a.b()) {
            return new DisplayCutout(dVar.e(), rect, rect2, rect3, rect4, dVar2.e());
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            return new DisplayCutout(dVar.e(), rect, rect2, rect3, rect4);
        }
        if (i < 28) {
            return null;
        }
        Rect rect5 = new Rect(dVar.f1113a, dVar.b, dVar.c, dVar.f1114d);
        ArrayList arrayList = new ArrayList();
        if (rect != null) {
            arrayList.add(rect);
        }
        if (rect2 != null) {
            arrayList.add(rect2);
        }
        if (rect3 != null) {
            arrayList.add(rect3);
        }
        if (rect4 != null) {
            arrayList.add(rect4);
        }
        return new DisplayCutout(rect5, arrayList);
    }

    static DisplayCutoutCompat wrap(Object obj) {
        if (obj == null) {
            return null;
        }
        return new DisplayCutoutCompat(obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        return c.a(this.mDisplayCutout, ((DisplayCutoutCompat) obj).mDisplayCutout);
    }

    public List<Rect> getBoundingRects() {
        return Build.VERSION.SDK_INT >= 28 ? ((DisplayCutout) this.mDisplayCutout).getBoundingRects() : Collections.emptyList();
    }

    public int getSafeInsetBottom() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetBottom();
        }
        return 0;
    }

    public int getSafeInsetLeft() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetLeft();
        }
        return 0;
    }

    public int getSafeInsetRight() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetRight();
        }
        return 0;
    }

    public int getSafeInsetTop() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetTop();
        }
        return 0;
    }

    public d getWaterfallInsets() {
        return a.b() ? d.d(((DisplayCutout) this.mDisplayCutout).getWaterfallInsets()) : d.f1112e;
    }

    public int hashCode() {
        Object obj = this.mDisplayCutout;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.mDisplayCutout + VectorFormat.DEFAULT_SUFFIX;
    }

    DisplayCutout unwrap() {
        return (DisplayCutout) this.mDisplayCutout;
    }

    public DisplayCutoutCompat(d dVar, Rect rect, Rect rect2, Rect rect3, Rect rect4, d dVar2) {
        this(constructDisplayCutout(dVar, rect, rect2, rect3, rect4, dVar2));
    }

    private DisplayCutoutCompat(Object obj) {
        this.mDisplayCutout = obj;
    }
}
