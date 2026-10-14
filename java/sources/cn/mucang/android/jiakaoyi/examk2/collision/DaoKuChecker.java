package cn.mucang.android.jiakaoyi.examk2.collision;

import android.media.MediaPlayer;
import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.R;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DaoKuChecker extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c, K2DaoCheRuKuConfig> {
    public boolean A;
    private final Pos A0;
    public boolean B;
    public Boolean C;
    private boolean D;
    private MediaPlayer E;
    public boolean F;
    private double G;
    public boolean H;
    private final cn.mucang.android.jiakaoyi.engine.g.b I;
    private final cn.mucang.android.jiakaoyi.engine.g.b J;
    public boolean K;
    public Boolean L;
    private boolean M;
    private Line N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public ToucheLineState Y;
    public ToucheLineState Z;
    public ToucheLineState a0;
    public boolean b0;
    public boolean c0;
    public boolean d0;
    public boolean e0;
    public boolean f0;
    public boolean g0;
    public boolean h0;
    public int i0;
    private Pos j0;
    private Pos k0;
    private boolean l0;
    private boolean m0;
    private boolean n0;
    public boolean o0;
    public boolean p0;
    private boolean q0;
    private CarModel.Direction r0;
    public boolean s;
    private boolean s0;
    public boolean t;
    public long t0;
    public boolean u;
    public StartByLine u0;
    public boolean v;
    private cn.mucang.android.jiakaoyi.signal.pos.c v0;
    public Wheel w;
    public boolean w0;
    public Wheel x;
    private final cn.mucang.android.jiakaoyi.signal.utils.c x0;
    public boolean y;
    private final cn.mucang.android.jiakaoyi.signal.utils.c y0;
    public boolean z;
    private final cn.mucang.android.jiakaoyi.signal.utils.c z0;

    public enum StartByLine {
        Line12,
        Line18,
        Line78
    }

    public enum ToucheLineState {
        None,
        Step1,
        Step2,
        Step3
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DaoKuChecker(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list, K2DaoCheRuKuConfig k2DaoCheRuKuConfig) {
        super(list, k2DaoCheRuKuConfig);
        Wheel wheel = Wheel.None;
        this.w = wheel;
        this.x = wheel;
        this.A = false;
        this.B = false;
        this.C = null;
        this.F = false;
        this.G = 0.0d;
        this.H = false;
        this.I = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402118.value).intValue() * 1000);
        this.J = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402112.value).intValue() * 1000);
        this.K = false;
        this.L = null;
        this.N = null;
        this.O = false;
        this.P = false;
        this.Q = false;
        this.R = false;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        ToucheLineState toucheLineState = ToucheLineState.None;
        this.Y = toucheLineState;
        this.Z = toucheLineState;
        this.a0 = toucheLineState;
        this.b0 = false;
        this.c0 = false;
        this.d0 = false;
        this.e0 = true;
        this.f0 = true;
        this.g0 = false;
        this.h0 = false;
        this.i0 = 0;
        this.l0 = false;
        this.m0 = false;
        this.n0 = false;
        this.o0 = false;
        this.p0 = false;
        this.q0 = false;
        this.r0 = CarModel.Direction.None;
        this.s0 = false;
        this.t0 = 0L;
        this.u0 = null;
        this.w0 = false;
        this.x0 = new cn.mucang.android.jiakaoyi.signal.utils.c(3);
        this.y0 = new cn.mucang.android.jiakaoyi.signal.utils.c(3);
        this.z0 = new cn.mucang.android.jiakaoyi.signal.utils.c(3);
        this.A0 = new Pos();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void I(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        if (this.M) {
            return;
        }
        if (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402139.value).intValue() == 1) {
            M();
        } else if (e(eVar, carPos, cVar)) {
            M();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void K(MediaPlayer mediaPlayer) {
        this.E.release();
        this.E = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void M() {
        C c = this.f3693d;
        if (((K2DaoCheRuKuConfig) c).p402103 == null || !((Boolean) ((K2DaoCheRuKuConfig) c).p402103.value).booleanValue()) {
            return;
        }
        this.M = true;
        C c2 = this.f3693d;
        C((String) ((K2DaoCheRuKuConfig) c2).p402102.value, TtsGrade.ExamTip, ((K2DaoCheRuKuConfig) c2).p402102.ruleId, l.d(((K2DaoCheRuKuConfig) c2).p402102.ruleId));
    }

    private void N(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.n)) {
            this.s = true;
            this.m = cVar.n;
        } else {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.q)) {
                this.s = true;
                this.m = cVar.q;
                return;
            }
            boolean z = this.t;
            this.s = z;
            if (z) {
                this.m = cVar.r;
            }
        }
    }

    private void O(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.n);
        this.w = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = cVar.n;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.q);
        this.w = wheelR2;
        if (wheelR2 != wheel) {
            this.l = cVar.q;
            return;
        }
        Wheel wheelR3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.r);
        this.x = wheelR3;
        this.w = wheelR3;
        if (wheelR3 != wheel) {
            this.l = cVar.r;
        } else {
            this.l = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    public boolean A() {
        if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402113.value).booleanValue()) {
            return super.A();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:9:0x0025  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean e(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        boolean z = true;
        boolean zA = false;
        if (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402139.value).intValue() == 0) {
            if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j) || eVar.d().F != CarModel.Direction.Stop) {
                z = false;
            }
            zA = z;
        } else if (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402139.value).intValue() != 1) {
            if (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402139.value).intValue() == 2) {
                if (eVar.d().m != Gear.GearBack || !eVar.d().c()) {
                    z = false;
                }
                zA = z;
            } else if (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402139.value).intValue() == 3) {
                if (eVar.d().F == CarModel.Direction.Back && !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
                    if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, cVar.j) < ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402127.value).intValue()) {
                        z = false;
                    }
                    zA = z;
                }
            } else if (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402139.value).intValue() == 4) {
                Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.j);
                if (eVar.d().F != CarModel.Direction.Back || eVar.d().m != Gear.GearBack || (wheelR != Wheel.LeftFront && wheelR != Wheel.LeftBack && wheelR != Wheel.RightFront && wheelR != Wheel.RightBack)) {
                    z = false;
                }
                zA = z;
            } else if (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402139.value).intValue() == 5) {
                zA = cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, cVar.i);
            }
        }
        if (!this.M) {
            this.M = zA;
        }
        return zA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402116.value).booleanValue()) {
            if (!cVar.h(carPos) || eVar.d().m != Gear.GearBack || !eVar.d().c() || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
                return g(eVar, carPos, cVar);
            }
            this.u0 = StartByLine.Line78;
            return true;
        }
        if (!((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402113.value).booleanValue()) {
            if (cVar.e(carPos) && eVar.d().F.isNotBack() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.r)) {
                return true;
            }
            if ((eVar.d().F.isStop() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) || (cVar.h(carPos) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.k(carPos, cVar.k()) && eVar.d().m == Gear.GearBack && eVar.d().c())) {
                return true;
            }
        }
        return super.f(eVar, carPos, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:172:0x037c  */
    /* JADX WARN: Code duplicated, block: B:436:0x0925  */
    /* JADX WARN: Code duplicated, block: B:70:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a2  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar, ExamProcessor examProcessor) {
        boolean z;
        boolean z2;
        boolean zB;
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = Boolean.TRUE;
        if (this.r == SubStep.None) {
            y(SubStep.Step1);
            this.x0.b();
            this.W = cVar.u;
            this.n0 = eVar.d().m.isBack();
            Pos pos = this.A0;
            Line line = cVar.r;
            pos.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.end, line.start, 16.0d));
            this.k0 = cVar.r.end.vectorTo(this.A0);
            Line line2 = cVar.i;
            Pos pos2 = line2.start;
            Pos pos3 = line2.end;
            Line line3 = cVar.j;
            this.v0 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(pos2, pos3, line3.start, line3.end);
        }
        if (this.N == null) {
            if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402113.value).booleanValue()) {
                this.N = cVar.i;
            } else {
                this.N = cVar.j;
            }
            if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402116.value).booleanValue()) {
                this.N = cVar.j;
            }
        }
        if (!this.s0) {
            if ((((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402125.value).intValue() == 0 && eVar.d().m == Gear.GearBack && eVar.d().c()) || (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402125.value).intValue() == 1 && eVar.d().m == Gear.GearBack)) {
                if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
                    this.p0 = true;
                }
                this.s0 = true;
                this.t0 = SystemClock.elapsedRealtime();
                LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a.class).l(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a());
            }
        }
        this.t = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.r);
        N(carPos, cVar);
        boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.m);
        this.v = zB2;
        this.u = zB2;
        if (zB2) {
            this.m = cVar.m;
        }
        if (!zB2) {
            boolean zB3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.o);
            this.u = zB3;
            if (zB3) {
                this.m = cVar.o;
            }
        }
        if (!this.u) {
            boolean zB4 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.p);
            this.u = zB4;
            if (zB4) {
                this.m = cVar.p;
            }
        }
        this.w0 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, this.v0);
        O(carPos, cVar);
        I(eVar, carPos, cVar);
        if (!this.P) {
            this.P = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.RightBack, carPos, cVar.k);
        }
        if (!this.O) {
            this.O = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.LeftBack, carPos, cVar.k);
        }
        if (this.P && this.O) {
            int iIntValue = ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402140.value).intValue();
            if (examProcessor.f3104a.p != 1) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                if (!this.S) {
                    this.S = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.RightBack, carPos, cVar.j);
                }
                if (!this.T) {
                    this.T = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.LeftBack, carPos, cVar.j);
                }
                if (this.S && this.T) {
                    zB = true;
                } else {
                    zB = false;
                }
            } else if (iIntValue == 1) {
                if (!this.U) {
                    this.U = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j);
                }
                zB = cVar.v(carPos);
            } else if (iIntValue == 2) {
                if (!this.R) {
                    this.R = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.LeftFront, carPos, cVar.j);
                }
                if (!this.Q) {
                    this.Q = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.RightFront, carPos, cVar.j);
                }
                if (this.R && this.Q) {
                    zB = true;
                } else {
                    zB = false;
                }
            } else {
                zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j);
            }
            if (zB) {
                this.b = true;
                if (iIntValue == 1) {
                    this.c = this.U;
                } else {
                    this.c = true;
                }
            }
        }
        SubStep subStep = this.r;
        SubStep subStep2 = SubStep.Step1;
        if (subStep == subStep2) {
            this.X = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j);
            this.y = ((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402128.value).booleanValue() && ((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402113.value).booleanValue();
            if (!((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402134.value).booleanValue()) {
                this.y = true;
            }
        } else if (subStep == SubStep.Step2) {
            if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402134.value).booleanValue()) {
                this.y = this.b0;
            } else {
                this.y = true;
            }
        } else if (subStep != SubStep.Step4 && subStep != SubStep.Step5) {
            this.y = true;
            this.z = true;
        }
        if (this.r == subStep2) {
            if (!((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402134.value).booleanValue() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
                if (this.f3695f) {
                    ToucheLineState toucheLineState = this.Y;
                    if (toucheLineState == ToucheLineState.None) {
                        this.Y = ToucheLineState.Step1;
                    } else if (toucheLineState == ToucheLineState.Step2) {
                        this.Y = ToucheLineState.Step3;
                    }
                } else if (this.Y == ToucheLineState.Step1) {
                    this.Y = ToucheLineState.Step2;
                }
            }
            if (!this.K && !this.n0 && this.u0 != StartByLine.Line78) {
                Pos posVectorTo = this.A0.vectorTo(carPos.wheelLeftBack);
                Pos posVectorTo2 = this.A0.vectorTo(carPos.wheelRightBack);
                if (this.k0.dot(posVectorTo) > 0.0d && this.k0.dot(posVectorTo2) > 0.0d) {
                    this.K = true;
                }
            }
            if (eVar.d().m == Gear.GearBack) {
                y(SubStep.Step2);
                boolean zC = cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftFront, carPos.wheelLeftBack, cVar.q.end, cVar.r.start);
                boolean zC2 = cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelRightFront, carPos.wheelRightBack, cVar.q.end, cVar.r.start);
                if ((!zC || !zC2) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, cVar.j.middle())) {
                    this.g0 = true;
                }
            } else if (cVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step2) {
            if (this.C == null) {
                if (this.K) {
                    this.C = bool2;
                } else if (this.N == cVar.i) {
                    Pos pos4 = carPos.wheelLeftBack;
                    Pos pos5 = carPos.wheelLeftFront;
                    Line line4 = cVar.j;
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos4, pos5, line4.start, line4.end)) {
                        Pos pos6 = carPos.wheelLeftFront;
                        Line line5 = cVar.j;
                        if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos6, line5.start, line5.end) >= ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402111.value).intValue() + ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402109.value).intValue()) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    this.C = Boolean.valueOf(z2);
                } else {
                    Pos pos7 = carPos.wheelLeftBack;
                    Pos pos8 = carPos.wheelLeftFront;
                    Line line6 = cVar.j;
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos7, pos8, line6.start, line6.end)) {
                        Pos pos9 = carPos.wheelLeftFront;
                        Line line7 = cVar.j;
                        this.C = Boolean.valueOf(cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos9, line7.start, line7.end) >= ((double) (((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402111.value).intValue() + ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402109.value).intValue())));
                    } else {
                        this.C = Boolean.valueOf(!cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, cVar.j.middle()));
                    }
                }
            }
            this.e0 = eVar.d().m == Gear.GearN || eVar.d().m == Gear.GearBack || !eVar.d().m.isValid() || !eVar.d().c() || !this.x0.a(eVar.d().F.isForward()) || this.d0;
            if (this.f3695f && this.Y == ToucheLineState.Step2) {
                this.Y = ToucheLineState.Step3;
            }
            if (!this.b0 && !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
                this.b0 = true;
            }
            if (eVar.d().m != Gear.GearBack || !eVar.d().c() || !eVar.d().f5269g) {
                this.V = false;
            } else if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.k)) {
                this.V = true;
            } else {
                this.V = false;
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w)) {
                if ((((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402112.value).intValue() > 0 && eVar.d().c < 0.2d) || ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402112.value).intValue() == 0) {
                    y(SubStep.Step3);
                    this.C = bool2;
                    this.e0 = true;
                    this.x0.b();
                }
            } else if (cVar.v(carPos)) {
                this.b = true;
            }
        }
        if (!this.d0 && eVar.d().F.isBack()) {
            Line line8 = new Line(new Pos(eVar.c().wheelLeftFront).meanWith(eVar.c().wheelRightFront), new Pos(eVar.c().wheelLeftBack).meanWith(eVar.c().wheelRightBack));
            Pos pos10 = line8.start;
            Pos pos11 = line8.end;
            Line line9 = cVar.k;
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos10, pos11, line9.start, line9.end)) {
                this.d0 = true;
            }
        }
        if (this.r0 != eVar.d().F && eVar.d().F != CarModel.Direction.Stop) {
            this.r0 = eVar.d().F;
        }
        SubStep subStep3 = this.r;
        SubStep subStep4 = SubStep.Step3;
        if (subStep3 == subStep4) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, cVar.w)) {
                if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402108.value).booleanValue() && !this.q0 && ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402112.value).intValue() == 0) {
                    C c = this.f3693d;
                    D((String) ((K2DaoCheRuKuConfig) c).p402146.value, TtsGrade.ExamDeduct, null, ((K2DaoCheRuKuConfig) c).p402146.ruleId, l.d(((K2DaoCheRuKuConfig) c).p402146.ruleId));
                    this.q0 = true;
                }
                this.H = true;
            } else {
                subStep4 = subStep4;
                this.H = false;
            }
            boolean zB5 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.k);
            if (this.f3695f) {
                if (zB5 && this.d0) {
                    if (!this.B && !this.q0 && this.r0.isBack()) {
                        this.I.g();
                    }
                    ToucheLineState toucheLineState2 = this.a0;
                    if (toucheLineState2 == ToucheLineState.None) {
                        this.a0 = ToucheLineState.Step1;
                    } else if (toucheLineState2 == ToucheLineState.Step2) {
                        this.a0 = ToucheLineState.Step3;
                    }
                }
                if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402132.value).booleanValue() || !this.I.d()) {
                    this.A = false;
                } else {
                    this.A = true;
                    this.B = true;
                    this.I.b();
                }
                if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402108.value).booleanValue() && !this.q0 && this.H) {
                    if (!this.J.e()) {
                        this.J.g();
                    }
                    if (this.J.d()) {
                        this.q0 = true;
                        this.J.b();
                        C c2 = this.f3693d;
                        D((String) ((K2DaoCheRuKuConfig) c2).p402146.value, TtsGrade.ExamDeduct, null, ((K2DaoCheRuKuConfig) c2).p402146.ruleId, l.d(((K2DaoCheRuKuConfig) c2).p402146.ruleId));
                    }
                }
            } else {
                if (this.J.e()) {
                    this.J.b();
                }
                if (!((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402132.value).booleanValue() && this.I.e()) {
                    this.I.b();
                }
                if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402132.value).booleanValue()) {
                    if (this.z0.a(eVar.d().F == CarModel.Direction.Back)) {
                        this.I.b();
                        this.z0.b();
                    }
                }
                if (this.a0 == ToucheLineState.Step1) {
                    this.a0 = ToucheLineState.Step2;
                }
            }
            if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402132.value).booleanValue() && eVar.d().m != Gear.GearBack && eVar.d().m != Gear.GearN) {
                if (eVar.d().c() && zB5 && this.I.d()) {
                    this.A = true;
                    this.B = true;
                    this.I.b();
                } else {
                    this.A = false;
                }
            }
            if (this.d0 && !this.o0 && eVar.d().m != Gear.GearBack && eVar.d().m != Gear.GearN && eVar.d().m.isValid() && this.x0.a(eVar.d().F.isForward()) && eVar.d().c()) {
                this.x0.b();
                this.o0 = true;
            }
            this.f0 = (this.d0 && this.o0 && eVar.d().m == Gear.GearBack && this.x0.a(eVar.d().F.isBack()) && eVar.d().c()) ? false : true;
            if (eVar.d().c() && eVar.d().m.isFront() && !cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w)) {
                y(SubStep.Step4);
                this.x0.b();
                this.H = false;
                this.a0 = ToucheLineState.None;
                this.d0 = false;
                this.o0 = false;
            } else if (cVar.v(carPos)) {
                this.b = true;
            }
        } else {
            subStep4 = subStep4;
        }
        if (this.r == SubStep.Step4) {
            double d2 = this.G;
            if (d2 == 0.0d) {
                Pos pos12 = carPos.wheelLeftFront;
                Line line10 = cVar.i;
                this.G = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos12, line10.start, line10.end);
            } else {
                Pos pos13 = carPos.wheelLeftFront;
                Line line11 = cVar.i;
                this.F = d2 - cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos13, line11.start, line11.end) > 0.0d;
            }
            boolean zB6 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.i);
            if (this.f3695f && zB6) {
                ToucheLineState toucheLineState3 = this.Z;
                if (toucheLineState3 == ToucheLineState.None) {
                    this.Z = ToucheLineState.Step1;
                    this.z = false;
                } else if (toucheLineState3 == ToucheLineState.Step2) {
                    this.Z = ToucheLineState.Step3;
                    this.z = true;
                }
            } else if (this.Z == ToucheLineState.Step1) {
                this.Z = ToucheLineState.Step2;
                this.z = false;
            }
            if (!((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402124.value).booleanValue()) {
                this.y = this.z;
            }
            this.f0 = (!zB6 && eVar.d().m == Gear.GearBack && this.x0.a(eVar.d().F.isBack()) && eVar.d().c()) ? false : true;
            if ((this.y0.a(eVar.d().F == CarModel.Direction.Back) || eVar.d().m == Gear.GearBack) && eVar.d().c()) {
                y(SubStep.Step5);
                if (this.L == null) {
                    if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.i)) {
                        boolean z3 = !cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.v0, carPos.wheelLeftBack);
                        boolean z4 = !cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.v0, carPos.wheelRightBack);
                        if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402147.value).booleanValue() && (z3 || z4)) {
                            this.L = bool2;
                        } else if (!((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402147.value).booleanValue() && z3 && z4) {
                            this.L = bool2;
                        } else {
                            this.L = bool;
                        }
                    } else {
                        this.L = bool;
                    }
                }
                if (this.L.booleanValue()) {
                    this.C = bool2;
                } else {
                    Pos pos14 = carPos.wheelLeftBack;
                    Pos pos15 = carPos.wheelLeftFront;
                    Line line12 = cVar.i;
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos14, pos15, line12.start, line12.end)) {
                        Pos pos16 = carPos.wheelLeftFront;
                        Line line13 = cVar.i;
                        if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos16, line13.start, line13.end) >= ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402111.value).intValue() + ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402109.value).intValue()) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    this.C = Boolean.valueOf(z);
                }
                this.A = false;
                this.B = false;
                this.f0 = true;
                this.x0.b();
                this.y0.b();
                this.q0 = false;
            } else if (cVar.v(carPos)) {
                this.b = true;
            }
        }
        if (this.r == SubStep.Step5) {
            Gear gear = eVar.d().m;
            Gear gear2 = Gear.GearBack;
            if (gear != gear2 || !eVar.d().c() || !eVar.d().f5269g) {
                this.V = false;
            } else if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, cVar.w) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.k)) {
                this.V = true;
            } else {
                this.V = false;
            }
            boolean zB7 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.i);
            if (this.f3695f && zB7) {
                ToucheLineState toucheLineState4 = this.Z;
                if (toucheLineState4 == ToucheLineState.None) {
                    this.Z = ToucheLineState.Step1;
                    this.y = false;
                } else if (toucheLineState4 == ToucheLineState.Step2) {
                    this.Z = ToucheLineState.Step3;
                    this.y = true;
                }
            } else if (this.Z == ToucheLineState.Step1) {
                this.Z = ToucheLineState.Step2;
                this.y = false;
            }
            this.y = !zB7;
            this.e0 = eVar.d().m == Gear.GearN || eVar.d().m == gear2 || !eVar.d().m.isValid() || !eVar.d().c() || !this.x0.a(eVar.d().F.isForward()) || this.d0;
            if (!this.c0 && !zB7) {
                this.c0 = true;
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w)) {
                if ((((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402112.value).intValue() > 0 && eVar.d().c < 0.2d) || ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402112.value).intValue() == 0) {
                    y(SubStep.Step6);
                    this.e0 = true;
                    this.x0.b();
                }
            } else if (cVar.v(carPos)) {
                this.b = true;
            }
        }
        SubStep subStep5 = this.r;
        SubStep subStep6 = SubStep.Step6;
        if (subStep5 == subStep6) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, cVar.w)) {
                if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402108.value).booleanValue() && !this.q0 && ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402112.value).intValue() == 0) {
                    C c3 = this.f3693d;
                    D((String) ((K2DaoCheRuKuConfig) c3).p402146.value, TtsGrade.ExamDeduct, null, ((K2DaoCheRuKuConfig) c3).p402146.ruleId, l.d(((K2DaoCheRuKuConfig) c3).p402146.ruleId));
                    this.q0 = true;
                }
                this.H = true;
            } else {
                this.H = false;
            }
            boolean zB8 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.k);
            if (this.f3695f) {
                if (zB8 && this.d0) {
                    if (!this.B && !this.q0 && this.r0 == CarModel.Direction.Back) {
                        this.I.g();
                    }
                    ToucheLineState toucheLineState5 = this.a0;
                    if (toucheLineState5 == ToucheLineState.None) {
                        this.a0 = ToucheLineState.Step1;
                    } else if (toucheLineState5 == ToucheLineState.Step2) {
                        this.a0 = ToucheLineState.Step3;
                    }
                }
                if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402132.value).booleanValue() || !this.I.d()) {
                    this.A = false;
                } else {
                    this.A = true;
                    this.B = true;
                    this.I.b();
                }
                if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402108.value).booleanValue() && !this.q0 && this.H) {
                    if (!this.J.e()) {
                        this.J.g();
                    }
                    if (this.J.d()) {
                        this.q0 = true;
                        this.J.b();
                        C c4 = this.f3693d;
                        D((String) ((K2DaoCheRuKuConfig) c4).p402146.value, TtsGrade.ExamDeduct, null, ((K2DaoCheRuKuConfig) c4).p402146.ruleId, l.d(((K2DaoCheRuKuConfig) c4).p402146.ruleId));
                    }
                }
            } else {
                if (this.J.e()) {
                    this.J.b();
                }
                if (!((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402132.value).booleanValue() && this.I.e()) {
                    this.I.b();
                }
                if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402132.value).booleanValue()) {
                    if (this.z0.a(eVar.d().F == CarModel.Direction.Back)) {
                        this.I.b();
                        this.z0.b();
                    }
                }
                if (this.a0 == ToucheLineState.Step1) {
                    this.a0 = ToucheLineState.Step2;
                }
            }
            if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402132.value).booleanValue() && eVar.d().m != Gear.GearBack && eVar.d().m != Gear.GearN) {
                if (eVar.d().c() && zB8 && this.I.d()) {
                    this.A = true;
                    this.B = true;
                    this.I.b();
                } else {
                    this.A = false;
                }
            }
            if (this.d0 && !this.o0 && eVar.d().m != Gear.GearBack && eVar.d().m != Gear.GearN && eVar.d().m.isValid() && this.x0.a(eVar.d().F.isForward()) && eVar.d().c()) {
                this.x0.b();
                this.o0 = true;
            }
            this.f0 = (this.d0 && this.o0 && eVar.d().m == Gear.GearBack && this.x0.a(eVar.d().F.isBack()) && eVar.d().c()) ? false : true;
            if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402129.value).booleanValue() && !this.D && examProcessor.f3104a.p == 1 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.k)) {
                MediaPlayer mediaPlayer = this.E;
                if (mediaPlayer != null) {
                    mediaPlayer.release();
                }
                MediaPlayer mediaPlayerCreate = MediaPlayer.create(MucangConfig.getContext(), R.raw.dingdong);
                this.E = mediaPlayerCreate;
                mediaPlayerCreate.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.mucang.android.jiakaoyi.examk2.collision.a
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer2) {
                        this.f3293a.K(mediaPlayer2);
                    }
                });
                this.E.start();
                this.D = true;
            }
            if (eVar.d().c() && eVar.d().m.isFront() && !cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w)) {
                y(SubStep.Step7);
                this.x0.b();
                this.a0 = ToucheLineState.None;
            } else if (cVar.v(carPos)) {
                this.b = true;
            }
        }
        SubStep subStep7 = this.r;
        if (subStep7 == subStep4 || subStep7 == subStep6) {
            if (this.f3695f && this.d0) {
                if (this.H && !this.m0) {
                    this.m0 = true;
                }
                this.l0 = false;
                this.j0 = null;
            }
            CarModel.Direction direction = eVar.d().F;
            if (this.m0 && this.d0 && direction.isBack() && eVar.d().m == Gear.GearBack) {
                if (this.j0 == null) {
                    this.j0 = new Pos(eVar.c().back);
                }
                if (this.j0.distanceTo(eVar.c().back) > 3.0d && !this.l0) {
                    this.l0 = true;
                    this.i0++;
                }
            }
            if (((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402130.value).booleanValue() && this.i0 > ((Integer) ((K2DaoCheRuKuConfig) this.f3693d).p402131.value).intValue()) {
                this.h0 = true;
            }
        } else {
            this.i0 = 0;
            this.j0 = null;
            this.l0 = false;
            this.m0 = false;
        }
        if (this.r == SubStep.Step7) {
            this.f0 = (!this.b && !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j) && eVar.d().m == Gear.GearBack && this.x0.a(eVar.d().F.isBack()) && eVar.d().c()) ? false : true;
            if (cVar.v(carPos)) {
                this.b = true;
                this.x0.b();
            }
            this.B = false;
            this.q0 = false;
            this.H = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (!((Boolean) ((K2DaoCheRuKuConfig) this.f3693d).p402113.value).booleanValue() && (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c)) {
            if (bVar.e(carPos) && eVar.d().F.isNotBack() && cn.mucang.android.jiakaoyi.hpmap.a.a.c.b(carPos, ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar).r, null, 20.0d, false)) {
                this.u0 = StartByLine.Line18;
                this.i = true;
                return true;
            }
            if ((eVar.d().F.isBack() || eVar.d().F.isStop()) && bVar.h(carPos) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar).j)) {
                this.u0 = StartByLine.Line78;
                this.i = true;
                return true;
            }
        }
        if (!super.d(eVar, carPos, bVar)) {
            return false;
        }
        this.i = true;
        if ((bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) && ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar).f3657e == 3) {
            this.u0 = StartByLine.Line18;
        } else {
            this.u0 = StartByLine.Line12;
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.w = Wheel.None;
        this.s = false;
        y(SubStep.None);
    }
}
