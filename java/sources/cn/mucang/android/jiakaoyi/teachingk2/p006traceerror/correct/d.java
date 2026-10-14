package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.i;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f8063a;
    private cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pos f8064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f8065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i f8066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private i f8067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Reference<cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a> f8068h;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8069a;

        static {
            int[] iArr = new int[CorrectState.values().length];
            f8069a = iArr;
            try {
                iArr[CorrectState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8069a[CorrectState.TipError.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8069a[CorrectState.ToTarget.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8069a[CorrectState.Deviate.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f8070a = new d(null);
    }

    /* synthetic */ d(a aVar) {
        this();
    }

    private void a(e eVar, cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar) {
        if (cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.e.b.a(eVar, bVar)) {
            this.c = eVar.d().L;
            q(bVar);
        }
    }

    private void e(cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar) {
        f.o("完成规划轨迹的行驶");
        bVar.e(CorrectState.Finish);
        q(null);
        m();
    }

    public static d g() {
        return b.f8070a;
    }

    private cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a h() {
        synchronized (this) {
            Reference<cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a> reference = this.f8068h;
            if (reference == null) {
                return null;
            }
            return reference.get();
        }
    }

    private void m() {
        final cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a aVarH = h();
        if (aVarH == null) {
            return;
        }
        aVarH.getClass();
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.traceerror.correct.c
            @Override // java.lang.Runnable
            public final void run() {
                aVarH.onFinish();
            }
        });
    }

    private void n(final cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar) {
        final cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a aVarH = h();
        if (aVarH == null) {
            return;
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.traceerror.correct.a
            @Override // java.lang.Runnable
            public final void run() {
                aVarH.b(bVar);
            }
        });
    }

    private void o() {
        i iVar = this.f8065e;
        if (iVar != null) {
            iVar.a();
        }
        this.f8066f.a();
        i iVar2 = this.f8067g;
        if (iVar2 != null) {
            iVar2.a();
        }
        this.f8065e = null;
        this.f8067g = null;
    }

    private void q(cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar) {
        synchronized (this) {
            this.b = bVar;
            if (bVar != null) {
                this.f8063a.set(true);
                n(bVar);
            } else {
                this.f8063a.set(false);
                o();
            }
        }
    }

    private void s(final cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a aVar) {
        final cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a aVarH = h();
        if (aVarH == null) {
            return;
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.traceerror.correct.b
            @Override // java.lang.Runnable
            public final void run() {
                aVarH.a(aVar);
            }
        });
    }

    private void t(boolean z) {
        String strA;
        if (z) {
            strA = cn.mucang.android.jiakaoyi.signal.utils.f.c() ? k0.a(R.string.teachingk2_hard_back_gear_1_reset) : k0.a(R.string.teachingk2_hard_back_gear_d_reset);
        } else {
            strA = k0.a(R.string.teachingk2_loc_incorrect_gear_r_reset);
        }
        TtsManager.f3517a.K();
        TtsManager.z(strA, TtsGrade.GlobalError);
    }

    private void u(cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a aVar) {
        aVar.b(true);
        f.o("触发轨迹纠正点:" + aVar.b);
        s(aVar);
    }

    private boolean v(CarPos carPos, cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a aVar) {
        if (!aVar.f8078d) {
            return false;
        }
        Pos pos = carPos.rearAxlePoint;
        NormalVariable normalVariable = aVar.f8077a;
        return cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, normalVariable.posOnLine, normalVariable.forwardPoint) < 20.0d && Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (carPos.degree - aVar.f8080f))) < 15.0f;
    }

    public void b(Step step, int i, Pos pos, double d2, e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (!f()) {
            q(null);
            return;
        }
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar2 = this.b;
        if (bVar2 != null) {
            if (bVar2.b() == CorrectState.TipError && eVar.d().L - this.c > 500 && bVar2.c.distanceSquare(eVar.c().rearAxlePoint) > 2500.0d && bVar2.f8083d == step && bVar2.f8082a == bVar) {
                if (bVar2.b == i || i == SubStep.None.ordinal()) {
                    a(eVar, bVar2);
                    return;
                }
                return;
            }
            return;
        }
        if (pos != null) {
            Gear gear = cn.mucang.android.jiakaoyi.signal.utils.f.c() ? Gear.Gear1 : Gear.GearD;
            if (bVar instanceof c) {
                if (i != 1 && i != 3 && i != 5) {
                    gear = Gear.GearBack;
                }
            } else {
                if (!(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b)) {
                    return;
                }
                if (i != 1 && i != 3) {
                    gear = Gear.GearBack;
                }
            }
            cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar3 = new cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b(bVar, i, step, pos, d2, gear);
            bVar3.e(CorrectState.TipError);
            a(eVar, bVar3);
        }
    }

    public void c() {
        synchronized (this) {
            m();
            this.b = null;
            this.f8063a.set(false);
            o();
        }
    }

    public void d() {
        synchronized (this) {
            m();
            this.f8068h = null;
            this.b = null;
            this.f8063a.set(false);
            o();
        }
    }

    public boolean f() {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a aVarH = h();
        if (aVarH == null) {
            return false;
        }
        return aVarH.enable();
    }

    public void i(e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, Step step, int i) {
        if (!f()) {
            q(null);
            return;
        }
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar2 = this.b;
        if (bVar2 != null && bVar2.b() != CorrectState.Finish && bVar == bVar2.f8082a && step == bVar2.f8083d && i == bVar2.b) {
            List<cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a> listC = bVar2.c();
            if (!g.b(listC) && eVar.d().h() && eVar.getCurrentPosition().c()) {
                CarPos carPosC = eVar.c();
                if (carPosC.lastRearAxlePoint == null) {
                    return;
                }
                int i2 = a.f8069a[bVar2.b().ordinal()];
                if (i2 == 2) {
                    if ((eVar.d().m.isBack() && bVar2.f8086g.isFront()) || (eVar.d().m.isFront() && bVar2.f8086g.isBack())) {
                        bVar2.e(CorrectState.ToTarget);
                        a(eVar, bVar2);
                        return;
                    }
                    b(step, i, null, 0.0d, eVar, bVar);
                    if (this.f8065e == null) {
                        this.f8065e = new i(10000L);
                        t(bVar2.f8086g.isBack());
                    }
                    if (this.f8065e.c(eVar.d().L)) {
                        this.f8065e.a();
                        t(bVar2.f8086g.isBack());
                        return;
                    }
                    return;
                }
                if (i2 != 3) {
                    return;
                }
                Pos pos = carPosC.rearAxlePoint;
                double d2 = pos.x;
                Pos pos2 = carPosC.lastRearAxlePoint;
                this.f8064d.setPos(pos).translate((d2 - pos2.x) * 6.0d, (pos.y - pos2.y) * 6.0d);
                for (int i3 = 0; i3 < listC.size(); i3++) {
                    cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a aVar = listC.get(i3);
                    if (!aVar.a()) {
                        Pos pos3 = carPosC.rearAxlePoint;
                        Pos pos4 = this.f8064d;
                        NormalVariable normalVariable = aVar.f8077a;
                        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos3, pos4, normalVariable.p1, normalVariable.p2) || carPosC.rearAxlePoint.distanceSquare(aVar.f8077a.posOnLine) < 100.0d || v(carPosC, aVar)) {
                            if (i3 == listC.size() - 1 && aVar.f8081g) {
                                Pos pos5 = carPosC.rearAxlePoint;
                                NormalVariable normalVariable2 = aVar.f8077a;
                                double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos5, normalVariable2.posOnLine, normalVariable2.forwardPoint);
                                double dAbs = Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (carPosC.degree - aVar.f8080f)));
                                if (dK >= 25.0d || dAbs > 5.0d) {
                                    TtsManager.z(k0.a(R.string.teachingk2_skewing_drive_red_area), TtsGrade.GlobalError);
                                } else {
                                    u(aVar);
                                }
                            } else {
                                u(aVar);
                            }
                        }
                    }
                }
                if (listC.get(listC.size() - 1).a()) {
                    if (eVar.d().m == bVar2.f8086g) {
                        e(bVar2);
                        return;
                    } else {
                        if (this.f8066f.c(eVar.d().L)) {
                            this.f8066f.a();
                            TtsManager.z(String.format(k0.a(R.string.teachingk2_please_gear), bVar2.f8086g.gearName), TtsGrade.TeachError);
                            return;
                        }
                        return;
                    }
                }
                if (this.f8067g == null) {
                    this.f8067g = new i(10000L);
                    TtsManager.z(k0.a(R.string.teachingk2_drive_car_red_area), TtsGrade.TeachError);
                }
                if (this.f8067g.c(eVar.d().L)) {
                    this.f8067g.a();
                    TtsManager.z(k0.a(R.string.teachingk2_drive_car_red_area), TtsGrade.TeachError);
                }
            }
        }
    }

    public boolean j() {
        return this.f8063a.get();
    }

    public void p(cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.f.a aVar) {
        synchronized (this) {
            try {
                if (aVar == null) {
                    this.f8068h = null;
                } else {
                    this.f8068h = new WeakReference(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int r() {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar = this.b;
        if (bVar == null) {
            return -1;
        }
        return bVar.b;
    }

    private d() {
        this.f8063a = new AtomicBoolean(false);
        this.b = null;
        this.c = 0L;
        this.f8065e = null;
        this.f8068h = null;
        this.f8064d = new Pos();
        this.f8066f = new i(4000L);
    }
}
