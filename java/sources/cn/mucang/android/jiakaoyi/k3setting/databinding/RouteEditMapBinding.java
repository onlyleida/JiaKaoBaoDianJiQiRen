package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteEditMapBinding implements a {
    public final TextView bottomTv;
    public final RouteMapDistanceBinding distance;
    public final IncludeRouteEditClickAreaLayoutBinding funcLl;
    public final IncludeRouteEditTeachLayoutBinding funcLlTeach;
    public final RouteMapHeaderBinding header;
    public final MapView hpMapView;
    public final TextView mapModeSwitch;
    public final com.amap.api.maps.MapView mapView;
    public final RecyclerView orderRecyclerView;
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;

    private RouteEditMapBinding(ConstraintLayout constraintLayout, TextView textView, RouteMapDistanceBinding routeMapDistanceBinding, IncludeRouteEditClickAreaLayoutBinding includeRouteEditClickAreaLayoutBinding, IncludeRouteEditTeachLayoutBinding includeRouteEditTeachLayoutBinding, RouteMapHeaderBinding routeMapHeaderBinding, MapView mapView, TextView textView2, com.amap.api.maps.MapView mapView2, RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = constraintLayout;
        this.bottomTv = textView;
        this.distance = routeMapDistanceBinding;
        this.funcLl = includeRouteEditClickAreaLayoutBinding;
        this.funcLlTeach = includeRouteEditTeachLayoutBinding;
        this.header = routeMapHeaderBinding;
        this.hpMapView = mapView;
        this.mapModeSwitch = textView2;
        this.mapView = mapView2;
        this.orderRecyclerView = recyclerView;
        this.recyclerView = recyclerView2;
    }

    public static RouteEditMapBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.bottomTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.distance))) != null) {
            RouteMapDistanceBinding routeMapDistanceBindingBind = RouteMapDistanceBinding.bind(viewFindViewById);
            i = R.id.funcLl;
            View viewFindViewById2 = view.findViewById(i);
            if (viewFindViewById2 != null) {
                IncludeRouteEditClickAreaLayoutBinding includeRouteEditClickAreaLayoutBindingBind = IncludeRouteEditClickAreaLayoutBinding.bind(viewFindViewById2);
                i = R.id.funcLlTeach;
                View viewFindViewById3 = view.findViewById(i);
                if (viewFindViewById3 != null) {
                    IncludeRouteEditTeachLayoutBinding includeRouteEditTeachLayoutBindingBind = IncludeRouteEditTeachLayoutBinding.bind(viewFindViewById3);
                    i = R.id.header;
                    View viewFindViewById4 = view.findViewById(i);
                    if (viewFindViewById4 != null) {
                        RouteMapHeaderBinding routeMapHeaderBindingBind = RouteMapHeaderBinding.bind(viewFindViewById4);
                        i = R.id.hpMapView;
                        MapView mapView = (MapView) view.findViewById(i);
                        if (mapView != null) {
                            i = R.id.map_mode_switch;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.mapView;
                                com.amap.api.maps.MapView mapView2 = (com.amap.api.maps.MapView) view.findViewById(i);
                                if (mapView2 != null) {
                                    i = R.id.orderRecyclerView;
                                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                    if (recyclerView != null) {
                                        i = R.id.recyclerView;
                                        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                                        if (recyclerView2 != null) {
                                            return new RouteEditMapBinding((ConstraintLayout) view, textView, routeMapDistanceBindingBind, includeRouteEditClickAreaLayoutBindingBind, includeRouteEditTeachLayoutBindingBind, routeMapHeaderBindingBind, mapView, textView2, mapView2, recyclerView, recyclerView2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteEditMapBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteEditMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_edit_map, viewGroup, false);
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
