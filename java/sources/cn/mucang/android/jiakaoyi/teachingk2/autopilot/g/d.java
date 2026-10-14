package cn.mucang.android.jiakaoyi.teachingk2.autopilot.g;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTipType;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.sundial.library.activity.BaseActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c f6215e;
    private long j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final r0<Float> f6216f = r0.e("help_teach_advance_time", 0.6f);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final r0<Integer> f6217g = r0.f("help_teach_brake_distance", 230);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final r0<Integer> f6218h = r0.f("help_teach_brake_coefficient", 21);
    private b i = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f6213a = new AtomicBoolean(false);
    private final Map<cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b, b> b = new HashMap();
    private final Map<NormalVariable, Boolean> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f6214d = new AtomicBoolean(false);

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final e f6219a;
        final cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a b;
        final NormalVariable c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.e f6220d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TeachTypeData f6221e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        cn.mucang.android.jiakaoyi.hpmap.a.a.b f6222f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        List<TraceItemModel> f6223g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f6224h;

        private b(e eVar, cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a aVar, NormalVariable normalVariable) {
            this.f6219a = eVar;
            this.b = aVar;
            this.c = normalVariable;
            this.f6220d = new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.e(BaseActivity.INTERVAL);
            this.f6224h = 0;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f6225a = new d();
    }

    public static d a() {
        return c.f6225a;
    }

    public static int b() {
        return c.f6225a.f6218h.b().intValue();
    }

    public static int c() {
        return c.f6225a.f6217g.b().intValue();
    }

    private cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a d(TeachTypeData teachTypeData) {
        TeachTipType teachTipType = teachTypeData.type;
        if (teachTipType == TeachTipType.Wheel) {
            return new cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.f.c();
        }
        if (teachTipType == TeachTipType.Stop) {
            return new cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.f.b();
        }
        if (teachTipType == TeachTipType.HandBrake) {
            return new cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.f.a();
        }
        return null;
    }

    public static float f() {
        return c.f6225a.f6216f.b().floatValue();
    }

    private boolean j(NormalVariable normalVariable) {
        Boolean bool = this.c.get(normalVariable);
        return bool != null && bool.booleanValue();
    }

    private void k() {
        this.b.clear();
        this.c.clear();
        this.i = null;
        this.j = 0L;
    }

    public static void l(int i) {
        c.f6225a.f6218h.j(Integer.valueOf(i));
    }

    public static void m(int i) {
        c.f6225a.f6217g.j(Integer.valueOf(i));
    }

    public static void p(float f2) {
        c.f6225a.f6216f.j(Float.valueOf(f2));
    }

    public long e() {
        return this.j;
    }

    public void g(cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b bVar, cn.mucang.android.jiakaoyi.signal.c.e eVar, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2, Pos pos, Pos pos2, List<TraceItemModel> list) {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.a aVarD;
        if (this.f6213a.get()) {
            if (!this.f6214d.get()) {
                this.f6214d.set(true);
                k();
            }
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c cVar = this.f6215e;
            if (cVar == null) {
                return;
            }
            b bVar3 = this.b.get(bVar);
            if (bVar3 == null && (aVarD = d(teachTypeData)) != null) {
                bVar3 = new b(new e(teachTypeData.normal), aVarD, teachTypeData.normal);
                this.b.put(bVar, bVar3);
            }
            b bVar4 = bVar3;
            b bVar5 = this.i;
            if (bVar5 != null) {
                int i = bVar5.f6224h;
                if (i == 2) {
                    if (bVar5.b.a(eVar, null, null, bVar5.f6221e, bVar5.f6222f, bVar5.f6223g) && bVar5.f6220d.a(eVar.d().F, eVar.d().L)) {
                        cVar.k(bVar5.f6221e, eVar);
                        bVar5.f6224h = 3;
                        return;
                    }
                    return;
                }
                if (i == 3 && cVar.j(bVar5.f6221e, eVar)) {
                    cVar.f(bVar5.f6221e);
                    bVar5.f6224h = 4;
                    this.i = null;
                    return;
                }
                return;
            }
            if (bVar4 != null) {
                int i2 = bVar4.f6224h;
                if (i2 == 0) {
                    if (!bVar4.f6219a.a(eVar, bVar2) || !j(bVar4.c)) {
                        cVar.h(teachTypeData, eVar, bVar2);
                        return;
                    } else {
                        cVar.b(teachTypeData, eVar);
                        bVar4.f6224h = 1;
                        return;
                    }
                }
                if (i2 != 1) {
                    if (i2 == 2) {
                        if (bVar4.b.a(eVar, pos, pos2, teachTypeData, bVar2, list) && bVar4.f6220d.a(eVar.d().F, eVar.d().L)) {
                            cVar.k(teachTypeData, eVar);
                            bVar4.f6224h = 3;
                            return;
                        }
                        return;
                    }
                    if (i2 == 3 && cVar.j(teachTypeData, eVar)) {
                        bVar4.f6224h = 4;
                        cVar.f(teachTypeData);
                        this.j = 0L;
                        return;
                    }
                    return;
                }
                if (cVar.d(teachTypeData, eVar)) {
                    f.o("刹车后的坐标点和目标点的距离:" + bVar4.f6219a.b(eVar.c().rearAxlePoint));
                    bVar4.f6224h = 2;
                    cVar.e(teachTypeData);
                    this.i = bVar4;
                    bVar4.f6224h = 2;
                    bVar4.f6221e = teachTypeData;
                    bVar4.f6222f = bVar2;
                    bVar4.f6223g = list;
                }
            }
        }
    }

    public boolean h() {
        Iterator<b> it = this.b.values().iterator();
        while (it.hasNext()) {
            if (it.next().f6224h == 2) {
                return true;
            }
        }
        return false;
    }

    public boolean i() {
        Iterator<b> it = this.b.values().iterator();
        while (it.hasNext()) {
            int i = it.next().f6224h;
            if (i != 0 && i != 4) {
                return false;
            }
        }
        return true;
    }

    public void n(cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c cVar) {
        this.f6215e = cVar;
    }

    public void o(long j) {
        this.j = j;
    }

    public void q() {
        this.f6213a.set(true);
        this.f6214d.set(false);
    }

    public void r() {
        this.f6213a.set(false);
        this.f6214d.set(false);
    }

    public void s(NormalVariable normalVariable) {
        this.c.put(normalVariable, Boolean.TRUE);
    }
}
