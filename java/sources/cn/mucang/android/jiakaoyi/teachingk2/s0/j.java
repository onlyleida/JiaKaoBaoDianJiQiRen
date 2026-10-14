package cn.mucang.android.jiakaoyi.teachingk2.s0;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class j extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.l, SimpleTeachingConfig> {
    public boolean s;
    public Wheel t;
    public boolean u;
    public double v;
    public float w;
    public double x;
    public boolean y;

    public j(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.l> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.l> cVar) {
        this(list, cVar, false);
    }

    private void H(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.l lVar) {
        boolean zG = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, lVar.i);
        this.s = zG;
        if (zG) {
            this.m = lVar.w;
            return;
        }
        boolean zG2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, lVar.k);
        this.s = zG2;
        if (zG2) {
            this.m = lVar.y;
            return;
        }
        boolean zG3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, lVar.j);
        this.s = zG3;
        if (zG3) {
            this.m = lVar.x;
        }
    }

    private void I() {
        this.b = true;
        this.c = true;
        if (this.j) {
            return;
        }
        w.O();
    }

    private void K(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.l lVar) {
        List<Pos> list;
        List<Pos> list2;
        List<Pos> list3 = lVar.i;
        if (list3 != null) {
            Wheel wheelT = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, list3);
            this.t = wheelT;
            if (wheelT != Wheel.None) {
                this.l = lVar.w;
            }
        }
        Wheel wheel = this.t;
        Wheel wheel2 = Wheel.None;
        if (wheel == wheel2 && (list2 = lVar.j) != null) {
            Wheel wheelT2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, list2);
            this.t = wheelT2;
            if (wheelT2 != wheel2) {
                this.l = lVar.x;
            }
        }
        if (this.t != wheel2 || (list = lVar.k) == null) {
            return;
        }
        Wheel wheelT3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, list);
        this.t = wheelT3;
        if (wheelT3 != wheel2) {
            this.l = lVar.y;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.l lVar) {
        Line lineL = lVar.l();
        if (lVar.l() == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, lVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.l lVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
            double d2 = lVar.r;
            double dDistanceTo = 0.0d;
            if (d2 != 0.0d) {
                this.x = d2;
            } else if (cn.mucang.android.core.utils.g.d(lVar.i) && cn.mucang.android.core.utils.g.d(lVar.k)) {
                int iMin = Math.min(lVar.i.size(), lVar.k.size());
                Pos posMiddle = lVar.l.middle();
                int i = 0;
                while (i < iMin) {
                    Pos posMeanWith = new Pos(lVar.i.get(i)).meanWith(lVar.k.get(i));
                    dDistanceTo += posMiddle.distanceTo(posMeanWith);
                    i++;
                    posMiddle = posMeanWith;
                }
                this.x = Double.parseDouble(FormatUtils.a(((float) (dDistanceTo + posMiddle.distanceTo(lVar.m.middle()))) / 100.0f));
            } else {
                Pos posI = cn.mucang.android.jiakaoyi.hpmap.d.a.i(lVar.l, lVar.m);
                this.x = Double.parseDouble(FormatUtils.a(((float) (((((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) Math.toDegrees(lVar.l.middle().vectorTo(posI).vectorAngle(lVar.m.middle().vectorTo(posI))))) * 3.141592653589793d) * lVar.l.middle().distanceTo(posI)) / 180.0d)) / 100.0f));
            }
        }
        H(carPos, lVar);
        K(carPos, lVar);
        if (this.r == SubStep.Step1) {
            if (!this.y) {
                this.y = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lVar.m);
            }
            if (!this.u) {
                boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lVar.l);
                this.u = zB;
                if (zB && this.w == BitmapDescriptorFactory.HUE_RED) {
                    this.w = eVar.d().B;
                }
            }
            this.v = cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, lVar.m);
            if (this.w != BitmapDescriptorFactory.HUE_RED && eVar.getCurrentPosition().f5282h != 4 && eVar.d().B - this.w >= this.x) {
                I();
            } else if (eVar.getCurrentPosition().f5282h == 4) {
                if (lVar.v(carPos) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, lVar.m)) {
                    I();
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return bVar.l() != null && super.d(eVar, carPos, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.t = Wheel.None;
        this.s = false;
        this.r = SubStep.None;
    }

    public j(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.l> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.l> cVar, boolean z) {
        super(list, null, cVar, z);
        this.t = Wheel.None;
        this.u = false;
        this.v = 0.0d;
        this.w = BitmapDescriptorFactory.HUE_RED;
        this.x = 0.0d;
        this.y = false;
    }
}
