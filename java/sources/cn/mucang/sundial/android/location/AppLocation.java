package cn.mucang.sundial.android.location;

import android.location.Location;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.timer.location.LocationRebootManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000U\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b*\u0001\"\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b9\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\u0003\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0018\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00110\u001e8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u0012\u0004\b!\u0010\u0017R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010%\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001aR\u0016\u0010&\u001a\u00020\u001b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u001dR.\u0010)\u001a\u0004\u0018\u00010'2\b\u0010(\u001a\u0004\u0018\u00010'8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0016\u00100\u001a\u00020/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u001b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u0010\u001dR\u0016\u00103\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b3\u0010\u001aR\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u0010\u0004\"\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcn/mucang/sundial/android/location/AppLocation;", "", "", "isLocationValid", "()Z", "", "lon", "lat", "(DD)Z", "Landroid/location/Location;", "location", "Lkotlin/v;", "onGetLocation", "(Landroid/location/Location;)V", "arg", "format", "(D)D", "Lcn/mucang/sundial/android/location/DefaultLocationListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addListener", "(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V", "removeListener", "startLocation", "()V", "stopLocation", "gpsSpeed", "D", "", AppLocation.SatelliteCount, "Ljava/lang/String;", "", "outerListener", "Ljava/util/List;", "getOuterListener$annotations", "cn/mucang/sundial/android/location/AppLocation$locationListener$1", "locationListener", "Lcn/mucang/sundial/android/location/AppLocation$locationListener$1;", "latitude", AppLocation.TimeToFirstFix, "Lcn/mucang/sundial/android/location/LocationStrategy;", "value", "locationStrategy", "Lcn/mucang/sundial/android/location/LocationStrategy;", "getLocationStrategy", "()Lcn/mucang/sundial/android/location/LocationStrategy;", "setLocationStrategy", "(Lcn/mucang/sundial/android/location/LocationStrategy;)V", "Ljava/text/DecimalFormat;", "formatter", "Ljava/text/DecimalFormat;", "TAG", "longitude", "init", "Z", "getInit", "setInit", "(Z)V", "<init>", "base_release"}, k = 1, mv = {1, 1, 15})
public final class AppLocation {
    public static final String SatelliteCount = "SatelliteCount";
    public static final String TAG = "AppLocation";
    public static final String TimeToFirstFix = "TimeToFirstFix";
    private static final DecimalFormat formatter;
    public static volatile double gpsSpeed;
    private static volatile boolean init;
    public static volatile double latitude;
    private static final AppLocation$locationListener$1 locationListener;
    private static LocationStrategy locationStrategy;
    public static volatile double longitude;
    public static final AppLocation INSTANCE = new AppLocation();
    private static final List<DefaultLocationListener> outerListener = new CopyOnWriteArrayList();

    /* JADX WARN: Type inference failed for: r0v3, types: [cn.mucang.sundial.android.location.AppLocation$locationListener$1] */
    static {
        DecimalFormat decimalFormat = new DecimalFormat("#.######");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        formatter = decimalFormat;
        locationListener = new DefaultLocationListener() { // from class: cn.mucang.sundial.android.location.AppLocation$locationListener$1
            @Override // cn.mucang.sundial.android.location.DefaultLocationListener
            public void onLocationChanged(Location location) {
                r.e(location, "location");
                if (MucangConfig.v()) {
                    t.a(AppLocation.TAG, "longitude=" + location.getLongitude() + ",latitude=" + location.getLatitude() + ",speed=" + (location.hasSpeed() ? Double.valueOf(((double) location.getSpeed()) * 3.6d) : "no speed") + ",location provider: " + location.getProvider());
                }
                StringBuilder sb = new StringBuilder();
                sb.append(location.getLongitude());
                sb.append(',');
                sb.append(location.getLatitude());
                SundialLog.gps(sb.toString());
                AppLocation.INSTANCE.onGetLocation(location);
            }
        };
    }

    private AppLocation() {
    }

    public static final void addListener(DefaultLocationListener listener) {
        r.e(listener, "listener");
        outerListener.add(listener);
    }

    private final double format(double arg) {
        String str = formatter.format(arg);
        r.d(str, "formatter.format(arg)");
        return Double.parseDouble(str);
    }

    private static /* synthetic */ void getOuterListener$annotations() {
    }

    public static final boolean isLocationValid() {
        return isLocationValid(longitude, latitude);
    }

    private static final boolean isLocationValid(double lon, double lat) {
        return lon > 1.0E-7d && lat > 1.0E-7d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onGetLocation(Location location) {
        if (isLocationValid(location.getLongitude(), location.getLatitude())) {
            longitude = format(location.getLongitude());
            latitude = format(location.getLatitude());
            gpsSpeed = location.hasSpeed() ? ((double) location.getSpeed()) * 3.6d : 0.0d;
            Location location2 = new Location(location);
            Iterator<T> it = outerListener.iterator();
            while (it.hasNext()) {
                ((DefaultLocationListener) it.next()).onLocationChanged(location2);
            }
        }
    }

    public static final void removeListener(DefaultLocationListener listener) {
        r.e(listener, "listener");
        outerListener.remove(listener);
    }

    public static final synchronized void startLocation() {
        if (!init) {
            LocationStrategy locationStrategy2 = locationStrategy;
            if (locationStrategy2 != null) {
                locationStrategy2.start(locationListener);
            }
            LocationRebootManager.start();
            init = true;
        }
    }

    public static final synchronized void stopLocation() {
        if (init) {
            LocationStrategy locationStrategy2 = locationStrategy;
            if (locationStrategy2 != null) {
                locationStrategy2.stop();
            }
            LocationRebootManager.stop();
            init = false;
        }
    }

    public final boolean getInit() {
        return init;
    }

    public final LocationStrategy getLocationStrategy() {
        return locationStrategy;
    }

    public final void setInit(boolean z) {
        init = z;
    }

    public final void setLocationStrategy(LocationStrategy locationStrategy2) {
        boolean z = init;
        stopLocation();
        locationStrategy = locationStrategy2;
        if (z) {
            startLocation();
        }
    }
}
