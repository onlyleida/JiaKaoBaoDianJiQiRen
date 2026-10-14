package cn.mucang.jiakaoyi.uilib.rtmc.self;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.handle.gps.d;
import cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation;
import cn.mucang.jiakaoyi.uilib.rtmc.DiffDataListener;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.socket.t;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rtmc.j.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rtmc/self/SelfGpsStation;", "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;", "(Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;)V", "isValid", "", "init", "sendGGa", "", "gga", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GGAModel;", TtmlNode.START, "", "stop", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelfGpsStation extends AbsGpsStation {
    private boolean b;

    public SelfGpsStation(DiffDataListener diffDataListener) {
        super(diffDataListener);
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    public boolean b() {
        this.b = true;
        f.f("init自建基站");
        return true;
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    /* JADX INFO: renamed from: c, reason: from getter */
    public boolean getB() {
        return this.b;
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    public int d(d gga) {
        r.e(gga, "gga");
        return -1;
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    public void e() {
        this.b = true;
        f.f("start自建基站");
        t.b().F(HPGpsManager.f9486a);
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    public void f() {
        this.b = false;
        f.f("stop自建基站");
        t.b().S(HPGpsManager.f9486a);
    }
}
