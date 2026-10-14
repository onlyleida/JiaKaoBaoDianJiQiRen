package cn.mucang.android.jiakaoyi.signal.handle.gps.processor;

import android.location.Location;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.handle.gps.processor.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/FilterCalibrationProcessor;", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/CalibrationProcessor;", "()V", "kalmanFilter", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;", "process", "Landroid/location/Location;", "location", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FilterCalibrationProcessor implements CalibrationProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KalmanFilter f5752a = new KalmanFilter(3);

    @Override // cn.mucang.android.jiakaoyi.signal.handle.gps.processor.CalibrationProcessor
    public Location a(Location location) {
        r.e(location, "location");
        Location locationB = this.f5752a.b(location);
        r.d(locationB, "kalmanFilter.gpsCalibration(location)");
        return locationB;
    }
}
