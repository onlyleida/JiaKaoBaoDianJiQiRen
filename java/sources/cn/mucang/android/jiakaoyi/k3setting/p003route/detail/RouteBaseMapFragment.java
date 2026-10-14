package cn.mucang.android.jiakaoyi.k3setting.p003route.detail;

import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.a;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseFragment;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.mark.BrakePointMarkView;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.mark.MyLocationMark;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.mark.PointMarkView;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.DefaultLocationListener;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdate;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.MapView;
import com.amap.api.maps.TextureMapView;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechConstant;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.detail.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010#\u001a\u00020$H\u0004J\u0012\u0010%\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010\rH\u0004J\u0010\u0010'\u001a\u00020$2\u0006\u0010(\u001a\u00020)H\u0002J \u0010*\u001a\u00020$2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\r0,2\b\b\u0002\u0010-\u001a\u00020\u0011H\u0004J\u0010\u0010.\u001a\u00020$2\u0006\u0010&\u001a\u00020\rH\u0004J\b\u0010/\u001a\u00020\u0007H&J\n\u00100\u001a\u0004\u0018\u000101H\u0016J\b\u00102\u001a\u000203H\u0016J\n\u00104\u001a\u0004\u0018\u000105H\u0016J\u0016\u00106\u001a\u0002072\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\r0,H\u0004J\b\u00108\u001a\u00020$H\u0016J\u001a\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010>H\u0002J\b\u0010?\u001a\u00020$H\u0016J&\u0010@\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010>2\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J\b\u0010C\u001a\u00020$H\u0016J\u0010\u0010D\u001a\u00020$2\u0006\u0010(\u001a\u00020)H\u0016J\b\u0010E\u001a\u00020$H\u0016J\b\u0010F\u001a\u00020$H\u0016J\u0010\u0010G\u001a\u00020$2\u0006\u0010H\u001a\u000203H\u0004J\u0018\u0010I\u001a\u00020$2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020KH\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001cR\u001c\u0010\u001d\u001a\u00028\u0000X\u0084.¢\u0006\u0010\n\u0002\u0010\"\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006M"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;", "VB", "Landroidx/viewbinding/ViewBinding;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;", "()V", "map", "Lcom/amap/api/maps/AMap;", "markerList", "", "Lcom/amap/api/maps/model/Marker;", "markerMap", "", "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;", "myLocationMark", "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/mark/MyLocationMark;", "needLocate", "", "getNeedLocate", "()Z", "setNeedLocate", "(Z)V", "polyline", "Lcom/amap/api/maps/model/Polyline;", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", SpeechConstant.SPEED, "", "Ljava/lang/Float;", "viewBinding", "getViewBinding", "()Landroidx/viewbinding/ViewBinding;", "setViewBinding", "(Landroidx/viewbinding/ViewBinding;)V", "Landroidx/viewbinding/ViewBinding;", "clearMarker", "", "drawBrakePointMark", "node", "drawMyLocation", "location", "Landroid/location/Location;", "drawRouteLine", "nodeList", "", "animate", "drawStartPointMark", "getMap", "getMapView", "Lcom/amap/api/maps/MapView;", "getStatName", "", "getTextureMapView", "Lcom/amap/api/maps/TextureMapView;", "getTotalDistance", "", "initView", "initViewBinding", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "initViewModel", "onCreateView", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onLocationChanged", "onPause", "onResume", "speakingToast", "toastContent", "updateAnimateCamera", "lat", "", "lon", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class RouteBaseMapFragment<VB extends a> extends BaseFragment implements DefaultLocationListener {
    protected VB b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMap f4521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Polyline f4522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MyLocationMark f4523f;
    private Float i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<Marker> f4524g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<RouteNode, Marker> f4525h = new LinkedHashMap();
    private final cn.mucang.android.jiakaoyi.signal.c.f.a j = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.a
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(e eVar) {
            RouteBaseMapFragment.G(this.f4504a, eVar);
        }
    };

    private final View C(LayoutInflater layoutInflater, ViewGroup viewGroup) throws IllegalAccessException, InvocationTargetException {
        Type genericSuperclass = getClass().getGenericSuperclass();
        Objects.requireNonNull(genericSuperclass, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType");
        Type type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
        Objects.requireNonNull(type, "null cannot be cast to non-null type java.lang.Class<VB of cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteBaseMapFragment>");
        Object objInvoke = ((Class) type).getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, layoutInflater, viewGroup, Boolean.FALSE);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type VB of cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteBaseMapFragment");
        F((a) objInvoke);
        View root = A().getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(RouteBaseMapFragment this$0, e it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        this$0.i = Float.valueOf(it.d().b);
    }

    private final void t(Location location) {
        if (!this.c) {
            Float f2 = this.i;
            if (f2 == null) {
                return;
            }
            r.c(f2);
            if (f2.floatValue() <= 2.0f) {
                return;
            }
        }
        MyLocationMark myLocationMark = this.f4523f;
        if (myLocationMark == null) {
            return;
        }
        myLocationMark.c(location);
    }

    public static /* synthetic */ void v(RouteBaseMapFragment routeBaseMapFragment, List list, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRouteLine");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        routeBaseMapFragment.u(list, z);
    }

    protected final VB A() {
        VB vb = this.b;
        if (vb != null) {
            return vb;
        }
        r.u("viewBinding");
        throw null;
    }

    public void B() {
        MapView mapViewX = x();
        if (mapViewX != null) {
            mapViewX.onCreate(null);
        }
        TextureMapView textureMapViewY = y();
        if (textureMapViewY != null) {
            textureMapViewY.onCreate(null);
        }
        AMap map = getMap();
        this.f4521d = map;
        if (map == null) {
            r.u("map");
            throw null;
        }
        map.showBuildings(false);
        AMap aMap = this.f4521d;
        if (aMap == null) {
            r.u("map");
            throw null;
        }
        aMap.showIndoorMap(false);
        AMap aMap2 = this.f4521d;
        if (aMap2 == null) {
            r.u("map");
            throw null;
        }
        aMap2.showMapText(false);
        AMap aMap3 = this.f4521d;
        if (aMap3 == null) {
            r.u("map");
            throw null;
        }
        UiSettings uiSettings = aMap3.getUiSettings();
        uiSettings.setTiltGesturesEnabled(false);
        uiSettings.setScaleControlsEnabled(true);
        uiSettings.setGestureScaleByMapCenter(true);
        uiSettings.setZoomControlsEnabled(false);
        uiSettings.setRotateGesturesEnabled(false);
        AMap aMap4 = this.f4521d;
        if (aMap4 != null) {
            aMap4.animateCamera(CameraUpdateFactory.zoomTo(18.0f));
        } else {
            r.u("map");
            throw null;
        }
    }

    protected final void E(boolean z) {
        this.c = z;
    }

    protected final void F(VB vb) {
        r.e(vb, "<set-?>");
        this.b = vb;
    }

    protected final void H(String toastContent) {
        r.e(toastContent, "toastContent");
        TtsManager.r(toastContent, TtsGrade.GlobalTip);
        u.h(toastContent);
    }

    protected final void I(double d2, double d3) {
        if (d2 <= 1.0E-7d || d3 <= 1.0E-7d) {
            return;
        }
        AMap aMap = this.f4521d;
        if (aMap != null) {
            aMap.animateCamera(CameraUpdateFactory.newLatLng(cn.mucang.android.jiakaoyi.k3setting.a.a(new LatLng(d2, d3))));
        } else {
            r.u("map");
            throw null;
        }
    }

    public abstract AMap getMap();

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "路线地图";
    }

    public void initViewModel() {
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        r.e(inflater, "inflater");
        View viewC = C(inflater, container);
        initViewModel();
        B();
        AMap aMap = this.f4521d;
        if (aMap == null) {
            r.u("map");
            throw null;
        }
        this.f4523f = new MyLocationMark(aMap);
        d.m.b(this.j);
        return viewC;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MapView mapViewX = x();
        if (mapViewX != null) {
            mapViewX.onDestroy();
        }
        TextureMapView textureMapViewY = y();
        if (textureMapViewY != null) {
            textureMapViewY.onDestroy();
        }
        MyLocationMark myLocationMark = this.f4523f;
        if (myLocationMark != null) {
            myLocationMark.b();
        }
        d.m.n(this.j);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.handle.gps.DefaultLocationListener
    public void onLocationChanged(Location location) {
        r.e(location, "location");
        t(location);
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        JLocationManager.f5733a.k(this);
        MapView mapViewX = x();
        if (mapViewX != null) {
            mapViewX.onPause();
        }
        TextureMapView textureMapViewY = y();
        if (textureMapViewY == null) {
            return;
        }
        textureMapViewY.onPause();
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        JLocationManager.f5733a.d(this);
        MapView mapViewX = x();
        if (mapViewX != null) {
            mapViewX.onResume();
        }
        TextureMapView textureMapViewY = y();
        if (textureMapViewY == null) {
            return;
        }
        textureMapViewY.onResume();
    }

    protected final void r() {
        Iterator<T> it = this.f4524g.iterator();
        while (it.hasNext()) {
            ((Marker) it.next()).remove();
        }
        this.f4524g.clear();
        this.f4525h.clear();
    }

    protected final void s(RouteNode routeNode) {
        if (routeNode == null) {
            return;
        }
        if ((!this.f4525h.isEmpty()) && this.f4525h.get(routeNode) != null) {
            Marker marker = this.f4525h.get(routeNode);
            List<Marker> list = this.f4524g;
            Objects.requireNonNull(list, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
            z.a(list).remove(marker);
            this.f4525h.remove(routeNode);
            r.c(marker);
            marker.remove();
        }
        if (routeNode.getBrakeLat() <= 0.0d || routeNode.getBrakeLon() <= 0.0d) {
            return;
        }
        BrakePointMarkView brakePointMarkView = new BrakePointMarkView(getContext(), null);
        brakePointMarkView.setData(routeNode);
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.anchor(0.5f, 0.2f);
        markerOptions.position(cn.mucang.android.jiakaoyi.k3setting.a.a(new LatLng(routeNode.getBrakeLat(), routeNode.getBrakeLon())));
        markerOptions.icon(BitmapDescriptorFactory.fromView(brakePointMarkView));
        AMap aMap = this.f4521d;
        if (aMap == null) {
            r.u("map");
            throw null;
        }
        Marker addMarker = aMap.addMarker(markerOptions);
        List<Marker> list2 = this.f4524g;
        r.d(addMarker, "addMarker");
        list2.add(addMarker);
        this.f4525h.put(routeNode, addMarker);
    }

    protected final void u(List<? extends RouteNode> nodeList, boolean z) {
        r.e(nodeList, "nodeList");
        Polyline polyline = this.f4522e;
        if (polyline != null) {
            polyline.remove();
        }
        ArrayList arrayList = new ArrayList();
        for (RouteNode routeNode : nodeList) {
            arrayList.add(cn.mucang.android.jiakaoyi.k3setting.a.a(new LatLng(routeNode.getLat(), routeNode.getLon())));
            if (routeNode.getBrakeLat() > 0.0d && routeNode.getBrakeLon() > 0.0d) {
                arrayList.add(cn.mucang.android.jiakaoyi.k3setting.a.a(new LatLng(routeNode.getBrakeLat(), routeNode.getBrakeLon())));
            }
        }
        AMap aMap = this.f4521d;
        if (aMap == null) {
            r.u("map");
            throw null;
        }
        this.f4522e = aMap.addPolyline(new PolylineOptions().addAll(arrayList).width(10.0f).color(Color.parseColor("#FF7D3C")));
        if (z) {
            LatLngBounds.Builder builder = new LatLngBounds.Builder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                builder.include((LatLng) it.next());
            }
            CameraUpdate cameraUpdateNewLatLngBoundsRect = CameraUpdateFactory.newLatLngBoundsRect(builder.build(), 50, 50, 50, 100);
            AMap aMap2 = this.f4521d;
            if (aMap2 == null) {
                r.u("map");
                throw null;
            }
            aMap2.animateCamera(cameraUpdateNewLatLngBoundsRect);
        }
    }

    protected final void w(RouteNode node) {
        r.e(node, "node");
        PointMarkView pointMarkView = new PointMarkView(getContext(), null);
        pointMarkView.setData(node);
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.anchor(0.5f, 0.8f);
        markerOptions.position(cn.mucang.android.jiakaoyi.k3setting.a.a(new LatLng(node.getLat(), node.getLon())));
        markerOptions.icon(BitmapDescriptorFactory.fromView(pointMarkView));
        AMap aMap = this.f4521d;
        if (aMap == null) {
            r.u("map");
            throw null;
        }
        Marker addMarker = aMap.addMarker(markerOptions);
        List<Marker> list = this.f4524g;
        r.d(addMarker, "addMarker");
        list.add(addMarker);
    }

    public MapView x() {
        return null;
    }

    public TextureMapView y() {
        return null;
    }

    protected final int z(List<? extends RouteNode> nodeList) {
        r.e(nodeList, "nodeList");
        int i = 0;
        int i2 = 0;
        for (Object obj : nodeList) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                s.t();
                throw null;
            }
            RouteNode routeNode = (RouteNode) obj;
            if (i2 > 0) {
                RouteNode routeNode2 = nodeList.get(i2 - 1);
                float[] fArr = new float[1];
                Location.distanceBetween(routeNode2.getLat(), routeNode2.getLon(), routeNode.getLat(), routeNode.getLon(), fArr);
                i += (int) fArr[0];
            }
            i2 = i3;
        }
        return i;
    }
}
