package cn.mucang.android.jiakaoyi.teachingk2.res;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.jiakaoyi.uilib.socket.u;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/res/CarSizeReporter;", "", "()V", "carObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;", "job", "Lkotlinx/coroutines/Job;", "onResLoaded", "", "send", "it", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarSizeReporter {
    private static t1 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CarSizeReporter f7557a = new CarSizeReporter();
    private static final a0<CarPos> c = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.a
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            CarSizeReporter.b((CarPos) obj);
        }
    };

    private CarSizeReporter() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(CarPos it) {
        if (it.carRect == null) {
            return;
        }
        CarSizeReporter carSizeReporter = f7557a;
        r.d(it, "it");
        carSizeReporter.e(it);
    }

    public static final void d() {
        t1 t1Var = b;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        b = kotlinx.coroutines.g.b(j0.b(), null, null, new CarSizeReporter$onResLoaded$1(null), 3, null);
        LiveBus.d(CarPos.class).i(c);
    }

    private final void e(CarPos carPos) {
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPos.carRect;
        int iDistanceTo = (int) cVar.f5820a.distanceTo(cVar.b);
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
        int iDistanceTo2 = (int) cVar2.f5820a.distanceTo(cVar2.f5821d);
        int iA = RealCarSelectManager.a();
        u.h(iDistanceTo, iDistanceTo2, (byte) iA);
        cn.mucang.android.jiakaoyi.framework.log.f.o("上报车身长宽:" + iDistanceTo + ',' + iDistanceTo2 + ',' + iA);
        LiveBus.d(CarPos.class).m(c);
    }
}
