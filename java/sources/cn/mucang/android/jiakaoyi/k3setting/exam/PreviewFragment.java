package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.k3setting.databinding.ExamPreviewFragmentBinding;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import com.amap.api.maps.AMap;
import com.amap.api.maps.TextureMapView;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.j1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/PreviewFragment;", "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;", "()V", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "drawLines", "", "getMap", "Lcom/amap/api/maps/AMap;", "getTextureMapView", "Lcom/amap/api/maps/TextureMapView;", "onViewCreated", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "setRouteInfo", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PreviewFragment extends RouteBaseMapFragment<ExamPreviewFragmentBinding> {
    private LocalRoute k;

    private final void J() {
        LocalRoute localRoute = this.k;
        if (localRoute == null) {
            kotlin.jvm.internal.r.u("route");
            throw null;
        }
        List<RouteNode> nodes = localRoute.getNodes();
        if (nodes != null) {
            u(nodes, true);
            if (MucangConfig.v() && cn.mucang.android.jiakaoyi.framework.utils.n.a() && nodes.size() > 0) {
                RouteNode routeNode = nodes.get(0);
                LiveBus.d(SetInitDebugGps.class).l(new SetInitDebugGps(new Gps(routeNode.getLat(), routeNode.getLon())));
            }
        }
        LocalRoute localRoute2 = this.k;
        if (localRoute2 == null) {
            kotlin.jvm.internal.r.u("route");
            throw null;
        }
        List<RouteNode> nodes2 = localRoute2.getNodes();
        if (nodes2 == null) {
            return;
        }
        for (RouteNode it : nodes2) {
            kotlin.jvm.internal.r.d(it, "it");
            w(it);
            s(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(PreviewFragment this$0, View view) {
        FragmentManager supportFragmentManager;
        androidx.fragment.app.u uVarM;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        androidx.fragment.app.d activity = this$0.getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null || (uVarM = supportFragmentManager.m()) == null) {
            return;
        }
        uVarM.p(this$0);
        if (uVarM == null) {
            return;
        }
        uVarM.j();
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public AMap getMap() {
        AMap map = A().mapView.getMap();
        kotlin.jvm.internal.r.d(map, "viewBinding.mapView.map");
        return map;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        kotlin.jvm.internal.r.c(arguments);
        Serializable serializable = arguments.getSerializable("key_route");
        Objects.requireNonNull(serializable, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.LocalRoute");
        this.k = (LocalRoute) serializable;
        J();
        A().closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PreviewFragment.L(this.f4333a, view2);
            }
        });
        E(false);
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public TextureMapView y() {
        TextureMapView textureMapView = A().mapView;
        kotlin.jvm.internal.r.d(textureMapView, "viewBinding.mapView");
        return textureMapView;
    }
}
