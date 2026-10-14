package cn.mucang.android.jiakaoyi.engine.trace;

import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceBehaviorModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceCarDataModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceCarModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceDeductModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceErrorModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceExamShowModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceExtraModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceSignalModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepModel;
import cn.mucang.android.jiakaoyi.engine.trace.site.TraceSiteItemModel;
import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class w {
    private static cn.mucang.android.jiakaoyi.engine.trace.storage.a b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f3199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f3200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f3201f;
    public static cn.mucang.android.jiakaoyi.framework.h.b<Boolean> u;
    private static volatile long x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f3198a = Executors.newSingleThreadExecutor();
    private static volatile int c = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final TraceSignalModel f3202g = new TraceSignalModel();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final TraceCarModel f3203h = new TraceCarModel();
    private static final TraceDeductModel i = new TraceDeductModel();
    private static final TraceErrorModel j = new TraceErrorModel();
    private static final TraceBehaviorModel k = new TraceBehaviorModel();
    private static final TraceExamShowModel l = new TraceExamShowModel();
    private static final TraceStepModel m = new TraceStepModel();
    private static final TraceCarDataModel n = new TraceCarDataModel();
    private static final TraceStepController o = new TraceStepController();
    public static z<List<TraceSiteItemModel>> p = new z<>();
    public static z<String> q = new z<>();
    public static TraceExtraData r = new TraceExtraData();
    public static z<Boolean> s = new z<>();
    public static z<Integer> t = new z<>();
    public static final z<Boolean> v = new z<>(Boolean.FALSE);
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a w = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.engine.trace.h
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            w.L(eVar);
        }
    };

    static /* synthetic */ void A(List list) {
        if (c != 2 || cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Y(DataType.Site.typeId, (TraceSiteItemModel) it.next());
        }
        b.j(DataType.Site.typeId);
    }

    static /* synthetic */ void B(List list) {
        if (c != 2) {
            return;
        }
        b.b(DataType.Deduct.typeId);
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.engine.model.a aVar = (cn.mucang.android.jiakaoyi.engine.model.a) it.next();
            Y(DataType.Deduct.typeId, TraceDeductModel.from(aVar.f3102a, aVar.f3103d, W(aVar.b, f3201f), i));
        }
    }

    static /* synthetic */ void D() {
        cn.mucang.android.jiakaoyi.engine.trace.storage.a aVar;
        if (!r.isRobotExercise() || (aVar = b) == null) {
            return;
        }
        aVar.f(true);
    }

    static /* synthetic */ void E(String str) {
        cn.mucang.android.jiakaoyi.engine.trace.storage.a aVar;
        if (!r.isCircleTrain() || (aVar = b) == null) {
            return;
        }
        aVar.g(str);
        aVar.h(true);
        TraceCacheManager.j(str);
    }

    static /* synthetic */ void F() {
        cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar = u;
        if (bVar != null) {
            bVar.callback(Boolean.TRUE);
        }
    }

    static /* synthetic */ void G() {
        cn.mucang.android.jiakaoyi.engine.trace.storage.a aVar;
        if ((r.isRobotExercise() || r.getType() == 26) && (aVar = b) != null) {
            aVar.h(true);
        }
    }

    static /* synthetic */ void H(String str, String str2, long j2) {
        cn.mucang.android.jiakaoyi.engine.trace.storage.a aVar = b;
        if (aVar != null) {
            aVar.i();
            new Thread(new cn.mucang.android.jiakaoyi.engine.trace.upload.f(b.f3187f)).start();
        }
        b = new cn.mucang.android.jiakaoyi.engine.trace.storage.a(str, str2, q.e(), r);
        f3200e = j2;
        f3201f = System.currentTimeMillis();
        f3199d = j2;
        x = j2;
        c = 2;
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(w);
        j(p.e());
        p.l(Collections.emptyList());
        TraceCarDataModel traceCarDataModel = n;
        if (cn.mucang.android.core.utils.g.d(traceCarDataModel.carPoints)) {
            Y(DataType.CarData.typeId, traceCarDataModel);
        }
        h(r.posMapCode);
        o.i();
    }

    static /* synthetic */ void J(boolean z, boolean z2) {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(w);
        if (c == 2 && b != null) {
            if (z) {
                o.f();
            }
            b.i();
            if (System.currentTimeMillis() - f3201f < 1000) {
                cn.mucang.android.core.utils.m.e(new File(b.f3187f));
            } else {
                new Thread(new cn.mucang.android.jiakaoyi.engine.trace.upload.f(b.f3187f)).start();
            }
            c = 0;
            m(z2);
            b = null;
        }
    }

    static /* synthetic */ void K(Step step) {
        if (c != 2) {
            return;
        }
        int i2 = DataType.Step.typeId;
        TraceStepController traceStepController = o;
        TraceStepModel traceStepModelCreateStep = TraceStepModel.createStep(step, V(f3199d), false, o(), m);
        traceStepController.g(traceStepModelCreateStep);
        Y(i2, traceStepModelCreateStep);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void L(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (c != 2) {
            return;
        }
        long j2 = eVar.d().L;
        f3199d = j2;
        if (j2 - x > 10000) {
            S(true);
            return;
        }
        if (eVar.d().M == 3 && eVar.c().center != null && (eVar.getCurrentPosition().f5282h == 4 || cn.mucang.android.jiakaoyi.framework.utils.n.a())) {
            c(eVar.c().center, (float) eVar.c().degree);
        } else if (eVar.d().M == 1) {
            i(eVar);
        }
    }

    public static void M() {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.s
            @Override // java.lang.Runnable
            public final void run() {
                w.D();
            }
        });
    }

    public static void N(final String str) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.k
            @Override // java.lang.Runnable
            public final void run() {
                w.E(str);
            }
        });
    }

    public static void O() {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.q
            @Override // java.lang.Runnable
            public final void run() {
                w.F();
            }
        });
        o.c();
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.n
            @Override // java.lang.Runnable
            public final void run() {
                w.G();
            }
        });
    }

    public static void P() {
        o.d();
    }

    public static synchronized void Q(final String str, final String str2, final long j2) {
        if (c == 0 && p.e() != null && q.e() != null) {
            c = 1;
            f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.l
                @Override // java.lang.Runnable
                public final void run() {
                    w.H(str, str2, j2);
                }
            });
        }
    }

    public static void R(final Step step, final boolean z) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.e
            @Override // java.lang.Runnable
            public final void run() {
                w.Y(DataType.Step.typeId, w.o.e(TraceStepModel.createStep(step, w.V(w.f3199d), true, w.o(), w.m), z));
            }
        });
    }

    public static void S(boolean z) {
        T(false, z);
    }

    public static void T(final boolean z, final boolean z2) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.u
            @Override // java.lang.Runnable
            public final void run() {
                w.J(z2, z);
            }
        });
    }

    public static void U(final Step step) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.m
            @Override // java.lang.Runnable
            public final void run() {
                w.K(step);
            }
        });
    }

    public static float V(long j2) {
        return ((int) (((j2 - f3200e) * 0.001f) * 10.0f)) / 10.0f;
    }

    public static float W(long j2, long j3) {
        return ((int) (((j2 - j3) * 0.001f) * 10.0f)) / 10.0f;
    }

    public static void X(long j2) {
        if (c == 2) {
            x = j2;
        }
    }

    public static void Y(int i2, Object obj) {
        cn.mucang.android.jiakaoyi.engine.trace.storage.a aVar = b;
        if (aVar == null || obj == null) {
            return;
        }
        aVar.k(i2, JSON.toJSONString(obj));
        if (r.isRobotExam() && (obj instanceof TraceStepModel)) {
            aVar.h(true);
        }
        if (AppUtils.k()) {
            TraceCacheManager.a(obj);
        }
    }

    public static void a(final int i2) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("添加练车行为:" + i2);
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.j
            @Override // java.lang.Runnable
            public final void run() {
                w.r(i2);
            }
        });
    }

    public static void b(final CarPos carPos) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.o
            @Override // java.lang.Runnable
            public final void run() {
                w.s(carPos);
            }
        });
    }

    private static void c(final Pos pos, final float f2) {
        if (c != 2) {
            return;
        }
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.t
            @Override // java.lang.Runnable
            public final void run() {
                w.t(pos, f2);
            }
        });
    }

    public static void d(final Deduct deduct) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.r
            @Override // java.lang.Runnable
            public final void run() {
                w.u(deduct);
            }
        });
    }

    public static void e(final cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.a
            @Override // java.lang.Runnable
            public final void run() {
                w.v(aVar);
            }
        });
    }

    public static void f(final String str, final int i2) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.b
            @Override // java.lang.Runnable
            public final void run() {
                w.w(str, i2);
            }
        });
    }

    public static void g(final String str) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.i
            @Override // java.lang.Runnable
            public final void run() {
                w.x(str);
            }
        });
    }

    private static void h(final String str) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.c
            @Override // java.lang.Runnable
            public final void run() {
                w.y(str);
            }
        });
    }

    private static void i(final cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (c != 2) {
            return;
        }
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.g
            @Override // java.lang.Runnable
            public final void run() {
                w.z(eVar);
            }
        });
    }

    private static void j(final List<TraceSiteItemModel> list) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.d
            @Override // java.lang.Runnable
            public final void run() {
                w.A(list);
            }
        });
    }

    public static void k(final List<cn.mucang.android.jiakaoyi.engine.model.a> list) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.p
            @Override // java.lang.Runnable
            public final void run() {
                w.B(list);
            }
        });
    }

    public static void l(final Step step, final int i2, final boolean z) {
        f3198a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.f
            @Override // java.lang.Runnable
            public final void run() {
                w.Y(DataType.Step.typeId, w.o.a(TraceStepModel.createSubStep(step, w.V(w.f3199d), i2, w.o(), w.m), z));
            }
        });
    }

    private static void m(boolean z) {
        f3202g.clear();
        f3203h.clear();
        if (z) {
            n.clear();
        }
        TraceCacheManager.c(true);
    }

    public static float n(double d2) {
        return ((int) (d2 * 10.0d)) / 10.0f;
    }

    public static boolean o() {
        Boolean boolE = v.e();
        return boolE != null && boolE.booleanValue();
    }

    public static boolean p() {
        return c == 2;
    }

    static /* synthetic */ void r(int i2) {
        if (c == 2) {
            Y(DataType.Behavior.typeId, k.set(i2, V(f3199d)));
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("添加练车行为:" + i2 + " 失败");
    }

    static /* synthetic */ void s(CarPos carPos) {
        if (c != 2) {
            return;
        }
        Y(DataType.CarData.typeId, n.set(carPos));
    }

    static /* synthetic */ void t(Pos pos, float f2) {
        if (c != 2) {
            return;
        }
        Y(DataType.Car.typeId, f3203h.set(XYPos.from(pos), n(f2), V(f3199d)));
    }

    static /* synthetic */ void u(Deduct deduct) {
        if (c != 2) {
            return;
        }
        Y(DataType.Deduct.typeId, TraceDeductModel.from(deduct, null, V(f3199d), i));
    }

    static /* synthetic */ void v(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        if (c != 2) {
            return;
        }
        Y(DataType.Deduct.typeId, TraceDeductModel.from(aVar.f3102a, aVar.f3103d, V(f3199d), i));
    }

    static /* synthetic */ void w(String str, int i2) {
        if (c != 2) {
            return;
        }
        Y(DataType.Error.typeId, j.set(str, i2, V(f3199d)));
    }

    static /* synthetic */ void x(String str) {
        if (c != 2) {
            return;
        }
        Y(DataType.Exam.typeId, l.set(str, V(f3199d)));
    }

    static /* synthetic */ void y(String str) {
        if (c != 2) {
            return;
        }
        LocalCarModel localCarModelB = RealCarSelectManager.b();
        int carCode = localCarModelB != null ? localCarModelB.getCarCode() : 0;
        DataType dataType = DataType.ExtraInfo;
        Y(dataType.typeId, new TraceExtraModel().set(carCode, str));
        b.j(dataType.typeId);
    }

    static /* synthetic */ void z(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (c != 2) {
            return;
        }
        Y(DataType.Signal.typeId, TraceSignalModel.from(eVar, V(f3199d), f3202g));
    }
}
