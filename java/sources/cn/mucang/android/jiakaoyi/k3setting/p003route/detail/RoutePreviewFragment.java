package cn.mucang.android.jiakaoyi.k3setting.p003route.detail;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.d;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteMapFragmentBinding;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import com.amap.api.maps.AMap;
import com.amap.api.maps.MapView;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.detail.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RoutePreviewFragment;", "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;", "()V", "getMap", "Lcom/amap/api/maps/AMap;", "getMapView", "Lcom/amap/api/maps/MapView;", "onViewCreated", "", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RoutePreviewFragment extends RouteBaseMapFragment<RouteMapFragmentBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(RoutePreviewFragment this$0, List it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.u(it, true);
        Iterator it2 = it.iterator();
        while (it2.hasNext()) {
            RouteNode routeNode = (RouteNode) it2.next();
            this$0.w(routeNode);
            this$0.s(routeNode);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public AMap getMap() {
        AMap map = A().mapView.getMap();
        r.d(map, "viewBinding.mapView.map");
        return map;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        d activity = getActivity();
        r.c(activity);
        j0 j0VarA = new m0(activity).a(RouteMapViewModel.class);
        r.d(j0VarA, "ViewModelProvider(activi…MapViewModel::class.java)");
        ((RouteMapViewModel) j0VarA).j().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RoutePreviewFragment.K(this.f4516a, (List) obj);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public MapView x() {
        MapView mapView = A().mapView;
        r.d(mapView, "viewBinding.mapView");
        return mapView;
    }
}
