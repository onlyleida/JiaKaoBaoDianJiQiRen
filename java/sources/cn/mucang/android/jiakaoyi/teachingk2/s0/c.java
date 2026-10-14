package cn.mucang.android.jiakaoyi.teachingk2.s0;

import android.util.SparseArray;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachCarPositionModel;
import cn.mucang.android.jiakaoyi.teachingk2.dksingle.SingleType;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c, SimpleTeachingConfig> {
    private static final String[] W;
    private static final String[] X;
    private SparseArray<Pos> A;
    private cn.mucang.android.jiakaoyi.framework.base.model.a B;
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b C;
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public int I;
    private cn.mucang.android.jiakaoyi.signal.pos.c J;
    public SingleType K;
    public boolean L;
    private boolean M;
    private final boolean N;
    private final boolean O;
    private int P;
    private final a Q;
    private final a R;
    private boolean S;
    private int T;
    private long U;
    private int V;
    public int s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public Wheel y;
    private cn.mucang.android.jiakaoyi.signal.utils.b z;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f7611a;

        public a(int i) {
            this.f7611a = i;
        }

        void a() {
            this.f7611a = 0;
        }

        boolean b() {
            return this.f7611a == 1;
        }
    }

    static {
        int i = R.string.teachingk2_has_not_started;
        int i2 = R.string.teachingk2_drive_into_project;
        int i3 = R.string.teachingk2_youdaoku;
        int i4 = R.string.teachingk2_zuochuku;
        int i5 = R.string.teachingk2_zuodaoku;
        int i6 = R.string.teachingk2_youchuku;
        W = new String[]{k0.a(i), k0.a(i2), k0.a(i3), k0.a(i4), k0.a(i5), k0.a(i6)};
        X = new String[]{k0.a(i), k0.a(i2), k0.a(i5), k0.a(i6), k0.a(i3), k0.a(i4)};
    }

    public c(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> cVar) {
        this(list, cVar, false);
    }

    private boolean H(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar, SubStep subStep) {
        if (eVar.d().m.isFront() || eVar.d().m == Gear.GearN) {
            N(subStep, cVar);
            TtsManager.r(String.format(k0.a(R.string.teachingk2_start_substep_train), cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f().desc), TtsGrade.Teach);
            return true;
        }
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.c(this.T, subStep.ordinal())) {
            this.T = cn.mucang.android.jiakaoyi.signal.d.j.a.h(this.T, subStep.ordinal());
            TtsManager.r(k0.a(R.string.teachingk2_please_forward_gear_train), TtsGrade.Teach);
        }
        return false;
    }

    private boolean I(CarPos carPos, cn.mucang.android.jiakaoyi.signal.pos.c cVar, a aVar) {
        if (aVar.f7611a == 0) {
            aVar.f7611a = cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, cVar) ? 1 : -1;
        }
        return aVar.b();
    }

    private static String K(SubStep subStep, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        if (cVar == null) {
            return k0.a(R.string.teachingk2_unknown_substep);
        }
        int iOrdinal = subStep.ordinal();
        String[] strArr = W;
        if (iOrdinal <= strArr.length - 1) {
            int iOrdinal2 = subStep.ordinal();
            String[] strArr2 = X;
            if (iOrdinal2 <= strArr2.length - 1) {
                boolean z = cVar.u;
                int iOrdinal3 = subStep.ordinal();
                return z ? strArr2[iOrdinal3] : strArr[iOrdinal3];
            }
        }
        return subStep.name();
    }

    private void M(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        if (MucangConfig.v()) {
            if (this.A == null) {
                this.A = cVar.j();
            }
            if (this.B == null) {
                this.B = new cn.mucang.android.jiakaoyi.framework.base.model.a();
            }
            boolean z = this.A.get(4).vectorTo(this.A.get(3)).cross(this.A.get(3).vectorTo(this.A.get(6))) > 0.0d;
            if (this.z == null) {
                this.z = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(cVar);
            }
            Pos posA = this.z.a(carPos.center);
            float fC = (z ? 1 : -1) * cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) carPos.degree)) - Math.toDegrees(this.A.get(4).angleTo(this.A.get(3)))));
            int i = (int) posA.x;
            int i2 = (int) posA.y;
            cn.mucang.android.jiakaoyi.framework.base.model.a aVar = this.B;
            StringBuilder sb = new StringBuilder();
            sb.append("车身位置 : ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
            sb.append(" , 角度 : ");
            sb.append((int) fC);
            sb.append(" , ");
            sb.append(z ? "右库" : "左库");
            aVar.f3425a = sb.toString();
            LiveBus.c(this.B);
        }
    }

    private boolean O(CarPos carPos, Line line) {
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line)) {
            return false;
        }
        this.m = line;
        return true;
    }

    private void P(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        this.m = null;
        O(carPos, cVar.n);
        if (this.m == null) {
            O(carPos, cVar.o);
        }
        if (this.m == null) {
            O(carPos, cVar.m);
        }
        if (this.m == null) {
            O(carPos, cVar.p);
        }
        if (this.m == null) {
            O(carPos, cVar.q);
        }
        boolean z = true;
        if (this.m == null) {
            this.u = O(carPos, cVar.r);
            if (this.M && !this.O) {
                this.u = true;
            }
            if (this.r == SubStep.Step5 && this.I == 3) {
                this.u = true;
            }
        }
        Line line = this.m;
        this.v = line == cVar.o;
        this.w = line == cVar.p;
        this.x = line == cVar.m;
        if (line != cVar.n && line != cVar.q && line != cVar.r) {
            z = false;
        }
        this.t = z;
    }

    private void Q(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.n);
        this.y = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = cVar.n;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.o);
        this.y = wheelR2;
        if (wheelR2 != wheel) {
            this.l = cVar.o;
            return;
        }
        Wheel wheelR3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.m);
        this.y = wheelR3;
        if (wheelR3 != wheel) {
            this.l = cVar.m;
            return;
        }
        Wheel wheelR4 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.p);
        this.y = wheelR4;
        if (wheelR4 != wheel) {
            this.l = cVar.p;
            return;
        }
        Wheel wheelR5 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.q);
        this.y = wheelR5;
        if (wheelR5 != wheel) {
            this.l = cVar.q;
            return;
        }
        Wheel wheelR6 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, cVar.r);
        this.y = wheelR6;
        boolean z = wheelR6 != wheel;
        this.G = z;
        if (z) {
            this.l = cVar.r;
        }
    }

    private void R(FirstPracticeStep firstPracticeStep, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar, cn.mucang.android.jiakaoyi.signal.c.e eVar, a aVar, boolean z) {
        if (aVar.b()) {
            return;
        }
        if (z || I(eVar.c(), cVar.w, this.Q)) {
            aVar.f7611a = 1;
            cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().h(firstPracticeStep, this.r, eVar, this.P, cVar);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected long E() {
        return 250L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar;
        Gear gear = eVar.d().m;
        CarModel.Direction direction = eVar.d().F;
        boolean zL = cn.mucang.android.jiakaoyi.hpmap.a.b.a.l(carPos, cVar.n());
        if (zL && direction == CarModel.Direction.Back && gear == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
            cn.mucang.android.jiakaoyi.teachingk2.dksingle.a.b(SingleType.All);
            this.s = 1;
            return true;
        }
        if (zL && direction == CarModel.Direction.Back && gear == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.i)) {
            cn.mucang.android.jiakaoyi.teachingk2.dksingle.a.b(SingleType.All);
            this.s = 2;
            return true;
        }
        if (!cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().g() && (bVar = this.D) != null && cVar == bVar && direction.isForward() && gear.isFront() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.k)) {
            boolean z = cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).v, carPos.carRect.b) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).v, carPos.carRect.c);
            boolean z2 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).w, carPos.carRect.f5820a) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).w, carPos.carRect.f5821d);
            if (z && z2) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = this.C;
                cn.mucang.android.jiakaoyi.teachingk2.dksingle.a.b(SingleType.All);
                this.s = 3;
                return true;
            }
        }
        Line lineL = cVar.l();
        if (cVar.l() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            this.s = 0;
            return true;
        }
        if (super.f(eVar, carPos, cVar)) {
            cn.mucang.android.jiakaoyi.teachingk2.dksingle.a.b(SingleType.All);
            this.s = 0;
            return true;
        }
        this.Q.a();
        if (!cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().g() || !I(carPos, cVar.w, this.Q)) {
            return false;
        }
        this.s = 4;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:166:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:249:0x0547  */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar, ExamProcessor examProcessor) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        this.C = cVar;
        this.K = cn.mucang.android.jiakaoyi.teachingk2.dksingle.a.a();
        this.L = cVar.u;
        this.Q.a();
        this.R.a();
        this.P = 0;
        if (cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().j()) {
            int iR = cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().r();
            if (iR > 0) {
                this.V = iR;
            }
            N(SubStep.None, cVar);
            return;
        }
        int i = this.V;
        if (i > 0 && this.r == SubStep.None) {
            this.r = SubStep.find(i);
        }
        this.V = -1;
        boolean zG = cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().g();
        if (zG && cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().i()) {
            if (!I(carPos, cVar.w, this.Q) || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(cVar.w, cn.mucang.android.jiakaoyi.hpmap.a.b.c.j(carPos.carRect, 3.0d, 3.0d))) {
                if (eVar.d().L - this.U > 10000) {
                    this.U = eVar.d().L - SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
                }
                if (eVar.d().L - this.U > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                    this.U = eVar.d().L;
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new Pos(cVar.k.start));
                    arrayList.add(new Pos(cVar.m.start));
                    arrayList.add(new Pos(cVar.m.end));
                    arrayList.add(new Pos(cVar.k.end));
                    LiveBus.d(TeachCarPositionModel.class).l(new TeachCarPositionModel(arrayList));
                    TtsManager.r(k0.a(R.string.teachingk2_in_project_continue_train), TtsGrade.GlobalTip);
                    return;
                }
                return;
            }
            cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().m(false);
            TtsManager.r(k0.a(R.string.teachingk2_please_forward_gear_continue_train), TtsGrade.GlobalTip);
        }
        if (this.r == SubStep.None) {
            if (zG) {
                if (!this.S) {
                    this.S = true;
                    if (!I(carPos, cVar.w, this.Q)) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(new Pos(cVar.k.start));
                        arrayList2.add(new Pos(cVar.m.start));
                        arrayList2.add(new Pos(cVar.m.end));
                        arrayList2.add(new Pos(cVar.k.end));
                        LiveBus.d(TeachCarPositionModel.class).l(new TeachCarPositionModel(arrayList2));
                    }
                }
                this.E = true;
                FirstPracticeStep firstPracticeStepF = cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f();
                if (firstPracticeStepF == FirstPracticeStep.DaoKu_Line) {
                    if (!I(carPos, cVar.w, this.Q) || !H(eVar, cVar, SubStep.Step8)) {
                        return;
                    }
                } else if (firstPracticeStepF == FirstPracticeStep.DaoKu_Left) {
                    if (!I(carPos, cVar.w, this.Q) || !H(eVar, cVar, SubStep.Step3)) {
                        return;
                    }
                } else if (firstPracticeStepF != FirstPracticeStep.DaoKu_Right || !I(carPos, cVar.w, this.Q) || !H(eVar, cVar, SubStep.Step5)) {
                    return;
                }
            } else {
                int i2 = this.s;
                if (i2 == 1) {
                    N(SubStep.Step2, cVar);
                } else if (i2 == 2) {
                    N(SubStep.Step4, cVar);
                } else if (i2 == 3) {
                    N(SubStep.Step5, cVar);
                } else if (eVar.d().m.isBack() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
                    N(SubStep.Step2, cVar);
                } else if (eVar.d().m.isBack() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.i)) {
                    N(SubStep.Step4, cVar);
                } else {
                    N(SubStep.Step1, cVar);
                }
            }
            Pos pos = cVar.p.end;
            Line line = cVar.r;
            new cn.mucang.android.jiakaoyi.signal.pos.c(cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, line.start, line.end), cVar.p.end, cVar.q.end, cVar.r.start);
            this.s = 0;
        }
        if (this.I == 0) {
            this.I = cVar.f3657e;
        }
        P(carPos, cVar);
        if (this.m != null) {
            this.P = cn.mucang.android.jiakaoyi.signal.d.j.a.f(this.P, 1, true);
        }
        Q(carPos, cVar);
        if (this.y != Wheel.None) {
            this.P = cn.mucang.android.jiakaoyi.signal.d.j.a.f(this.P, 2, true);
        }
        if (zG) {
            int iF = cn.mucang.android.jiakaoyi.signal.d.j.a.f(this.P, 3, I(carPos, cVar.w, this.Q));
            this.P = iF;
            int iF2 = cn.mucang.android.jiakaoyi.signal.d.j.a.f(iF, 5, cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j));
            this.P = iF2;
            this.P = cn.mucang.android.jiakaoyi.signal.d.j.a.f(iF2, 4, cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.i));
        }
        M(carPos, cVar);
        if (this.J == null) {
            Line line2 = cVar.i;
            Pos pos2 = line2.start;
            Pos pos3 = line2.end;
            Line line3 = cVar.j;
            this.J = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(pos2, pos3, line3.start, line3.end);
        }
        if (!this.H) {
            this.H = cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, this.J);
        }
        SubStep subStep = this.r;
        SubStep subStep2 = SubStep.Step1;
        if (subStep == subStep2) {
            this.M = false;
            if (eVar.d().m == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
                N(SubStep.Step2, cVar);
                this.E = false;
            }
        }
        SubStep subStep3 = this.r;
        SubStep subStep4 = SubStep.Step2;
        if (subStep3 == subStep4) {
            this.M = false;
            if (zG) {
                this.E = true;
                if (eVar.d().m.isFront() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w)) {
                    FirstPracticeStep firstPracticeStep = FirstPracticeStep.DaoKu_Right;
                    R(firstPracticeStep, cVar, eVar, this.R, false);
                    if (cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f() == firstPracticeStep && eVar.d().c()) {
                        N(SubStep.Step5, cVar);
                    }
                }
            } else if (eVar.d().m.isFront()) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w)) {
                    boolean z5 = this.L;
                    if ((z5 || this.K != SingleType.Right) && !(z5 && this.K == SingleType.Left)) {
                        N(SubStep.Step3, cVar);
                    } else {
                        N(SubStep.Step5, cVar);
                    }
                } else if (eVar.d().b()) {
                    N(subStep2, cVar);
                }
            }
            if (I(carPos, cVar.w, this.Q) && (this.f3695f || eVar.d().m != Gear.GearBack)) {
                this.E = true;
            }
        }
        SubStep subStep5 = this.r;
        SubStep subStep6 = SubStep.Step3;
        if (subStep5 == subStep6) {
            this.M = false;
            if (zG) {
                this.E = true;
                if (eVar.d().m == Gear.GearBack && (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.i) || eVar.d().c())) {
                    N(SubStep.Step4, cVar);
                }
            } else {
                boolean z6 = this.L;
                if ((!z6 && this.K == SingleType.Right) || (z6 && this.K == SingleType.Left)) {
                    N(SubStep.Step5, cVar);
                }
                Line line4 = cVar.j;
                if (cn.mucang.android.jiakaoyi.hpmap.a.a.c.a(carPos, line4.start, line4.end)) {
                    Pos pos4 = carPos.carRect.b;
                    Line line5 = cVar.j;
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos4, line5.start, line5.end) >= 100.0d || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, cVar.v)) {
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                } else {
                    z4 = false;
                }
                if (z4) {
                    boolean z7 = this.L;
                    if ((z7 || this.K != SingleType.Left) && (!z7 || this.K != SingleType.Right)) {
                        N(subStep2, cVar);
                    }
                } else if (eVar.d().m == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.i)) {
                    N(SubStep.Step4, cVar);
                    this.E = false;
                }
            }
        }
        SubStep subStep7 = this.r;
        SubStep subStep8 = SubStep.Step4;
        if (subStep7 == subStep8) {
            this.M = false;
            if (zG) {
                this.E = true;
                if (eVar.d().m.isFront() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w)) {
                    FirstPracticeStep firstPracticeStep2 = FirstPracticeStep.DaoKu_Left;
                    R(firstPracticeStep2, cVar, eVar, this.R, false);
                    if (eVar.d().c()) {
                        if (cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f() == firstPracticeStep2) {
                            N(subStep6, cVar);
                        } else if (cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f() == FirstPracticeStep.DaoKu_Line) {
                            N(SubStep.Step8, cVar);
                        } else if (cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f() == FirstPracticeStep.DaoKu_Right) {
                            N(SubStep.Step5, cVar);
                        }
                    }
                }
            } else {
                if (eVar.d().m.isFront()) {
                    if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar.w)) {
                        boolean z8 = this.L;
                        if ((z8 || this.K != SingleType.Left) && !(z8 && this.K == SingleType.Right)) {
                            N(SubStep.Step5, cVar);
                        } else {
                            N(subStep6, cVar);
                        }
                    } else if (eVar.d().b()) {
                        N(subStep6, cVar);
                    }
                }
                if (I(carPos, cVar.w, this.Q) && (this.f3695f || eVar.d().m != Gear.GearBack)) {
                    this.E = true;
                }
            }
        }
        SubStep subStep9 = this.r;
        SubStep subStep10 = SubStep.Step5;
        if (subStep9 == subStep10) {
            if (zG) {
                this.E = true;
                if (eVar.d().m == Gear.GearBack && (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j) || eVar.d().c())) {
                    N(subStep4, cVar);
                }
            } else {
                boolean z9 = this.L;
                if ((!z9 && this.K == SingleType.Left) || (z9 && this.K == SingleType.Right)) {
                    N(subStep6, cVar);
                }
                Line line6 = cVar.i;
                if (cn.mucang.android.jiakaoyi.hpmap.a.a.c.a(carPos, line6.start, line6.end)) {
                    Pos pos5 = carPos.carRect.c;
                    Line line7 = cVar.i;
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos5, line7.start, line7.end) >= 100.0d || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, cVar.v)) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
                if (z2) {
                    boolean z10 = this.L;
                    if ((z10 || this.K != SingleType.Right) && (!z10 || this.K != SingleType.Left)) {
                        N(subStep6, cVar);
                    }
                } else if (eVar.d().m == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, cVar.j)) {
                    if (this.N || ((!(z3 = this.L) && this.K == SingleType.Right) || (z3 && this.K == SingleType.Left))) {
                        N(subStep4, cVar);
                    } else {
                        this.M = true;
                    }
                    this.E = false;
                }
            }
        }
        SubStep subStep11 = this.r;
        if ((subStep11 == subStep4 || subStep11 == subStep8) && !this.j && cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, cVar.w)) {
            w.P();
        }
        if (zG) {
            SubStep subStep12 = this.r;
            SubStep subStep13 = SubStep.Step8;
            if (subStep12 == subStep13) {
                if (eVar.d().m == Gear.GearBack && eVar.d().c()) {
                    N(SubStep.Step9, cVar);
                }
            } else if (subStep12 == SubStep.Step9) {
                FirstPracticeStep firstPracticeStep3 = FirstPracticeStep.DaoKu_Line;
                R(firstPracticeStep3, cVar, eVar, this.R, false);
                if (eVar.d().c() && eVar.d().m.isFront()) {
                    if (cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f() == firstPracticeStep3) {
                        N(subStep13, cVar);
                    } else if (cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f() == FirstPracticeStep.DaoKu_Left) {
                        N(subStep6, cVar);
                    } else if (cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f() == FirstPracticeStep.DaoKu_Right) {
                        N(subStep10, cVar);
                    }
                }
            }
            R(cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f(), cVar, eVar, this.R, true);
        }
        if (this.I == 3 && this.r == subStep10 && this.G) {
            z = false;
            this.F = false;
        } else {
            z = false;
            this.F = true;
        }
        if (!this.M || this.O) {
            return;
        }
        this.F = z;
    }

    public void N(final SubStep subStep, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        if (this.r == subStep) {
            return;
        }
        this.r = subStep;
        LiveBus.d(SubStepEvent.class).l(new SubStepEvent(subStep.ordinal(), Step.K2_DaoCheRuKu, K(subStep, cVar)));
        if (subStep != SubStep.None) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.s0.a
                @Override // java.lang.Runnable
                public final void run() {
                    w.l(Step.K2_DaoCheRuKu, subStep.ordinal(), false);
                }
            });
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("倒库 : step:" + subStep.ordinal());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2;
        Gear gear = eVar.d().m;
        CarModel.Direction direction = eVar.d().F;
        if (bVar.m(carPos)) {
            this.D = bVar;
        }
        boolean zL = cn.mucang.android.jiakaoyi.hpmap.a.b.a.l(carPos, bVar.n());
        if (zL && direction == CarModel.Direction.Back && gear == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.k())) {
            this.s = 1;
            return true;
        }
        if (zL && direction == CarModel.Direction.Back && gear == Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.f())) {
            this.s = 2;
            return true;
        }
        if (!cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().g() && (bVar2 = this.D) != null && bVar2 == bVar && direction.isForward() && gear.isFront() && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).k)) {
            boolean z = cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).v, carPos.carRect.b) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).v, carPos.carRect.c);
            boolean z2 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).w, carPos.carRect.f5820a) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this.D).w, carPos.carRect.f5821d);
            if (z && z2) {
                this.s = 3;
                return true;
            }
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, bVar.n()) && direction == CarModel.Direction.Forward && gear != Gear.GearBack && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, bVar.f())) {
            return true;
        }
        this.Q.a();
        if (!cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().g() || !I(carPos, ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar).w, this.Q)) {
            return super.d(eVar, carPos, bVar);
        }
        this.s = 4;
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.y = Wheel.None;
        this.m = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        N(SubStep.None, null);
    }

    public c(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> cVar, boolean z) {
        super(list, null, cVar, z);
        this.s = 0;
        this.y = Wheel.None;
        this.F = true;
        this.H = false;
        this.I = 0;
        this.Q = new a(0);
        this.R = new a(0);
        this.S = false;
        this.T = 0;
        this.U = 0L;
        this.V = -1;
        this.N = i0.b("keySwitchStep", true);
        this.O = i0.b("keyJudgePress", true);
    }
}
