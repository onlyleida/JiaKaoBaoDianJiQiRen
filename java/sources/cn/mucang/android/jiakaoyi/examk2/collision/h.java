package cn.mucang.android.jiakaoyi.examk2.collision;

import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.R;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.l;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<l, K2SuiDaoConfig> {
    public boolean A;
    public CarModel.Direction B;
    public Wheel C;
    private long D;
    public float E;
    public double F;
    private boolean G;
    protected boolean H;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public double y;
    public Boolean z;

    public static class a {
        public a(double d2, double d3) {
        }
    }

    public h(List<l> list, K2SuiDaoConfig k2SuiDaoConfig) {
        super(list, k2SuiDaoConfig);
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = 0.0d;
        this.z = null;
        this.C = Wheel.None;
        this.D = 0L;
        this.E = BitmapDescriptorFactory.HUE_RED;
        this.F = 0.0d;
        this.G = false;
        this.H = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void H(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (!this.H) {
            x(true);
            return;
        }
        if (this.D == 0 && eVar.d().F.isForward()) {
            this.D = SystemClock.elapsedRealtime();
        }
        if (SystemClock.elapsedRealtime() - this.D >= ((Integer) ((K2SuiDaoConfig) this.f3693d).p412110.value).intValue() * 1000) {
            x(true);
        }
    }

    private void J(CarPos carPos, l lVar) {
        boolean zG = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, lVar.i);
        this.u = zG;
        if (zG) {
            this.m = lVar.w;
            return;
        }
        boolean zG2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, lVar.k);
        this.u = zG2;
        if (zG2) {
            this.m = lVar.y;
            return;
        }
        boolean zG3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, lVar.j);
        this.u = zG3;
        if (zG3) {
            this.m = lVar.x;
        }
    }

    private void K(CarPos carPos, l lVar) {
        Wheel wheelT = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, lVar.i);
        this.C = wheelT;
        Wheel wheel = Wheel.None;
        if (wheelT != wheel) {
            this.l = lVar.w;
            return;
        }
        Wheel wheelT2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, lVar.k);
        this.C = wheelT2;
        if (wheelT2 != wheel) {
            this.l = lVar.y;
            return;
        }
        List<Pos> list = lVar.j;
        if (list != null) {
            Wheel wheelT3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, list);
            this.C = wheelT3;
            if (wheelT3 != wheel) {
                this.l = lVar.x;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, l lVar) {
        Line line = lVar.n;
        return line != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:79:0x0211  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, l lVar, ExamProcessor examProcessor) {
        boolean z = false;
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
            double d2 = lVar.r;
            double dDistanceTo = 0.0d;
            if (d2 != 0.0d) {
                this.F = d2;
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
                this.F = Double.parseDouble(FormatUtils.a(((float) (dDistanceTo + posMiddle.distanceTo(lVar.m.middle()))) / 100.0f));
            } else {
                Pos posI = cn.mucang.android.jiakaoyi.hpmap.d.a.i(lVar.l, lVar.m);
                this.F = Double.parseDouble(FormatUtils.a(((float) (((((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) Math.toDegrees(lVar.l.middle().vectorTo(posI).vectorAngle(lVar.m.middle().vectorTo(posI))))) * 3.141592653589793d) * lVar.l.middle().distanceTo(posI)) / 180.0d)) / 100.0f));
            }
        }
        if (this.r == SubStep.Step1) {
            this.t = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lVar.m);
            boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lVar.l);
            this.s = zB;
            if (zB && this.E == BitmapDescriptorFactory.HUE_RED) {
                this.E = eVar.d().B;
                if (MucangConfig.v()) {
                    LiveBus.d(a.class).l(new a(this.F, this.E));
                }
            }
            J(carPos, lVar);
            K(carPos, lVar);
            if (!this.x && this.s) {
                this.x = true;
            }
            if (this.x && !this.w) {
                if (((Integer) ((K2SuiDaoConfig) this.f3693d).p412119.value).intValue() == 0) {
                    this.w = true;
                } else {
                    double dIntValue = ((Integer) ((K2SuiDaoConfig) this.f3693d).p412119.value).intValue() * 100;
                    Pos pos = carPos.carRect.b;
                    Line line = lVar.l;
                    double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, line.start, line.end);
                    Pos pos2 = carPos.carRect.c;
                    Line line2 = lVar.l;
                    double dK2 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos2, line2.start, line2.end);
                    if (dK >= dIntValue || dK2 >= dIntValue) {
                        this.w = true;
                    }
                }
            }
            if (this.w && eVar.d().F.isForward() && this.z == null) {
                this.z = Boolean.valueOf(eVar.d().j(Light.FarLight) || eVar.d().j(Light.NearLight));
            }
            this.y = cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, lVar.m);
            if (cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(eVar.getCurrentPosition().f5282h)) {
                List<Pos> list = lVar.j;
                if (list != null && !this.v && cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, list) == Wheel.RightFront) {
                    this.v = true;
                }
                if (this.s || this.u) {
                    this.A = false;
                    this.B = eVar.d().F;
                }
                if (this.t && !this.A) {
                    this.A = true;
                    this.B = eVar.d().F;
                }
                if (eVar.d().F.isForward() && this.y <= ((Integer) ((K2SuiDaoConfig) this.f3693d).p412116.value).intValue() * 100) {
                    z = true;
                }
            } else if (this.E != BitmapDescriptorFactory.HUE_RED && this.F - ((double) (eVar.d().B - this.E)) <= ((Integer) ((K2SuiDaoConfig) this.f3693d).p412116.value).intValue()) {
                z = true;
            }
            if (((Boolean) ((K2SuiDaoConfig) this.f3693d).p412115.value).booleanValue() && z && !this.G) {
                this.G = true;
                B(k0.a(R.string.exit_suidao), TtsGrade.ExamTip);
            }
            if (((Integer) ((K2SuiDaoConfig) this.f3693d).p412118.value).intValue() == 2 && ((Integer) ((K2SuiDaoConfig) this.f3693d).p412110.value).intValue() > 0) {
                this.H = true;
            }
            if (cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(eVar.getCurrentPosition().f5282h)) {
                if (((Integer) ((K2SuiDaoConfig) this.f3693d).p412118.value).intValue() == 1) {
                    if (this.t) {
                        H(eVar);
                        return;
                    }
                    return;
                } else {
                    if (lVar.v(carPos)) {
                        H(eVar);
                        return;
                    }
                    return;
                }
            }
            if (((Integer) ((K2SuiDaoConfig) this.f3693d).p412118.value).intValue() == 1) {
                if (this.E == BitmapDescriptorFactory.HUE_RED || eVar.d().B - this.E < this.F) {
                    return;
                }
                H(eVar);
                return;
            }
            if (this.E == BitmapDescriptorFactory.HUE_RED || ((double) (eVar.d().B - this.E)) - 4.5d < this.F) {
                return;
            }
            H(eVar);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean c() {
        return !this.H;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return bVar.l() != null && super.d(eVar, carPos, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
    }
}
