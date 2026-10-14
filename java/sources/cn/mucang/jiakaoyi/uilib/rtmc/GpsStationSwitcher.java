package cn.mucang.jiakaoyi.uilib.rtmc;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationModel;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.tencent.connect.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0013J\u0006\u0010\u0019\u001a\u00020\rJ\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0004J\u0006\u0010\u001c\u001a\u00020\u0017J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;", "", "()V", "currentStation", "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;", "factory", "Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationFactory;", "ggaObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GGAModel;", "gpsStation", "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;", "isSwitching", "", "job", "Lkotlinx/coroutines/Job;", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "thirdGpsListener", "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;", "currentStationType", "", "init", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "isSelfStation", "setStation", "station", "stop", "switchType", "targetStation", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GpsStationSwitcher {
    private static DiffDataListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AbsGpsStation f9476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static t1 f9477e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile boolean f9480h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GpsStationSwitcher f9475a = new GpsStationSwitcher();
    private static final GpsStationModel b = new GpsStationModel();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static i0 f9478f = j0.a(w0.c());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a0<cn.mucang.android.jiakaoyi.signal.handle.gps.d> f9479g = new a0() { // from class: cn.mucang.jiakaoyi.uilib.rtmc.b
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            GpsStationSwitcher.h((cn.mucang.android.jiakaoyi.signal.handle.gps.d) obj);
        }
    };
    private static final GpsStationFactory i = new GpsStationFactory();

    private GpsStationSwitcher() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(cn.mucang.android.jiakaoyi.signal.handle.gps.d dVar) {
        AbsGpsStation absGpsStation;
        if (b.isSelf() || (absGpsStation = f9476d) == null) {
            return;
        }
        kotlinx.coroutines.g.b(f9478f, w0.b(), null, new GpsStationSwitcher$ggaObserver$1$1(absGpsStation, dVar, null), 2, null);
    }

    private final void m(GpsStationModel gpsStationModel) {
        StringBuilder sb = new StringBuilder();
        sb.append("开始切换到基站:");
        sb.append((Object) gpsStationModel.desc());
        sb.append(",当前基站:");
        GpsStationModel gpsStationModel2 = b;
        sb.append((Object) gpsStationModel2.desc());
        cn.mucang.android.jiakaoyi.framework.log.f.f(sb.toString());
        if (f9480h || c == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("当前正在进行基站切换，一次只能进行一次切换，直接返回");
            return;
        }
        if (gpsStationModel2.station == gpsStationModel.station) {
            AbsGpsStation absGpsStation = f9476d;
            boolean z = false;
            if (absGpsStation != null && absGpsStation.getB()) {
                z = true;
            }
            if (z) {
                if (gpsStationModel.isSelf()) {
                    e.b = gpsStationModel.baseName;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.f("当前需要切换的基站和当前正在使用的基站的类型相同，且正在使用的基站可用，不切换，返回");
                GpsAnalysis.f().s(gpsStationModel.baseName);
                GpsAnalysis.f().t(gpsStationModel.isSelf());
                return;
            }
        }
        f9480h = true;
        f9477e = kotlinx.coroutines.g.b(f9478f, w0.b(), null, new GpsStationSwitcher$switchType$1(gpsStationModel, null), 2, null);
    }

    public final byte g() {
        return b.station;
    }

    public final void i(DiffDataListener listener) {
        r.e(listener, "listener");
        c = listener;
        m(b);
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.handle.gps.d.class).i(f9479g);
    }

    public final boolean j() {
        return b.isSelf();
    }

    public final void l(GpsStationModel station) {
        r.e(station, "station");
        m(station);
    }
}
