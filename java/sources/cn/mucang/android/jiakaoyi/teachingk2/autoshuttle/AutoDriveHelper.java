package cn.mucang.android.jiakaoyi.teachingk2.autoshuttle;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.model.CarCheckResult;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AutoShuttleModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.ModuleStatusMonitor;
import cn.mucang.jiakaoyi.uilib.socket.util.NetworkErrorUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\rJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u0007J&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\b2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\r2\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u0014\u0010\u0018\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveHelper;", "", "()V", "TAG", "", "destMap", "Ljava/util/HashMap;", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "Lkotlin/collections/HashMap;", "checkCarCondition", "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/model/CarCheckResult;", "converterPath", "", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;", "posList", "getDestPos", "areaId", "getDistanceXPath", "", "startPos", "path", "offsetMax", "", "setShuttleDestData", "", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoDriveHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoDriveHelper f6264a = new AutoDriveHelper();
    private static final HashMap<Long, Pos> b = new HashMap<>();

    private AutoDriveHelper() {
    }

    public static /* synthetic */ int e(AutoDriveHelper autoDriveHelper, Pos pos, List list, double d2, int i, Object obj) {
        if ((i & 4) != 0) {
            d2 = 500.0d;
        }
        return autoDriveHelper.d(pos, list, d2);
    }

    public final CarCheckResult a() {
        if (NetworkErrorUtil.c().e() || ModuleStatusMonitor.d() || BrakeGlobalMonitor.f()) {
            return new CarCheckResult(false, k0.a(R.string.teachbase_car_status_abnormal));
        }
        cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        if (eVarT.d().e()) {
            return new CarCheckResult(false, k0.a(R.string.teachbase_emergency_stop_button_not_closed));
        }
        if (!eVarT.getCurrentPosition().c()) {
            return new CarCheckResult(false, k0.a(R.string.teachbase_gps_abnormal));
        }
        if (eVarT.d().F != CarModel.Direction.Stop) {
            return new CarCheckResult(false, k0.a(R.string.teachbase_car_not_stop));
        }
        if (eVarT.d().m != Gear.GearN) {
            return new CarCheckResult(false, k0.a(R.string.teachbase_not_gearN));
        }
        return !eVarT.d().f5268f ? new CarCheckResult(false, k0.a(R.string.teachbase_not_push_handbrake)) : new CarCheckResult(true, k0.a(R.string.teachbase_car_status_isok));
    }

    public final List<TraceItemModel> b(List<? extends Pos> list) throws Exception {
        ArrayList arrayList = new ArrayList();
        cn.mucang.android.jiakaoyi.signal.i.a aVar = cn.mucang.android.jiakaoyi.teachingk2.res.n.b().f7599a;
        if (list != null) {
            for (Pos pos : list) {
                TraceItemModel traceItemModel = new TraceItemModel();
                traceItemModel.step = (short) Step.K2_Global.type;
                traceItemModel.pointType = (byte) 0;
                Gps gpsB = aVar.b(new Pos(pos.x, pos.y));
                kotlin.jvm.internal.r.d(gpsB, "converter.gaussToGps(Pos(it.x, it.y))");
                double[] dArrI = cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.b.i(gpsB.longitude, gpsB.latitude);
                traceItemModel.x = dArrI[0];
                traceItemModel.y = dArrI[1];
                arrayList.add(traceItemModel);
            }
        }
        cn.mucang.android.jiakaoyi.signal.i.a aVar2 = cn.mucang.android.jiakaoyi.teachingk2.res.n.p.f7599a;
        if (list == null) {
            list = u.j();
        }
        List<TraceItemModel> listA = cn.mucang.android.jiakaoyi.teachingk2.r0.b.a(arrayList, aVar2, list);
        kotlin.jvm.internal.r.d(listA, "addCurrentToStartPath(\n … ?: emptyList()\n        )");
        return listA;
    }

    public final Pos c(long j) {
        HashMap<Long, Pos> map = b;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("AutoDriveHelper: getDestPos ", map));
        return map.get(Long.valueOf(j));
    }

    public final int d(Pos startPos, List<? extends Pos> path, double d2) {
        kotlin.jvm.internal.r.e(startPos, "startPos");
        kotlin.jvm.internal.r.e(path, "path");
        double d3 = d2 * d2;
        int i = 0;
        int i2 = -1;
        for (Object obj : path) {
            int i3 = i + 1;
            if (i < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            Pos pos = (Pos) obj;
            if (i < path.size()) {
                double d4 = startPos.x - pos.x;
                double d5 = startPos.y - pos.y;
                double d6 = (d4 * d4) + (d5 * d5);
                if (d6 < d3) {
                    i2 = i;
                    d3 = d6;
                }
            }
            i = i3;
        }
        if (i2 < 0) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("AutoDriveHelper: targetIndex=-1");
            return -1;
        }
        int size = path.size() - 1;
        double dDistanceTo = 0.0d;
        if (i2 < size) {
            while (true) {
                int i4 = i2 + 1;
                dDistanceTo += path.get(i2).distanceTo(path.get(i4));
                if (i4 >= size) {
                    break;
                }
                i2 = i4;
            }
        }
        return (int) dDistanceTo;
    }

    public final void f(List<AutoShuttleModel> list) {
        kotlin.jvm.internal.r.e(list, "list");
        b.clear();
        for (AutoShuttleModel autoShuttleModel : list) {
            HashMap<Long, Pos> map = b;
            Long l = autoShuttleModel.id;
            kotlin.jvm.internal.r.d(l, "it.id");
            Pos pos = autoShuttleModel.pos;
            kotlin.jvm.internal.r.d(pos, "it.pos");
            map.put(l, pos);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("AutoDriveHelper: setShuttleDestData ", b));
    }
}
