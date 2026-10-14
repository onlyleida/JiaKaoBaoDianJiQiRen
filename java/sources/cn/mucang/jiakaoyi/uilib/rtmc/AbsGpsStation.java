package cn.mucang.jiakaoyi.uilib.rtmc;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rtmc.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\bH&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u000fH&R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;", "(Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;)V", "getListener", "()Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;", "init", "", "isValid", "sendGGa", "", "gga", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GGAModel;", TtmlNode.START, "", "stop", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AbsGpsStation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DiffDataListener f9484a;

    public AbsGpsStation(DiffDataListener diffDataListener) {
        this.f9484a = diffDataListener;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final DiffDataListener getF9484a() {
        return this.f9484a;
    }

    public abstract boolean b();

    public abstract boolean c();

    public abstract int d(cn.mucang.android.jiakaoyi.signal.handle.gps.d dVar);

    public abstract void e();

    public abstract void f();
}
