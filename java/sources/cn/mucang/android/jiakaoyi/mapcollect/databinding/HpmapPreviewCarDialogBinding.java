package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class HpmapPreviewCarDialogBinding implements a {
    public final MapView carView;
    private final LinearLayout rootView;

    private HpmapPreviewCarDialogBinding(LinearLayout linearLayout, MapView mapView) {
        this.rootView = linearLayout;
        this.carView = mapView;
    }

    public static HpmapPreviewCarDialogBinding bind(View view) {
        int i = R.id.car_view;
        MapView mapView = (MapView) view.findViewById(i);
        if (mapView != null) {
            return new HpmapPreviewCarDialogBinding((LinearLayout) view, mapView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static HpmapPreviewCarDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HpmapPreviewCarDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hpmap__preview_car_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
