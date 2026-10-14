package cn.mucang.jiakaoyi.uilib.rtmc;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationModel;
import com.mobile.auth.gatewayauth.ResultCode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rtmc.GpsStationSwitcher$switchType$1", f = "GpsStationSwitcher.kt", l = {}, m = "invokeSuspend")
final class GpsStationSwitcher$switchType$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ GpsStationModel $targetStation;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GpsStationSwitcher$switchType$1(GpsStationModel gpsStationModel, Continuation<? super GpsStationSwitcher$switchType$1> continuation) {
        super(2, continuation);
        this.$targetStation = gpsStationModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new GpsStationSwitcher$switchType$1(this.$targetStation, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((GpsStationSwitcher$switchType$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        GpsStationSwitcher gpsStationSwitcher;
        AbsGpsStation absGpsStation;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            AbsGpsStation absGpsStationA = GpsStationSwitcher.i.a(GpsStationSwitcher.c, this.$targetStation);
            if (absGpsStationA.b()) {
                GpsAnalysis.f().s(this.$targetStation.baseName);
                GpsAnalysis.f().t(this.$targetStation.isSelf());
                if (GpsStationSwitcher.b.station != this.$targetStation.station && (absGpsStation = GpsStationSwitcher.f9476d) != null) {
                    absGpsStation.f();
                }
                GpsStationSwitcher.b.set(this.$targetStation);
                cn.mucang.android.jiakaoyi.signal.gps.c.m(GpsStationSwitcher.b.isSelf());
                if (!r.a("本地基站", GpsStationSwitcher.b.baseName)) {
                    String str = GpsStationSwitcher.b.baseName;
                    e.b = str;
                    cn.mucang.android.jiakaoyi.framework.log.f.f(r.m("切换基站，设置基站名称:", str));
                }
                absGpsStationA.e();
                GpsStationSwitcher gpsStationSwitcher2 = GpsStationSwitcher.f9475a;
                GpsStationSwitcher.f9476d = absGpsStationA;
                cn.mucang.android.jiakaoyi.framework.log.f.f("基站切换初始化成功:" + ((Object) this.$targetStation.desc()) + ',' + ((Object) this.$targetStation.baseId));
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.f("基站切换初始化失败:" + ((Object) this.$targetStation.desc()) + ',' + ((Object) this.$targetStation.baseId));
                StringBuilder sb = new StringBuilder();
                sb.append("切换到");
                sb.append((Object) GpsStationSwitcher.b.desc());
                sb.append(ResultCode.MSG_FAILED);
                u.h(sb.toString());
            }
        } catch (Throwable th) {
            try {
                cn.mucang.android.jiakaoyi.framework.log.f.f("基站切换失败:" + ((Object) th.getMessage()) + " ，" + ((Object) this.$targetStation.desc()) + ',' + ((Object) this.$targetStation.baseId));
            } finally {
                gpsStationSwitcher = GpsStationSwitcher.f9475a;
                GpsStationSwitcher.f9480h = false;
            }
        }
        return v.f15822a;
    }
}
