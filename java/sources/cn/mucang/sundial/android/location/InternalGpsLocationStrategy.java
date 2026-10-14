package cn.mucang.sundial.android.location;

import android.content.Context;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcn/mucang/sundial/android/location/InternalGpsLocationStrategy;", "Lcn/mucang/sundial/android/location/LocationStrategy;", "Lcn/mucang/sundial/android/location/DefaultLocationListener;", "locationListener", "Lkotlin/v;", TtmlNode.START, "(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V", "stop", "()V", "coldReboot", "", "mode", "setStartMode", "(I)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "Lcn/mucang/sundial/android/location/InternalGps;", "internalGps", "Lcn/mucang/sundial/android/location/InternalGps;", "<init>", "(Landroid/content/Context;)V", "base_release"}, k = 1, mv = {1, 1, 15})
public final class InternalGpsLocationStrategy extends LocationStrategy {
    private final Context context;
    private InternalGps internalGps;

    public InternalGpsLocationStrategy(Context context) {
        r.e(context, "context");
        this.context = context;
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
        InternalGps internalGps = new InternalGps(this.context, locationListener);
        this.internalGps = internalGps;
        if (internalGps != null) {
            internalGps.start();
        }
    }

    @Override // cn.mucang.sundial.android.location.LocationStrategy
    public void stop() {
        InternalGps internalGps = this.internalGps;
        if (internalGps != null) {
            internalGps.stop();
        }
        this.internalGps = null;
    }
}
