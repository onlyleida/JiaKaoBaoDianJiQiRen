package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityTestFenceBinding implements a {
    public final MapView map;
    private final ConstraintLayout rootView;

    private ActivityTestFenceBinding(ConstraintLayout constraintLayout, MapView mapView) {
        this.rootView = constraintLayout;
        this.map = mapView;
    }

    public static ActivityTestFenceBinding bind(View view) {
        int i = R.id.map;
        MapView mapView = (MapView) view.findViewById(i);
        if (mapView != null) {
            return new ActivityTestFenceBinding((ConstraintLayout) view, mapView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityTestFenceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTestFenceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_test_fence, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
