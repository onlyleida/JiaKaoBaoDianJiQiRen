package cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker;

import android.util.Log;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.h;
import cn.mucang.android.jiakaoyi.hpmap.model.ReportStepModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BoundaryChecker<T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> implements cn.mucang.android.jiakaoyi.hpmap.a.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f3684a;
    private final b c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3686e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3687f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3689h;
    public boolean i;
    private Reference<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3688g = false;
    public Boolean j = null;
    private BoundaryState b = BoundaryState.Outside;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3685d = false;

    public enum BoundaryState {
        Outside,
        Report,
        Start,
        End,
        Invalid,
        WaitingStart
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3690a;

        static {
            int[] iArr = new int[BoundaryState.values().length];
            f3690a = iArr;
            try {
                iArr[BoundaryState.WaitingStart.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3690a[BoundaryState.Outside.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3690a[BoundaryState.Invalid.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3690a[BoundaryState.Report.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3690a[BoundaryState.Start.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3690a[BoundaryState.End.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public BoundaryChecker(T t, b bVar, boolean z) {
        this.f3684a = t;
        this.c = bVar;
        this.f3687f = z;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0258  */
    /* JADX WARN: Code duplicated, block: B:102:0x0264  */
    /* JADX WARN: Code duplicated, block: B:103:0x026e  */
    /* JADX WARN: Code duplicated, block: B:105:0x027a  */
    /* JADX WARN: Code duplicated, block: B:106:0x0284  */
    /* JADX WARN: Code duplicated, block: B:107:0x028f  */
    /* JADX WARN: Code duplicated, block: B:109:0x029b  */
    /* JADX WARN: Code duplicated, block: B:110:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:112:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:114:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:140:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:27:0x0077  */
    /* JADX WARN: Code duplicated, block: B:90:0x021c  */
    /* JADX WARN: Code duplicated, block: B:92:0x022a  */
    /* JADX WARN: Code duplicated, block: B:94:0x0236  */
    /* JADX WARN: Code duplicated, block: B:96:0x0242  */
    /* JADX WARN: Code duplicated, block: B:97:0x024a  */
    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.d
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        T t;
        BoundaryState boundaryState;
        this.k = new WeakReference(bVar);
        CarPos carPosC = eVar.c();
        if (carPosC.bound == null || g.b(carPosC.carPoints)) {
            return;
        }
        int i = examProcessor.f3104a.p;
        this.f3689h = i;
        List<Integer> listH = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(i).h();
        if (listH != null && !listH.contains(Integer.valueOf(this.f3684a.s().type))) {
            BoundaryState boundaryState2 = this.b;
            if (boundaryState2 == BoundaryState.Report || boundaryState2 == BoundaryState.Start) {
                b();
                return;
            }
            return;
        }
        switch (a.f3690a[this.b.ordinal()]) {
            case 1:
                Boolean boolValueOf = Boolean.valueOf(this.f3684a.m(carPosC));
                this.j = boolValueOf;
                if (!boolValueOf.booleanValue()) {
                    this.b = BoundaryState.Outside;
                } else {
                    if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(carPosC.carRect, this.f3684a.f().start, this.f3684a.f().end) || (this.f3684a.l() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(carPosC.carRect, this.f3684a.l().start, this.f3684a.l().end))) {
                        this.b = BoundaryState.Report;
                    } else {
                        this.b = BoundaryState.Start;
                    }
                    cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).r(this);
                    if (!this.f3685d) {
                        this.f3685d = true;
                        T t2 = this.f3684a;
                        if (!(t2 instanceof h) && !(t2 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.g)) {
                            LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, false, t2));
                        }
                    }
                }
                break;
            case 2:
                this.f3688g = false;
                if (this.f3687f || !this.c.d(eVar, carPosC, this.f3684a)) {
                    if (this.f3687f) {
                        Boolean boolValueOf2 = Boolean.valueOf(this.f3684a.m(carPosC));
                        this.j = boolValueOf2;
                        if (boolValueOf2.booleanValue()) {
                            this.i = true;
                            if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).j()) {
                                if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).n()) {
                                    if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).m(this)) {
                                        Log.i("Tag", "lian-ku");
                                    } else if (!cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).k()) {
                                        if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).l()) {
                                            cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).e();
                                        } else if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).o()) {
                                            cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).b(this);
                                        } else {
                                            cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).f();
                                        }
                                    }
                                    this.b = BoundaryState.Report;
                                    cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).r(this);
                                    if (!this.f3685d) {
                                        this.f3685d = true;
                                        t = this.f3684a;
                                        if (!(t instanceof h) && !(t instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.g)) {
                                            LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, false, t));
                                        }
                                    }
                                }
                                break;
                            } else if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).l()) {
                                this.b = BoundaryState.Report;
                                cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).r(this);
                                if (!this.f3685d) {
                                    this.f3685d = true;
                                    t = this.f3684a;
                                    if (!(t instanceof h)) {
                                        LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, false, t));
                                    }
                                }
                            } else {
                                cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).e();
                            }
                        }
                    }
                    if (!this.f3684a.b().h(carPosC.bound)) {
                        Boolean boolValueOf3 = Boolean.valueOf(this.f3684a.m(carPosC));
                        this.j = boolValueOf3;
                        if (boolValueOf3.booleanValue() && this.f3684a.e(carPosC) && this.f3684a.f() != null) {
                            Pos pos = this.f3684a.f().start;
                            Pos pos2 = this.f3684a.f().end;
                            cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPosC.carRect;
                            if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos, pos2, cVar.f5820a, cVar.b)) {
                                Pos pos3 = this.f3684a.f().start;
                                Pos pos4 = this.f3684a.f().end;
                                cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPosC.carRect;
                                if (!cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos3, pos4, cVar2.c, cVar2.f5821d)) {
                                    if ((this.f3684a.l() == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(carPosC.carRect, cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(this.f3684a.f().start, this.f3684a.f().end, this.f3684a.l().start, this.f3684a.l().end))) && !AppUtils.k()) {
                                        this.b = BoundaryState.Invalid;
                                        LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.model.b.class).l(new cn.mucang.android.jiakaoyi.hpmap.model.b("非法闯入" + this.f3684a.s().getStepName() + "区域"));
                                    }
                                    this.i = true;
                                } else {
                                    this.i = this.j.booleanValue();
                                }
                            } else {
                                this.i = this.j.booleanValue();
                            }
                        } else {
                            this.i = this.j.booleanValue();
                        }
                    } else {
                        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).v();
                        this.i = false;
                    }
                    break;
                } else {
                    this.i = true;
                    if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).j()) {
                        if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).n()) {
                            if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).m(this)) {
                                Log.i("Tag", "lian-ku");
                            } else if (!cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).k()) {
                                if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).l()) {
                                    cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).e();
                                } else if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).o()) {
                                    cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).b(this);
                                } else {
                                    cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).f();
                                }
                            }
                            this.b = BoundaryState.Report;
                            cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).r(this);
                            if (!this.f3685d) {
                                this.f3685d = true;
                                t = this.f3684a;
                                if (!(t instanceof h)) {
                                    LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, false, t));
                                }
                            }
                        }
                        break;
                    } else if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).l()) {
                        this.b = BoundaryState.Report;
                        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).r(this);
                        if (!this.f3685d) {
                            this.f3685d = true;
                            t = this.f3684a;
                            if (!(t instanceof h)) {
                                LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, false, t));
                            }
                        }
                    } else {
                        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).e();
                    }
                }
                break;
            case 3:
                Boolean boolValueOf4 = Boolean.valueOf(!this.f3684a.v(carPosC));
                this.j = boolValueOf4;
                if (!boolValueOf4.booleanValue() || ((this.f3684a.e(carPosC) && this.f3684a.f() != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, this.f3684a.f()) && eVar.d().F.isForward()) || this.c.b(this.f3684a, carPosC))) {
                    this.b = BoundaryState.Outside;
                }
                break;
            case 4:
                ConflictSignal conflictSignal = ConflictSignal.ClutchTime;
                conflictSignal.data = bVar.f3142e;
                examProcessor.n.c(conflictSignal);
                this.c.o(eVar, carPosC, this.f3684a, examProcessor, this.b);
                if (this.c.f(eVar, carPosC, this.f3684a) || this.f3687f) {
                    this.b = BoundaryState.Start;
                    this.c.n = this;
                    cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).r(this);
                    this.c.f3695f = false;
                    if (!this.f3685d) {
                        this.f3685d = true;
                        LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, false, this.f3684a));
                    }
                } else if (this.f3684a.p(carPosC)) {
                    Boolean boolValueOf5 = Boolean.valueOf(!this.f3684a.v(carPosC));
                    this.j = boolValueOf5;
                    if (!boolValueOf5.booleanValue()) {
                        this.b = BoundaryState.Outside;
                        this.f3685d = false;
                        BoundaryChecker boundaryCheckerI = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).i();
                        if (boundaryCheckerI == null || ((boundaryState = boundaryCheckerI.b) != BoundaryState.Report && boundaryState != BoundaryState.Start)) {
                            LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, true, this.f3684a));
                            LiveBus.c(new ReportStepModel(Step.K2_Global));
                        }
                    }
                }
                if (!this.f3688g) {
                    this.f3688g = true;
                    T t3 = this.f3684a;
                    if (!(t3 instanceof h) && !(t3 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.g)) {
                        LiveBus.c(new ReportStepModel(t3.s()));
                    }
                }
                if (this.c.e(eVar, carPosC, this.f3684a)) {
                    this.f3686e = true;
                }
                break;
            case 5:
                w.v.l(Boolean.valueOf(this.f3684a.r()));
                Boolean boolValueOf6 = Boolean.valueOf(!this.f3684a.v(carPosC));
                this.j = boolValueOf6;
                if (!boolValueOf6.booleanValue() && this.c.c()) {
                    this.c.x(true);
                }
                this.c.n(eVar, carPosC, this.f3684a, examProcessor);
                if (this.c.p()) {
                    this.b = BoundaryState.End;
                    this.c.n = null;
                    T t4 = this.f3684a;
                    if (!(t4 instanceof h) && !(t4 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.g)) {
                        LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, true, t4));
                    }
                }
                break;
            case 6:
                Boolean boolValueOf7 = Boolean.valueOf(!this.f3684a.v(carPosC));
                this.j = boolValueOf7;
                if (!boolValueOf7.booleanValue()) {
                    this.b = BoundaryState.Outside;
                    this.f3686e = false;
                    this.f3685d = false;
                    this.c.x(true);
                    cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).v();
                } else {
                    T t5 = this.f3684a;
                    if ((t5 instanceof h) || (t5 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.g)) {
                        this.b = BoundaryState.Outside;
                        this.f3686e = false;
                        this.f3685d = false;
                        this.c.x(true);
                        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).v();
                    }
                }
                break;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).l()) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).e();
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(this.f3689h).w();
    }

    public void b() {
        this.c.x(true);
        this.c.w();
        this.b = BoundaryState.End;
        this.c.n = null;
        T t = this.f3684a;
        if ((t instanceof h) || (t instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.g)) {
            return;
        }
        LiveBus.c(new cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.a(true, true, t));
    }

    public BoundaryState c() {
        return this.b;
    }

    public boolean d() {
        BoundaryState boundaryState;
        Reference<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> reference = this.k;
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar = reference == null ? null : reference.get();
        return bVar != null && !bVar.j() && bVar.c() && ((boundaryState = this.b) == BoundaryState.Report || boundaryState == BoundaryState.Start || boundaryState == BoundaryState.WaitingStart);
    }

    public void e() {
        this.b = BoundaryState.WaitingStart;
    }
}
