package cn.mucang.android.jiakaoyi.examk2.collision;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class b extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b, K2CeFangTingCheConfig> {
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public Wheel E;
    public Wheel F;
    public Wheel G;
    public Wheel H;
    public Wheel I;
    public Wheel J;
    private Pos K;
    private cn.mucang.android.jiakaoyi.signal.pos.c L;
    private cn.mucang.android.jiakaoyi.signal.pos.c M;
    public Line N;
    private cn.mucang.android.jiakaoyi.signal.pos.c O;
    private boolean P;
    private cn.mucang.android.jiakaoyi.engine.g.b Q;
    public boolean R;
    private cn.mucang.android.jiakaoyi.engine.g.b S;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public Boolean Z;
    public boolean a0;
    private long b0;
    private boolean c0;
    public boolean d0;
    private boolean e0;
    private boolean f0;
    private boolean g0;
    private boolean h0;
    private boolean i0;
    public boolean j0;
    public boolean k0;
    public Set<Wheel> l0;
    private boolean m0;
    private boolean n0;
    public long o0;
    private final cn.mucang.android.jiakaoyi.signal.utils.c p0;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public Wheel w;
    public Wheel x;
    public Wheel y;
    public boolean z;

    /* JADX WARN: Multi-variable type inference failed */
    public b(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> list, K2CeFangTingCheConfig k2CeFangTingCheConfig) {
        super(list, k2CeFangTingCheConfig);
        this.J = Wheel.None;
        this.P = false;
        this.Q = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406108.value).intValue() * 1000);
        this.R = false;
        this.S = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406108.value).intValue() * 1000);
        this.X = true;
        this.Y = false;
        this.Z = null;
        this.d0 = false;
        this.e0 = false;
        this.f0 = false;
        this.g0 = false;
        this.h0 = false;
        this.i0 = false;
        this.j0 = false;
        this.k0 = true;
        this.l0 = new HashSet();
        this.m0 = false;
        this.n0 = false;
        this.o0 = 0L;
        this.p0 = new cn.mucang.android.jiakaoyi.signal.utils.c(3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void J(cn.mucang.android.jiakaoyi.signal.c.g.b.c cVar) {
        if (this.m0) {
            return;
        }
        if (cVar == null || !cVar.c) {
            this.a0 = true;
        } else {
            long j = cVar.f5252d;
            this.b0 = j;
            this.a0 = j < ((long) (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406127.value).intValue() * 1000));
        }
        this.m0 = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void L() {
        C c = this.f3693d;
        if (((K2CeFangTingCheConfig) c).p406103 == null || !((Boolean) ((K2CeFangTingCheConfig) c).p406103.value).booleanValue()) {
            return;
        }
        this.c0 = true;
        C c2 = this.f3693d;
        C((String) ((K2CeFangTingCheConfig) c2).p406102.value, TtsGrade.ExamTip, ((K2CeFangTingCheConfig) c2).p406102.ruleId, l.d(((K2CeFangTingCheConfig) c2).p406102.ruleId));
    }

    private void M(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.o);
        this.G = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.m);
        this.H = wheelR2;
        if (wheelR2 != wheel) {
            return;
        }
        this.I = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.p);
    }

    private void N(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.n);
        this.J = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = bVar.n;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.q);
        this.J = wheelR2;
        if (wheelR2 != wheel) {
            this.l = bVar.q;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean b(cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar, CarPos carPos) {
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.j)) {
            return true;
        }
        return super.b(bVar, carPos);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:8:0x0024  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public boolean e(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        boolean zA = false;
        if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406133.value).intValue() == 0) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.j) && eVar.d().F == CarModel.Direction.Stop) {
                zA = true;
            }
        } else if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406133.value).intValue() != 1) {
            if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406133.value).intValue() == 3) {
                zA = cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, bVar.i);
            } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, bVar.u) && eVar.d().m == Gear.GearBack && eVar.d().c()) {
                zA = true;
            }
        }
        this.c0 = zA;
        return zA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        if (((Boolean) ((K2CeFangTingCheConfig) this.f3693d).p406129.value).booleanValue() && bVar.h(carPos) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.j) && eVar.d().m == Gear.GearBack && eVar.d().c()) {
            return true;
        }
        return super.f(eVar, carPos, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:55:0x01f8  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar, ExamProcessor examProcessor) {
        Wheel wheelR;
        boolean zB;
        Boolean bool = Boolean.FALSE;
        if (this.r == SubStep.None) {
            y(SubStep.Step1);
            Pos pos = bVar.p.end;
            Line line = bVar.r;
            Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, line.start, line.end);
            this.K = posN;
            this.L = new cn.mucang.android.jiakaoyi.signal.pos.c(bVar.r.end, bVar.n.start, bVar.q.start, posN);
            Line line2 = bVar.o;
            Pos pos2 = line2.start;
            Pos pos3 = line2.end;
            Line line3 = bVar.p;
            this.M = new cn.mucang.android.jiakaoyi.signal.pos.c(pos2, pos3, line3.start, line3.end);
            new Line(bVar.q.middle(), new Pos(this.K).meanWith(bVar.r.start));
            Line line4 = new Line(bVar.q.start, this.K);
            this.N = line4;
            line4.middle();
            this.O = new cn.mucang.android.jiakaoyi.signal.pos.c(this.K, bVar.p.end, bVar.q.end, bVar.r.start);
        }
        if (!this.n0) {
            if ((((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406154.value).intValue() == 0 && eVar.d().m == Gear.GearBack && eVar.d().c()) || (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406154.value).intValue() == 1 && eVar.d().m == Gear.GearBack)) {
                this.n0 = true;
                this.o0 = SystemClock.elapsedRealtime();
                LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a.class).l(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a());
            }
        }
        this.U = cn.mucang.android.jiakaoyi.hpmap.a.b.a.p(carPos.carRect, this.L);
        this.V = cn.mucang.android.jiakaoyi.hpmap.a.b.a.p(carPos.carRect, this.O);
        this.W = cn.mucang.android.jiakaoyi.hpmap.a.b.a.p(carPos.carRect, this.M);
        this.u = cn.mucang.android.jiakaoyi.hpmap.a.b.c.c(this.M, carPos.wheelLeftBack) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.c(this.M, carPos.wheelLeftFront) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.c(this.M, carPos.wheelRightBack) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.c(this.M, carPos.wheelRightFront);
        this.C = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.o);
        this.s = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.m);
        this.t = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.p);
        this.z = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.r);
        this.B = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.q);
        this.A = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.n);
        this.D = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.j);
        this.v = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.k);
        this.w = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.l);
        this.x = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.k);
        this.E = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.r);
        this.F = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.q);
        this.y = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, bVar.j);
        M(carPos, bVar);
        if (!this.f0) {
            this.f0 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.RightBack, carPos, bVar.k);
        }
        if (!this.e0) {
            this.e0 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.LeftBack, carPos, bVar.k);
        }
        if (this.f0 && this.e0) {
            if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406136.value).intValue() == 0) {
                if (!this.g0) {
                    this.g0 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.RightFront, carPos, bVar.j);
                }
                if (!this.h0) {
                    this.h0 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.LeftFront, carPos, bVar.j);
                }
                if (this.g0 && this.h0) {
                    zB = true;
                } else {
                    zB = false;
                }
            } else if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406136.value).intValue() == 1) {
                if (!this.i0) {
                    this.i0 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.j);
                }
                zB = bVar.v(carPos);
            } else if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406136.value).intValue() == 2) {
                int iIntValue = ((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406119.value).intValue();
                if (iIntValue <= 0) {
                    zB = this.d0;
                } else {
                    if (this.r == SubStep.Step4 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.N)) {
                        Pos pos4 = carPos.carRect.b;
                        Line line5 = this.N;
                        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos4, line5.start, line5.end);
                        Pos pos5 = carPos.carRect.c;
                        Line line6 = this.N;
                        double dK2 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos5, line6.start, line6.end);
                        double d2 = iIntValue;
                        if (dK >= d2 || dK2 >= d2) {
                            zB = true;
                        }
                    }
                    zB = false;
                }
            } else {
                zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.j);
            }
            if (zB) {
                this.b = true;
                if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406136.value).intValue() == 1 || ((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406136.value).intValue() == 4) {
                    this.c = this.i0;
                } else {
                    this.c = true;
                }
            }
        }
        if (!this.X) {
            this.T = true;
        } else if (this.s || this.t || this.C) {
            this.T = false;
        } else {
            this.T = true;
        }
        N(carPos, bVar);
        if (!this.c0 && (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406133.value).intValue() == 1 || e(eVar, carPos, bVar))) {
            L();
        }
        if (!this.n0 && eVar.d().m == Gear.GearBack && eVar.d().c()) {
            this.n0 = true;
        }
        if (this.r == SubStep.Step1) {
            if (eVar.d().m == Gear.GearBack && eVar.d().c() && this.p0.a(eVar.d().F.isBack())) {
                Pos pos6 = carPos.wheelLeftBack;
                Pos pos7 = carPos.wheelLeftFront;
                Line line7 = bVar.j;
                boolean zC = cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos6, pos7, line7.start, line7.end);
                Pos pos8 = carPos.wheelRightBack;
                Pos pos9 = carPos.wheelRightFront;
                Line line8 = bVar.j;
                boolean zC2 = cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos8, pos9, line8.start, line8.end);
                Pos pos10 = carPos.wheelLeftFront;
                Line line9 = bVar.j;
                double dK3 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos10, line9.start, line9.end);
                Pos pos11 = carPos.wheelRightFront;
                Line line10 = bVar.j;
                double dK4 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos11, line10.start, line10.end);
                if (((Boolean) ((K2CeFangTingCheConfig) this.f3693d).p406140.value).booleanValue()) {
                    boolean z = dK3 >= ((double) ((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406141.value).intValue());
                    boolean z2 = dK4 >= ((double) ((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406141.value).intValue());
                    if (!z || !z2) {
                        this.k0 = false;
                    } else if (zC && zC2) {
                        this.k0 = true;
                    } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, bVar.j.middle())) {
                        this.k0 = false;
                    } else {
                        this.Y = true;
                    }
                } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, bVar.j.middle())) {
                    this.k0 = this.D && ((Math.abs(cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, bVar.j)) > ((double) ((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406142.value).intValue()) ? 1 : (Math.abs(cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, bVar.j)) == ((double) ((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406142.value).intValue()) ? 0 : -1)) >= 0);
                } else {
                    Pos pos12 = carPos.carRect.c;
                    Line line11 = bVar.j;
                    double dK5 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos12, line11.start, line11.end);
                    Pos pos13 = carPos.carRect.b;
                    Line line12 = bVar.j;
                    this.k0 = Math.max(dK5, cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos13, line12.start, line12.end)) >= ((double) ((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406142.value).intValue());
                }
                boolean zC3 = cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftFront, carPos.wheelLeftBack, bVar.q.end, bVar.r.start);
                boolean zC4 = cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelRightFront, carPos.wheelRightBack, bVar.q.end, bVar.r.start);
                if ((zC3 && zC4) || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, bVar.j.middle())) {
                    this.Y = true;
                }
                this.p0.b();
                y(SubStep.Step2);
            } else if (bVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step2) {
            if (!this.d0 && ((wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, this.N)) == Wheel.RightFront || wheelR == Wheel.RightBack)) {
                this.d0 = true;
            }
            if (this.Z == null) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.j)) {
                    boolean zV = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.LeftBack, carPos, bVar.j);
                    boolean zV2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.RightBack, carPos, bVar.j);
                    if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, bVar.j.middle()) || zV || zV2) {
                        this.Z = bool;
                    } else {
                        this.Z = Boolean.TRUE;
                    }
                } else {
                    this.Z = bool;
                }
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.M, carPos.wheelLeftFront)) {
                this.l0.add(Wheel.LeftFront);
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.M, carPos.wheelLeftBack)) {
                this.l0.add(Wheel.LeftBack);
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.M, carPos.wheelRightFront)) {
                this.l0.add(Wheel.RightFront);
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.M, carPos.wheelRightBack)) {
                this.l0.add(Wheel.RightBack);
            }
            if (eVar.d().F == CarModel.Direction.Back && this.l0.size() >= 2) {
                y(SubStep.Step3);
            } else if (bVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step3) {
            if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406108.value).intValue() == 0) {
                this.R = true;
                if (!this.P && ((Boolean) ((K2CeFangTingCheConfig) this.f3693d).p406109.value).booleanValue() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, bVar.v)) {
                    this.P = true;
                    C c = this.f3693d;
                    D((String) ((K2CeFangTingCheConfig) c).p406157.value, TtsGrade.ExamDeduct, null, ((K2CeFangTingCheConfig) c).p406157.ruleId, l.d(((K2CeFangTingCheConfig) c).p406157.ruleId));
                }
            } else {
                if (this.S.d()) {
                    this.R = true;
                    this.S.b();
                }
                if (this.Q.d()) {
                    if (!this.P) {
                        C c2 = this.f3693d;
                        D((String) ((K2CeFangTingCheConfig) c2).p406157.value, TtsGrade.ExamDeduct, null, ((K2CeFangTingCheConfig) c2).p406157.ruleId, l.d(((K2CeFangTingCheConfig) c2).p406157.ruleId));
                    }
                    this.Q.b();
                    this.P = true;
                }
                if (this.f3695f) {
                    this.S.g();
                    if (((Boolean) ((K2CeFangTingCheConfig) this.f3693d).p406109.value).booleanValue() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, bVar.v)) {
                        this.Q.g();
                    }
                } else {
                    this.S.b();
                    this.Q.b();
                }
            }
            if (this.f3695f && !eVar.d().f5268f) {
                this.j0 = true;
            }
            if (!this.f3695f && eVar.d().c() && eVar.d().m.isFront() && this.p0.a(eVar.d().F.isForward())) {
                y(SubStep.Step4);
                this.X = false;
                this.p0.b();
            } else if (bVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step4) {
            this.l0.clear();
            this.k0 = true;
            if (this.m0) {
                this.a0 = false;
            }
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(Light.TurnLeftLight);
            if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406150.value).intValue() == 1) {
                if (this.v) {
                    J(cVarC);
                }
            } else if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406150.value).intValue() != 2 || this.w == Wheel.LeftFront) {
                J(cVarC);
            }
            if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406135.value).intValue() != 0) {
                if (((Integer) ((K2CeFangTingCheConfig) this.f3693d).p406135.value).intValue() != 1 || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, bVar.v) || cVarC == null || !cVarC.c) {
                    return;
                }
                this.a0 = true;
                return;
            }
            Wheel wheel = this.y;
            if ((wheel == Wheel.LeftFront || wheel == Wheel.RightFront) && cVarC != null && cVarC.c) {
                this.a0 = true;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (!this.b && this.r == SubStep.None && (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar).j) && (eVar.d().F == CarModel.Direction.Stop || eVar.d().F == CarModel.Direction.Back)) {
            this.i = false;
            return true;
        }
        if (!super.d(eVar, carPos, bVar)) {
            return false;
        }
        this.i = true;
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.J = Wheel.None;
        y(SubStep.None);
    }
}
