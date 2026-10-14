package cn.mucang.android.jiakaoyi.k3setting;

import com.amap.api.maps.model.LatLng;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0002"}, d2 = {"toGCJPoint", "Lcom/amap/api/maps/model/LatLng;", "k3setting_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class a {
    public static final LatLng a(LatLng latLng) {
        r.e(latLng, "<this>");
        LatLng latLngA = c.a(latLng.longitude, latLng.latitude);
        r.d(latLngA, "getGCJFromGPS(longitude, latitude)");
        return latLngA;
    }
}
