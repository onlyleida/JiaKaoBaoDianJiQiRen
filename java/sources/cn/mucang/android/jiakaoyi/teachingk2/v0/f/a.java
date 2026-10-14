package cn.mucang.android.jiakaoyi.teachingk2.v0.f;

import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;

/* JADX INFO: loaded from: classes4.dex */
public class a<T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> implements cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8703e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Pos f8701a = new Pos();
    private final Pos c = new Pos();
    private final Pos b = new Pos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8702d = true;

    private void g(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        CarPos carPosC = eVar.c();
        Pos posMiddle = cVar.m.middle();
        Pos posMiddle2 = cVar.k.middle();
        double dDistanceTo = posMiddle2.distanceTo(posMiddle);
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPosC.carRect;
        Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posMiddle, posMiddle2, ((dDistanceTo - cVar2.f5820a.distanceTo(cVar2.b)) * 0.5d) + carPosC.rearAxlePoint.distanceTo(new Pos(carPosC.carRect.f5820a).meanWith(carPosC.carRect.f5821d)));
        this.f8701a.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posMiddle, posT, 60.0d));
        this.b.setPos(posMiddle2.vectorTo(posT));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public boolean a(FirstPracticeStep firstPracticeStep, SubStep subStep, int i, cn.mucang.android.jiakaoyi.signal.c.e eVar, T t) {
        if (!(t instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c)) {
            return false;
        }
        if (this.f8702d) {
            this.f8702d = false;
            this.f8703e = false;
            g(eVar, (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) t);
        }
        if (this.f8703e && eVar.d().c > 0.2d) {
            this.f8703e = false;
        }
        if (!(this.b.dot(this.f8701a.vectorTo(eVar.c().rearAxlePoint, this.c)) > 0.0d)) {
            return false;
        }
        Gear gear = eVar.d().m;
        if (eVar.d().d()) {
            this.f8703e = true;
            return false;
        }
        if (this.f8703e) {
            if (gear.isFront()) {
                return true;
            }
        } else if (gear == Gear.GearN || gear.isFront()) {
            return true;
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean b(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.d(this, i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean c(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.a(this, i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public void clear() {
        this.f8702d = true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean d(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.c(this, i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean e(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.e(this, i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean f(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.b(this, i);
    }
}
