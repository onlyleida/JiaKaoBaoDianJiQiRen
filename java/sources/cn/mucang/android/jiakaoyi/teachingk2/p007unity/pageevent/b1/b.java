package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.b1;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.l0;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.d0.h;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;

/* JADX INFO: loaded from: classes4.dex */
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f8569a = null;

    private boolean g() {
        if (TeachConfig.d() && l0.a() == 10) {
            return !TeachConfig.a().getBrake();
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void b(TeachTypeData teachTypeData, e eVar) {
        if (g()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("触发刹车：");
        sb.append(teachTypeData.desc);
        sb.append(" , ");
        sb.append(teachTypeData.normal.key);
        sb.append(",");
        sb.append(TeachConfig.d());
        sb.append(",");
        sb.append(l0.a() == 10);
        sb.append(",");
        sb.append(TeachConfig.a().getBrake());
        f.o(sb.toString());
        this.f8569a.h(eVar);
    }

    public void c() {
        this.f8569a = null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public boolean d(TeachTypeData teachTypeData, e eVar) {
        h hVar = this.f8569a;
        if (hVar == null) {
            boolean z = eVar.d().F == CarModel.Direction.Stop;
            if (z) {
                f.o("触发停车:" + teachTypeData.desc + " , " + teachTypeData.normal.key);
            }
            return z;
        }
        hVar.h(eVar);
        boolean zA = this.f8569a.a();
        if (zA) {
            f.o("触发停车:" + teachTypeData.desc + " , " + teachTypeData.normal.key);
        }
        return zA;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void e(TeachTypeData teachTypeData) {
        f.o("等待解刹：" + teachTypeData.desc + " , " + teachTypeData.normal.key);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void f(TeachTypeData teachTypeData) {
        f.o("刹车完成：" + teachTypeData.desc + " , " + teachTypeData.normal.key);
        this.f8569a = null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void h(TeachTypeData teachTypeData, e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (teachTypeData.normal == null || g() || teachTypeData.normal.key != d.a().e()) {
            return;
        }
        h hVar = this.f8569a;
        if (hVar != null && !hVar.c()) {
            this.f8569a.h(eVar);
            return;
        }
        h hVar2 = this.f8569a;
        if (hVar2 == null || hVar2.l != teachTypeData.normal.key) {
            NormalVariable normalVariable = teachTypeData.normal;
            NormalVariable normalVariable2 = new NormalVariable();
            cn.mucang.android.jiakaoyi.signal.utils.b bVarG = bVar.g();
            normalVariable2.posOnLine = bVarG.c(normalVariable.posOnLine);
            normalVariable2.forwardPoint = bVarG.c(normalVariable.forwardPoint);
            normalVariable2.p1 = bVarG.c(normalVariable.p1);
            normalVariable2.p2 = bVarG.c(normalVariable.p2);
            normalVariable2.width = normalVariable.width;
            normalVariable2.key = normalVariable.key;
            normalVariable2.reportKey = normalVariable.reportKey;
            normalVariable2.direCarDot = normalVariable.direCarDot;
            normalVariable2.isRange = normalVariable.isRange;
            h hVar3 = new h(normalVariable2);
            this.f8569a = hVar3;
            hVar3.l = normalVariable.key;
            f.o("创建停车点:" + normalVariable2.posOnLine + " , " + normalVariable2.key);
        }
        this.f8569a.h(eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public boolean j(TeachTypeData teachTypeData, e eVar) {
        h hVar = this.f8569a;
        if (hVar != null) {
            hVar.h(eVar);
        }
        boolean z = eVar.d().G.safeBoardBrakeState != CarBrakeState.STATE_BRAKE;
        if (z) {
            BrakeGlobalMonitor.r(BrakeModel.getBrakeNone());
        }
        return z;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void k(TeachTypeData teachTypeData, e eVar) {
        f.o("触发解刹：" + teachTypeData.desc + " , " + teachTypeData.normal.key);
        h hVar = this.f8569a;
        if (hVar == null) {
            u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.b1.a
                @Override // java.lang.Runnable
                public final void run() {
                    SafeCommandAdapter.f((byte) 1);
                }
            });
        } else {
            hVar.e();
            this.f8569a.h(eVar);
        }
    }
}
