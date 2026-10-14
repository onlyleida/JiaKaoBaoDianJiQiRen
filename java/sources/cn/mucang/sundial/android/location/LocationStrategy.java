package cn.mucang.sundial.android.location;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H&¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcn/mucang/sundial/android/location/LocationStrategy;", "", "Lcn/mucang/sundial/android/location/DefaultLocationListener;", "locationListener", "Lkotlin/v;", TtmlNode.START, "(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V", "stop", "()V", "coldReboot", "", "mode", "setStartMode", "(I)V", "<init>", "base_release"}, k = 1, mv = {1, 1, 15})
public abstract class LocationStrategy {
    public abstract void coldReboot();

    public abstract void setStartMode(int mode);

    public abstract void start(DefaultLocationListener locationListener);

    public abstract void stop();
}
