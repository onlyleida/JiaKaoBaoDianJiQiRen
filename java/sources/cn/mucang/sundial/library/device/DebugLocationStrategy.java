package cn.mucang.sundial.library.device;

import android.location.Location;
import android.os.Bundle;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.location.DefaultLocationListener;
import cn.mucang.sundial.android.location.LocationStrategy;
import cn.mucang.sundial.android.timer.SundialTimer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.sixents.sdk.BuildConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u000eJ\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcn/mucang/sundial/library/device/DebugLocationStrategy;", "Lcn/mucang/sundial/android/location/LocationStrategy;", "", "lon", "lat", "Landroid/location/Location;", "makeLocation", "(DD)Landroid/location/Location;", "Lcn/mucang/sundial/android/location/DefaultLocationListener;", "locationListener", "Lkotlin/v;", TtmlNode.START, "(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V", "stop", "()V", "coldReboot", "", "mode", "setStartMode", "(I)V", "Lcn/mucang/sundial/android/timer/SundialTimer;", "timer", "Lcn/mucang/sundial/android/timer/SundialTimer;", "", "locations", "Ljava/util/List;", "locationIndex", "I", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class DebugLocationStrategy extends LocationStrategy {
    private int locationIndex;
    private final List<Location> locations = u.m(makeLocation(114.404318d, 30.49469d), makeLocation(114.405086d, 30.494595d), makeLocation(114.405854d, 30.494499d), makeLocation(114.405757d, 30.493863d), makeLocation(114.40566d, 30.493226d), makeLocation(114.405578d, 30.492545d), makeLocation(114.405495d, 30.491863d), makeLocation(114.404737d, 30.491976d), makeLocation(114.403978d, 30.492088d), makeLocation(114.404075d, 30.492745d), makeLocation(114.404172d, 30.493402d), makeLocation(114.404245d, 30.494046d));
    private SundialTimer timer;

    private final Location makeLocation(double lon, double lat) {
        Bundle bundle = new Bundle();
        bundle.putString(AppLocation.SatelliteCount, "4/10");
        bundle.putLong(AppLocation.TimeToFirstFix, 25L);
        Location location = new Location(BuildConfig.BUILD_TYPE);
        location.setLongitude(lon);
        location.setLatitude(lat);
        location.setSpeed(9.0f);
        location.setExtras(bundle);
        return location;
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void coldReboot() {
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void setStartMode(int mode) {
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void start(final DefaultLocationListener locationListener) {
        r.e(locationListener, "locationListener");
        stop();
        SundialTimer sundialTimer = new SundialTimer(3000L, true, new SundialTimer.OnTickListener() { // from class: cn.mucang.sundial.library.device.DebugLocationStrategy.start.1
            @Override // cn.mucang.sundial.android.timer.SundialTimer.OnTickListener
            public final void onTick(long j) {
                locationListener.onLocationChanged((Location) DebugLocationStrategy.this.locations.get(DebugLocationStrategy.this.locationIndex));
                DebugLocationStrategy.this.locationIndex++;
                if (DebugLocationStrategy.this.locationIndex >= DebugLocationStrategy.this.locations.size()) {
                    DebugLocationStrategy.this.locationIndex = 0;
                }
            }
        });
        sundialTimer.start();
        v vVar = v.f15822a;
        this.timer = sundialTimer;
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void stop() {
        SundialTimer sundialTimer = this.timer;
        if (sundialTimer != null) {
            sundialTimer.stop();
        }
        this.timer = null;
    }
}
