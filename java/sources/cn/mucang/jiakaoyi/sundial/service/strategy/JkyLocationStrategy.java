package cn.mucang.jiakaoyi.sundial.service.strategy;

import android.location.Location;
import cn.mucang.sundial.android.location.DefaultLocationListener;
import cn.mucang.sundial.android.location.LocationStrategy;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.service.strategy.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyLocationStrategy;", "Lcn/mucang/sundial/android/location/LocationStrategy;", "()V", "locationListener", "Lcn/mucang/sundial/android/location/DefaultLocationListener;", "coldReboot", "", "sendLocation", "location", "Landroid/location/Location;", "setStartMode", "mode", "", TtmlNode.START, "stop", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JkyLocationStrategy extends LocationStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DefaultLocationListener f9178a;

    public final void a(Location location) {
        if (location == null) {
            return;
        }
        location.setSpeed(location.getSpeed() / 3.6f);
        DefaultLocationListener defaultLocationListener = this.f9178a;
        if (defaultLocationListener == null) {
            return;
        }
        defaultLocationListener.onLocationChanged(location);
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void coldReboot() {
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void setStartMode(int mode) {
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void start(DefaultLocationListener locationListener) {
        r.e(locationListener, "locationListener");
        this.f9178a = locationListener;
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void stop() {
        this.f9178a = null;
    }
}
