package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.os.Build;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
class i implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final h f1779a = new i();

    i() {
    }

    private static float e(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (childAt != view) {
                float elevation = ViewCompat.getElevation(childAt);
                if (elevation > f2) {
                    f2 = elevation;
                }
            }
        }
        return f2;
    }

    @Override // androidx.recyclerview.widget.h
    public void a(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            int i = R.id.item_touch_helper_previous_elevation;
            Object tag = view.getTag(i);
            if (tag instanceof Float) {
                ViewCompat.setElevation(view, ((Float) tag).floatValue());
            }
            view.setTag(i, null);
        }
        view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // androidx.recyclerview.widget.h
    public void b(View view) {
    }

    @Override // androidx.recyclerview.widget.h
    public void c(Canvas canvas, RecyclerView recyclerView, View view, float f2, float f3, int i, boolean z) {
        if (Build.VERSION.SDK_INT >= 21 && z) {
            int i2 = R.id.item_touch_helper_previous_elevation;
            if (view.getTag(i2) == null) {
                Float fValueOf = Float.valueOf(ViewCompat.getElevation(view));
                ViewCompat.setElevation(view, e(recyclerView, view) + 1.0f);
                view.setTag(i2, fValueOf);
            }
        }
        view.setTranslationX(f2);
        view.setTranslationY(f3);
    }

    @Override // androidx.recyclerview.widget.h
    public void d(Canvas canvas, RecyclerView recyclerView, View view, float f2, float f3, int i, boolean z) {
    }
}
