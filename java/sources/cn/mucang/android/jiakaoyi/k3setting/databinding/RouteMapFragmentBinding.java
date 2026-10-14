package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.amap.api.maps.MapView;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteMapFragmentBinding implements a {
    public final RouteMapDistanceBinding distance;
    public final RouteMapHeaderBinding header;
    public final MapView mapView;
    private final ConstraintLayout rootView;

    private RouteMapFragmentBinding(ConstraintLayout constraintLayout, RouteMapDistanceBinding routeMapDistanceBinding, RouteMapHeaderBinding routeMapHeaderBinding, MapView mapView) {
        this.rootView = constraintLayout;
        this.distance = routeMapDistanceBinding;
        this.header = routeMapHeaderBinding;
        this.mapView = mapView;
    }

    public static RouteMapFragmentBinding bind(View view) {
        int i = R.id.distance;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            RouteMapDistanceBinding routeMapDistanceBindingBind = RouteMapDistanceBinding.bind(viewFindViewById);
            int i2 = R.id.header;
            View viewFindViewById2 = view.findViewById(i2);
            if (viewFindViewById2 != null) {
                RouteMapHeaderBinding routeMapHeaderBindingBind = RouteMapHeaderBinding.bind(viewFindViewById2);
                int i3 = R.id.mapView;
                MapView mapView = (MapView) view.findViewById(i3);
                if (mapView != null) {
                    return new RouteMapFragmentBinding((ConstraintLayout) view, routeMapDistanceBindingBind, routeMapHeaderBindingBind, mapView);
                }
                i = i3;
            } else {
                i = i2;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteMapFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteMapFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_map_fragment, viewGroup, false);
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
