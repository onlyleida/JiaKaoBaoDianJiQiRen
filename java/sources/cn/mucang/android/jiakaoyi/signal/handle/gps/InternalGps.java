package cn.mucang.android.jiakaoyi.signal.handle.gps;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import cn.mucang.android.jiakaoyi.signal.handle.gps.processor.CalibrationProcessor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.handle.gps.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\"\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u0018\u001a\u00020\fH\u0007J\b\u0010\u0019\u001a\u00020\fH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/handle/gps/InternalGps;", "Landroid/location/LocationListener;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;", "processor", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/CalibrationProcessor;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/CalibrationProcessor;)V", "locationService", "Landroid/location/LocationManager;", "onLocationChanged", "", "location", "Landroid/location/Location;", "onProviderDisabled", "provider", "", "onProviderEnabled", "onStatusChanged", "p1", "", "p2", "Landroid/os/Bundle;", TtmlNode.START, "stop", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class InternalGps implements LocationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DefaultLocationListener f5732a;
    private final CalibrationProcessor b;
    private final LocationManager c;

    public InternalGps(Context context, DefaultLocationListener listener, CalibrationProcessor calibrationProcessor) {
        r.e(context, "context");
        r.e(listener, "listener");
        this.f5732a = listener;
        this.b = calibrationProcessor;
        Object systemService = context.getSystemService("location");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.location.LocationManager");
        this.c = (LocationManager) systemService;
    }

    @SuppressLint({"MissingPermission"})
    public final void a() {
        b();
        this.c.requestLocationUpdates("gps", 1000L, BitmapDescriptorFactory.HUE_RED, this);
    }

    @SuppressLint({"MissingPermission"})
    public final void b() {
        this.c.removeUpdates(this);
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        Location locationA;
        r.e(location, "location");
        CalibrationProcessor calibrationProcessor = this.b;
        if (calibrationProcessor != null && (locationA = calibrationProcessor.a(location)) != null) {
            location = locationA;
        }
        this.f5732a.onLocationChanged(location);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String provider) {
        r.e(provider, "provider");
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String provider) {
        r.e(provider, "provider");
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String provider, int p1, Bundle p2) {
        r.e(provider, "provider");
    }
}
