package cn.mucang.android.jiakaoyi.k3setting.p003route.detail.mark;

import android.location.Location;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.animation.Animation;
import com.amap.api.maps.model.animation.TranslateAnimation;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.detail.v.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/mark/MyLocationMark;", "", "aMap", "Lcom/amap/api/maps/AMap;", "(Lcom/amap/api/maps/AMap;)V", "mLocMarker", "Lcom/amap/api/maps/model/Marker;", "initLocIcon", "", "onDestroy", "onLocationChange", "location", "Landroid/location/Location;", "updateLoc", "latLng", "Lcom/amap/api/maps/model/LatLng;", "updateLocAngle", "angle", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MyLocationMark {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AMap f4529a;
    private Marker b;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.detail.v.b$a */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/route/detail/mark/MyLocationMark$updateLoc$1$1", "Lcom/amap/api/maps/model/animation/Animation$AnimationListener;", "onAnimationEnd", "", "onAnimationStart", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Marker f4530a;
        final /* synthetic */ LatLng b;

        a(Marker marker, LatLng latLng) {
            this.f4530a = marker;
            this.b = latLng;
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationEnd() {
            this.f4530a.setPosition(this.b);
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationStart() {
        }
    }

    public MyLocationMark(AMap aMap) {
        r.e(aMap, "aMap");
        this.f4529a = aMap;
        a();
    }

    private final void a() {
        if (this.b != null) {
            return;
        }
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.icon(BitmapDescriptorFactory.fromResource(R.drawable.ic_mylocation));
        markerOptions.anchor(0.5f, 0.5f);
        markerOptions.zIndex(2.0f);
        Marker markerAddMarker = this.f4529a.addMarker(markerOptions);
        this.b = markerAddMarker;
        if (markerAddMarker == null) {
            return;
        }
        markerAddMarker.setClickable(false);
    }

    private final void d(LatLng latLng) {
        Marker marker = this.b;
        if (marker == null) {
            return;
        }
        if (marker.getPosition() == null) {
            marker.setPosition(latLng);
        } else {
            TranslateAnimation translateAnimation = new TranslateAnimation(latLng);
            translateAnimation.setDuration(800L);
            translateAnimation.setAnimationListener(new a(marker, latLng));
            marker.setAnimation(translateAnimation);
            marker.startAnimation();
        }
        this.f4529a.animateCamera(CameraUpdateFactory.changeLatLng(latLng));
    }

    private final void e(float f2) {
        Marker marker = this.b;
        if (marker == null) {
            return;
        }
        marker.setRotateAngle(f2);
    }

    public final void b() {
        Marker marker = this.b;
        if (marker == null) {
            return;
        }
        marker.remove();
    }

    public final void c(Location location) {
        r.e(location, "location");
        d(cn.mucang.android.jiakaoyi.k3setting.a.a(new LatLng(location.getLatitude(), location.getLongitude())));
        e(360 - location.getBearing());
    }
}
