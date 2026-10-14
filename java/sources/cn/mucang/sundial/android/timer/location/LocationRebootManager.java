package cn.mucang.sundial.android.timer.location;

import android.location.Location;
import android.os.Handler;
import android.os.HandlerThread;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.location.DefaultLocationListener;
import cn.mucang.sundial.android.location.LocationStrategy;
import cn.mucang.sundial.android.log.SundialLog;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000/\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004*\u0001\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcn/mucang/sundial/android/timer/location/LocationRebootManager;", "Ljava/lang/Runnable;", "Lkotlin/v;", TtmlNode.START, "()V", "stop", "run", "Landroid/os/HandlerThread;", "thread", "Landroid/os/HandlerThread;", "cn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1", "locationListener", "Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "", "coldRebootPeriod", "J", "<init>", "base_release"}, k = 1, mv = {1, 1, 15})
public final class LocationRebootManager implements Runnable {
    private static final long coldRebootPeriod = 300000;
    private static Handler handler;
    private static HandlerThread thread;
    public static final LocationRebootManager INSTANCE = new LocationRebootManager();
    private static final LocationRebootManager$locationListener$1 locationListener = new DefaultLocationListener() { // from class: cn.mucang.sundial.android.timer.location.LocationRebootManager$locationListener$1
        private long time;

        public final long getTime() {
            return this.time;
        }

        @Override // cn.mucang.sundial.android.location.DefaultLocationListener
        public void onLocationChanged(Location location) {
            r.e(location, "location");
            if (System.currentTimeMillis() - this.time > 1000) {
                this.time = System.currentTimeMillis();
                u.f(new Runnable() { // from class: cn.mucang.sundial.android.timer.location.LocationRebootManager$locationListener$1$onLocationChanged$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationRebootManager locationRebootManager = LocationRebootManager.INSTANCE;
                        Handler handlerAccess$getHandler$p = LocationRebootManager.access$getHandler$p(locationRebootManager);
                        if (handlerAccess$getHandler$p != null) {
                            handlerAccess$getHandler$p.removeCallbacks(locationRebootManager);
                        }
                        Handler handlerAccess$getHandler$p2 = LocationRebootManager.access$getHandler$p(locationRebootManager);
                        if (handlerAccess$getHandler$p2 != null) {
                            handlerAccess$getHandler$p2.postDelayed(locationRebootManager, DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS);
                        }
                    }
                });
            }
        }

        public final void setTime(long j) {
            this.time = j;
        }
    };

    private LocationRebootManager() {
    }

    public static final /* synthetic */ Handler access$getHandler$p(LocationRebootManager locationRebootManager) {
        return handler;
    }

    public static final /* synthetic */ LocationRebootManager$locationListener$1 access$getLocationListener$p(LocationRebootManager locationRebootManager) {
        return locationListener;
    }

    public static final /* synthetic */ HandlerThread access$getThread$p(LocationRebootManager locationRebootManager) {
        return thread;
    }

    public static final synchronized void start() {
        u.f(new Runnable() { // from class: cn.mucang.sundial.android.timer.location.LocationRebootManager.start.1
            @Override // java.lang.Runnable
            public final void run() {
                LocationRebootManager locationRebootManager = LocationRebootManager.INSTANCE;
                if (LocationRebootManager.access$getThread$p(locationRebootManager) == null) {
                    LocationRebootManager.thread = new HandlerThread("LocationRebootManager");
                    HandlerThread handlerThreadAccess$getThread$p = LocationRebootManager.access$getThread$p(locationRebootManager);
                    r.c(handlerThreadAccess$getThread$p);
                    handlerThreadAccess$getThread$p.start();
                    HandlerThread handlerThreadAccess$getThread$p2 = LocationRebootManager.access$getThread$p(locationRebootManager);
                    r.c(handlerThreadAccess$getThread$p2);
                    LocationRebootManager.handler = new Handler(handlerThreadAccess$getThread$p2.getLooper());
                    Handler handlerAccess$getHandler$p = LocationRebootManager.access$getHandler$p(locationRebootManager);
                    r.c(handlerAccess$getHandler$p);
                    handlerAccess$getHandler$p.postDelayed(locationRebootManager, 300000L);
                }
                AppLocation.addListener(LocationRebootManager.access$getLocationListener$p(locationRebootManager));
            }
        });
    }

    public static final synchronized void stop() {
        u.f(new Runnable() { // from class: cn.mucang.sundial.android.timer.location.LocationRebootManager.stop.1
            @Override // java.lang.Runnable
            public final void run() {
                LocationRebootManager locationRebootManager = LocationRebootManager.INSTANCE;
                if (LocationRebootManager.access$getThread$p(locationRebootManager) != null) {
                    Handler handlerAccess$getHandler$p = LocationRebootManager.access$getHandler$p(locationRebootManager);
                    if (handlerAccess$getHandler$p != null) {
                        handlerAccess$getHandler$p.removeCallbacks(locationRebootManager);
                    }
                    HandlerThread handlerThreadAccess$getThread$p = LocationRebootManager.access$getThread$p(locationRebootManager);
                    r.c(handlerThreadAccess$getThread$p);
                    handlerThreadAccess$getThread$p.quit();
                    LocationRebootManager.thread = null;
                }
                AppLocation.removeListener(LocationRebootManager.access$getLocationListener$p(locationRebootManager));
            }
        });
    }

    @Override // java.lang.Runnable
    public void run() {
        SundialLog.gps("5分钟没有定位冷重启一次");
        LocationStrategy locationStrategy = AppLocation.INSTANCE.getLocationStrategy();
        if (locationStrategy != null) {
            locationStrategy.coldReboot();
        }
        Handler handler2 = handler;
        if (handler2 != null) {
            handler2.removeCallbacks(this);
        }
        Handler handler3 = handler;
        if (handler3 != null) {
            handler3.postDelayed(this, 300000L);
        }
    }
}
