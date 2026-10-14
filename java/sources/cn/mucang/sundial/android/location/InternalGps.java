package cn.mucang.sundial.android.location;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import cn.mucang.sundial.android.log.SundialLog;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ)\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001f"}, d2 = {"Lcn/mucang/sundial/android/location/InternalGps;", "Landroid/location/LocationListener;", "Lkotlin/v;", TtmlNode.START, "()V", "stop", "Landroid/location/Location;", "location", "onLocationChanged", "(Landroid/location/Location;)V", "", "provider", "", "p1", "Landroid/os/Bundle;", "p2", "onStatusChanged", "(Ljava/lang/String;ILandroid/os/Bundle;)V", "onProviderEnabled", "(Ljava/lang/String;)V", "onProviderDisabled", "Lcn/mucang/sundial/android/location/DefaultLocationListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/sundial/android/location/DefaultLocationListener;", "Landroid/location/LocationManager;", "locationService", "Landroid/location/LocationManager;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Lcn/mucang/sundial/android/location/DefaultLocationListener;)V", "base_release"}, k = 1, mv = {1, 1, 15})
public final class InternalGps implements LocationListener {
    private final DefaultLocationListener listener;
    private final LocationManager locationService;

    public InternalGps(Context context, DefaultLocationListener listener) {
        r.e(context, "context");
        r.e(listener, "listener");
        this.listener = listener;
        Object systemService = context.getSystemService("location");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.location.LocationManager");
        this.locationService = (LocationManager) systemService;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        r.e(location, "location");
        this.listener.onLocationChanged(location);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String provider) {
        r.e(provider, "provider");
        SundialLog.gps("onProviderDisabled " + provider);
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String provider) {
        r.e(provider, "provider");
        SundialLog.gps("onProviderEnabled " + provider);
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String provider, int p1, Bundle p2) {
        r.e(provider, "provider");
        SundialLog.gps("onStatusChanged " + provider + ' ' + p1);
    }

    @SuppressLint({"MissingPermission"})
    public final void start() {
        stop();
        this.locationService.requestLocationUpdates("gps", 1000L, BitmapDescriptorFactory.HUE_RED, this);
    }

    @SuppressLint({"MissingPermission"})
    public final void stop() {
        this.locationService.removeUpdates(this);
    }
}
