package cn.mucang.android.jiakaoyi.teachingk2.s0;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.n;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class k extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<n, SimpleTeachingConfig> {
    private int s;
    private int t;
    private boolean u;
    private boolean v;
    private boolean w;
    public boolean x;
    public boolean y;
    public Wheel z;

    public k(List<n> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<n> cVar) {
        this(list, cVar, false);
    }

    private void I(CarPos carPos, n nVar) {
        boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.j);
        this.y = zB;
        if (zB) {
            this.m = nVar.j;
            return;
        }
        boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.k);
        this.y = zB2;
        if (zB2) {
            this.m = nVar.k;
            return;
        }
        boolean zB3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.l);
        this.y = zB3;
        if (zB3) {
            this.m = nVar.l;
        }
    }

    private void J(CarPos carPos, n nVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, nVar.j);
        this.z = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = nVar.j;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, nVar.k);
        this.z = wheelR2;
        if (wheelR2 != wheel) {
            this.l = nVar.j;
            return;
        }
        Wheel wheelR3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, nVar.l);
        this.z = wheelR3;
        if (wheelR3 != wheel) {
            this.l = nVar.l;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, n nVar) {
        Line lineL = nVar.l();
        if (lineL == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, nVar) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, nVar.i.middle().meanWith(nVar.k.middle()));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, n nVar, ExamProcessor examProcessor) {
        int i;
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        I(carPos, nVar);
        J(carPos, nVar);
        boolean zV = nVar.v(carPos);
        if (!zV && this.t > 0) {
            this.w = eVar.d().F.isForward() && eVar.d().m != Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, nVar.i);
        }
        if (zV) {
            this.b = true;
            this.c = this.w;
        }
        if (!this.j && eVar.d().F.isBack()) {
            w.O();
        }
        if (this.v && eVar.d().m == Gear.GearBack && eVar.d().F.isBack()) {
            int i2 = this.t + 1;
            this.t = i2;
            if (i2 == 3 && (i = this.s) == 2) {
                this.s = i + 1;
            }
            this.u = true;
            this.v = false;
        } else if (this.u && this.t > 0 && eVar.d().m.isValid() && eVar.d().m != Gear.GearBack && eVar.d().m != Gear.GearN && eVar.d().m != Gear.GearP && eVar.d().F.isForward()) {
            this.s++;
            this.u = false;
            this.v = true;
        }
        if (this.t > 3 || this.s > 2) {
            this.x = true;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, bVar.f().middle().meanWith(((n) bVar).k.middle()));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.r = SubStep.None;
    }

    public k(List<n> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<n> cVar, boolean z) {
        super(list, null, cVar, z);
        this.s = 0;
        this.t = 0;
        this.u = true;
        this.v = true;
        this.w = false;
        this.x = false;
        this.z = Wheel.None;
    }
}
