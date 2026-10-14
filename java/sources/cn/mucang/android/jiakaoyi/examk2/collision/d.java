package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f, K2ShiHuaLuMianConfig> {
    public Wheel A;
    private cn.mucang.android.jiakaoyi.engine.g.b B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean s;
    public boolean t;
    public double u;
    public boolean v;
    private boolean w;
    private float x;
    public boolean y;
    public boolean z;

    public d(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f> list, K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig) {
        super(list, k2ShiHuaLuMianConfig);
        this.s = false;
        this.t = false;
        this.u = 0.0d;
        this.v = false;
        this.w = false;
        this.x = BitmapDescriptorFactory.HUE_RED;
        this.z = false;
        this.A = Wheel.None;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void H(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (!this.C) {
            this.C = eVar.d().n;
        }
        if (!this.D) {
            this.D = eVar.d().j(Light.WarningLight);
        }
        if (!this.E) {
            this.E = eVar.d().j(Light.FrontFogLight) || eVar.d().j(Light.RearFogLight);
        }
        if (!this.F) {
            if (((Boolean) ((K2ShiHuaLuMianConfig) this.f3693d).p411116.value).booleanValue()) {
                this.F = eVar.d().j(Light.NearLight) || eVar.d().j(Light.FarLight);
            } else {
                this.F = eVar.d().j(Light.NearLight);
            }
        }
        if (this.G) {
            return;
        }
        this.G = eVar.d().j(Light.WidthLight);
    }

    private void J(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.f fVar) {
        boolean zG = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, fVar.i);
        this.y = zG;
        if (zG) {
            this.m = fVar.s;
            return;
        }
        boolean zG2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, fVar.k);
        this.y = zG2;
        if (zG2) {
            this.m = fVar.u;
            return;
        }
        boolean zG3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, fVar.j);
        this.y = zG3;
        if (zG3) {
            this.m = fVar.t;
        }
    }

    private void K(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.f fVar) {
        Wheel wheelT = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, fVar.i);
        this.A = wheelT;
        Wheel wheel = Wheel.None;
        if (wheelT != wheel) {
            this.l = fVar.s;
            return;
        }
        Wheel wheelT2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, fVar.k);
        this.A = wheelT2;
        if (wheelT2 != wheel) {
            this.l = fVar.u;
            return;
        }
        List<Pos> list = fVar.j;
        if (list != null) {
            Wheel wheelT3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, list);
            this.A = wheelT3;
            if (wheelT3 != wheel) {
                this.l = fVar.t;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.f fVar) {
        Line line = fVar.n;
        return line != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.f fVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        J(carPos, fVar);
        K(carPos, fVar);
        if (this.r == SubStep.Step1) {
            this.t = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, fVar.l);
            this.u = cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, fVar.m);
            if (((Integer) ((K2ShiHuaLuMianConfig) this.f3693d).p411121.value).intValue() <= 0 || this.z) {
                if (eVar.d().f5269g) {
                    this.s = true;
                }
                if (!this.z && this.t && eVar.d().F.isForward()) {
                    this.z = true;
                    H(eVar);
                }
            } else {
                float f2 = eVar.d().B;
                if (this.x == BitmapDescriptorFactory.HUE_RED) {
                    this.x = f2;
                }
                if (f2 - this.x < ((Integer) ((K2ShiHuaLuMianConfig) this.f3693d).p411121.value).intValue()) {
                    if (eVar.d().f5269g) {
                        this.s = true;
                    }
                    H(eVar);
                } else {
                    this.z = true;
                }
            }
            if (s()) {
                if (!this.v) {
                    this.v = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, fVar.m);
                }
                boolean zB = false;
                if (((Integer) ((K2ShiHuaLuMianConfig) this.f3693d).p411117.value).intValue() == 0) {
                    zB = fVar.v(carPos);
                } else if (((Integer) ((K2ShiHuaLuMianConfig) this.f3693d).p411117.value).intValue() == 1) {
                    int iIntValue = ((Integer) ((K2ShiHuaLuMianConfig) this.f3693d).p411118.value).intValue();
                    if (iIntValue <= 0) {
                        zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, fVar.m);
                    } else if (this.v) {
                        Pos pos = carPos.carRect.b;
                        Line line = fVar.m;
                        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, line.start, line.end);
                        Pos pos2 = carPos.carRect.c;
                        Line line2 = fVar.m;
                        double dK2 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos2, line2.start, line2.end);
                        double d2 = iIntValue;
                        if (dK >= d2 || dK2 >= d2) {
                            zB = true;
                        }
                    }
                } else if (((Integer) ((K2ShiHuaLuMianConfig) this.f3693d).p411117.value).intValue() == 2 && this.v) {
                    this.w = true;
                    Pos pos3 = carPos.carRect.f5820a;
                    Line line3 = fVar.m;
                    double dK3 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos3, line3.start, line3.end);
                    Pos pos4 = carPos.carRect.f5821d;
                    Line line4 = fVar.m;
                    double dK4 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos4, line4.start, line4.end);
                    if (fVar.v(carPos) && dK3 > 0.0d && dK4 > 0.0d) {
                        if (this.B == null) {
                            cn.mucang.android.jiakaoyi.engine.g.b bVar = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) ((K2ShiHuaLuMianConfig) this.f3693d).p411109.value).intValue() * 1000);
                            this.B = bVar;
                            bVar.g();
                        }
                        if (this.B.d()) {
                            this.B.b();
                            this.B = null;
                            zB = true;
                        }
                    }
                }
                if (zB) {
                    this.b = true;
                    if (((Integer) ((K2ShiHuaLuMianConfig) this.f3693d).p411117.value).intValue() == 0) {
                        this.c = this.v;
                    } else {
                        this.c = true;
                    }
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean c() {
        return !this.w;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return bVar.l() != null && super.d(eVar, carPos, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.A = Wheel.None;
        this.y = false;
        this.r = SubStep.None;
    }
}
