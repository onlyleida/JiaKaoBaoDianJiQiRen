package cn.mucang.android.jiakaoyi.teachingk2.safe.detector;

import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.socket.model.ProjectFenceModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class FenceDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0<ProjectFenceModel> f7652a;
    private e b;
    private final Map<Integer, cn.mucang.android.jiakaoyi.teachingk2.safe.detector.c> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r0<Float> f7653d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7654e;

    public enum Type {
        Trigger,
        Faraway
    }

    class a implements a0<ProjectFenceModel> {
        a() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(ProjectFenceModel projectFenceModel) {
            e eVar;
            List<cn.mucang.android.jiakaoyi.teachingk2.res.model.a> list = n.b().f7602f;
            if (g.b(list)) {
                return;
            }
            Iterator<cn.mucang.android.jiakaoyi.teachingk2.res.model.a> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                cn.mucang.android.jiakaoyi.teachingk2.res.model.a next = it.next();
                if (next.b.equals(String.valueOf(projectFenceModel.id))) {
                    next.f7593e = projectFenceModel.enable == 1;
                }
            }
            if (projectFenceModel.enable == 0 && (eVar = FenceDetector.this.b) != null && eVar.f7659a.b.equals(String.valueOf(projectFenceModel.id))) {
                eVar.f7659a.f7593e = false;
                FenceDetector.this.b = null;
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final FenceDetector f7656a = new FenceDetector(null);
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Type f7657a;
        public final List<Pos> b;
        public final cn.mucang.android.jiakaoyi.signal.pos.a c;

        public c(Type type, List<Pos> list) {
            this.f7657a = type;
            this.b = list;
            this.c = cn.mucang.android.jiakaoyi.hpmap.d.a.b(list);
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f7658a;

        public d(String str) {
            this.f7658a = str;
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final cn.mucang.android.jiakaoyi.teachingk2.res.model.a f7659a;
        public final CarBrakeDesc b;
        public final Gear c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Pos f7660d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Gear f7661e;

        public e(cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar, CarBrakeDesc carBrakeDesc, Gear gear, Pos pos) {
            this.f7659a = aVar;
            this.b = carBrakeDesc;
            this.c = gear;
            this.f7660d = pos;
            this.f7661e = carBrakeDesc.targetGear;
        }
    }

    /* synthetic */ FenceDetector(a aVar) {
        this();
    }

    private double c(double d2, double d3) {
        double dMax = Math.max(d2, d3);
        double dA = cn.mucang.android.jiakaoyi.teachingk2.safe.detector.b.a(dMax);
        if (dA > 1.0d) {
            return dA;
        }
        double d4 = 100.0d * dMax;
        return dMax < 0.1d ? 15.0d + (dMax * 320.0d) : Math.min(500.0d, Math.max(47.0d, ((d4 * dMax) / 5.88d) + (0.2d * d4) + (d4 * ((double) this.f7653d.b().floatValue()))));
    }

    private e d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        cn.mucang.android.jiakaoyi.teachingk2.safe.detector.c cVar;
        if (!cn.mucang.android.jiakaoyi.teachingk2.safe.c0.b.a(eVar)) {
            return null;
        }
        List<cn.mucang.android.jiakaoyi.teachingk2.res.model.a> list = n.b().f7602f;
        if (g.b(list)) {
            return null;
        }
        CarPos carPosC = eVar.c();
        if (carPosC.bound != null && carPosC.carRect != null) {
            double dC = c(((double) eVar.d().b) / 3.6d, ((double) eVar.d().c) / 3.6d);
            if (cn.mucang.android.jiakaoyi.signal.h.a.f5675a.get()) {
                dC *= Math.min(Math.abs(eVar.d().r) / 360.0d, 0.5d) + 1.0d;
            }
            ArrayList arrayList = new ArrayList();
            if (Math.abs(eVar.d().r) > 90) {
                if (Math.max(eVar.d().b, eVar.d().c) > 6.0f) {
                    Type type = Type.Trigger;
                    arrayList.add(new c(type, cn.mucang.android.jiakaoyi.teachingk2.safe.detector.d.a(eVar, 0.33d * dC)));
                    arrayList.add(new c(type, cn.mucang.android.jiakaoyi.teachingk2.safe.detector.d.a(eVar, 0.67d * dC)));
                } else {
                    arrayList.add(new c(Type.Trigger, cn.mucang.android.jiakaoyi.teachingk2.safe.detector.d.a(eVar, 0.5d * dC)));
                }
            }
            arrayList.add(new c(Type.Trigger, cn.mucang.android.jiakaoyi.teachingk2.safe.detector.d.a(eVar, dC)));
            Tiger.h(arrayList.get(arrayList.size() - 1));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new c(Type.Faraway, cn.mucang.android.jiakaoyi.teachingk2.safe.detector.d.a(eVar, 2.0d * dC)));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Tiger.h((c) it.next());
            }
            Gear gear = eVar.d().m;
            e eVar2 = this.b;
            if (eVar2 != null) {
                cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar = eVar2.f7659a;
                cn.mucang.android.jiakaoyi.teachingk2.safe.detector.c cVar2 = this.c.get(Integer.valueOf(aVar.f7591a));
                if (cVar2 != null) {
                    if ((aVar.f7591a == 3 ? cVar2.a(aVar, eVar, arrayList2) : cVar2.a(aVar, eVar, arrayList)) == null) {
                        this.b = null;
                    }
                }
            }
            e eVar3 = this.b;
            if (eVar3 != null) {
                return new e(eVar3.f7659a, eVar3.b, eVar.d().m, eVar.c().center);
            }
            for (cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar2 : list) {
                if (!g.b(aVar2.c) && aVar2.c.size() >= 2 && (cVar = this.c.get(Integer.valueOf(aVar2.f7591a))) != null) {
                    CarBrakeDesc carBrakeDescA = aVar2.f7591a == 3 ? cVar.a(aVar2, eVar, arrayList2) : cVar.a(aVar2, eVar, arrayList);
                    if (carBrakeDescA != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(carBrakeDescA.zhSrc);
                        sb.append("触发");
                        int i = aVar2.f7591a;
                        sb.append(i == 3 ? "项目" : i == 1 ? "场地" : "安全");
                        sb.append("围栏刹车");
                        String string = sb.toString();
                        u.h(string);
                        String str = string + "，围栏id=" + aVar2.b + "，预判距离:" + dC + ",预判时间=" + this.f7653d.b() + ",obd速度=" + eVar.d().b + ",gps速度=" + eVar.d().c + ",wheel=" + eVar.d().r + ",档位=" + eVar.d().m.zhName + "," + cn.mucang.android.jiakaoyi.teachingk2.safe.detector.b.d();
                        Tiger.h(new d(str));
                        f.d(str + "," + eVar.getCurrentPosition().toString());
                        e eVar4 = new e(aVar2, carBrakeDescA, gear, new Pos(eVar.c().center));
                        this.b = eVar4;
                        return eVar4;
                    }
                }
            }
        }
        return null;
    }

    public static boolean e() {
        return b.f7656a.f7654e;
    }

    public static float f() {
        return b.f7656a.f7653d.b().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h() {
        LiveBus.d(ProjectFenceModel.class).i(this.f7652a);
    }

    public static void i(boolean z) {
        b.f7656a.f7654e = z;
    }

    public static void j(float f2) {
        b.f7656a.f7653d.j(Float.valueOf(f2));
    }

    public static e k(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        return b.f7656a.d(eVar);
    }

    private FenceDetector() {
        this.f7652a = new a();
        this.b = null;
        HashMap map = new HashMap();
        this.c = map;
        this.f7653d = r0.e("fence_predict_time", 0.45f);
        this.f7654e = false;
        map.put(1, new cn.mucang.android.jiakaoyi.teachingk2.safe.detector.f.e());
        map.put(3, new cn.mucang.android.jiakaoyi.teachingk2.safe.detector.f.c());
        map.put(2, new cn.mucang.android.jiakaoyi.teachingk2.safe.detector.f.d());
        cn.mucang.android.jiakaoyi.teachingk2.safe.detector.b.b();
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f7662a.h();
            }
        });
    }
}
