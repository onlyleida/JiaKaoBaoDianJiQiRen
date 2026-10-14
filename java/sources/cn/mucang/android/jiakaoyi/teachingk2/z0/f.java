package cn.mucang.android.jiakaoyi.teachingk2.z0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.calibration.CalibrationCommandManager;
import cn.mucang.android.jiakaoyi.signal.calibration.WheelAction;
import cn.mucang.android.jiakaoyi.signal.com.p;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.i;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.v;
import org.apache.commons.math3.fitting.PolynomialCurveFitter;
import org.apache.commons.math3.fitting.WeightedObservedPoint;
import org.apache.commons.math3.fitting.WeightedObservedPoints;

/* JADX INFO: loaded from: classes4.dex */
public class f {
    private static boolean i = false;
    private static volatile boolean j = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<c> f8786a;
    private final Handler b;
    private double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f8787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f8788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8789f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.i.a f8790g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f8791h;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            f fVar;
            try {
                int i = message.what;
                if (i != 1 || !(message.obj instanceof c)) {
                    if (i == 2) {
                        f.this.f8786a.clear();
                        return;
                    }
                    return;
                }
                f.this.f8788e = true;
                try {
                    f.this.g((c) message.obj);
                    fVar = f.this;
                } catch (Throwable th) {
                    try {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("校准出错:" + q0.d(th));
                        fVar = f.this;
                    } catch (Throwable th2) {
                        f.this.f8788e = false;
                        throw th2;
                    }
                }
                fVar.f8788e = false;
            } catch (Throwable th3) {
                t.d("TAG", "校准出错:" + th3.getLocalizedMessage());
                cn.mucang.android.jiakaoyi.framework.log.f.o("校准出错:" + th3.getLocalizedMessage());
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final f f8793a = new f(null);
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Pos f8794a;
        final float b;
        final long c;

        /* synthetic */ c(Pos pos, float f2, long j, a aVar) {
            this(pos, f2, j);
        }

        private c(Pos pos, float f2, long j) {
            this.f8794a = pos;
            this.b = f2;
            this.c = j;
        }
    }

    /* synthetic */ f(a aVar) {
        this();
    }

    private void d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.f8787d || this.f8788e) {
            return;
        }
        Gps gpsFrom = Gps.from(eVar.getCurrentPosition().f5281g);
        if (this.f8790g == null) {
            this.f8790g = new cn.mucang.android.jiakaoyi.signal.i.b(gpsFrom);
            cn.mucang.android.jiakaoyi.framework.log.f.o("开始方向盘校准...");
        }
        this.b.sendMessage(this.b.obtainMessage(1, new c(this.f8790g.a(gpsFrom), eVar.d().r, eVar.d().L, null)));
    }

    private boolean e(double d2) {
        int i2 = p.b() ? 720 : 18000;
        double dMax = Math.max(0.0d, d2 + ((double) i2));
        cn.mucang.android.jiakaoyi.framework.log.f.o("校准方向盘:" + dMax + ",已+" + i2 + "，size=" + this.f8786a.size());
        final short s = (short) ((int) dMax);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.z0.b
            @Override // java.lang.Runnable
            public final void run() {
                short s2 = s;
                AtomicBoolean atomicBoolean2 = atomicBoolean;
                CountDownLatch countDownLatch2 = countDownLatch;
                new MessageSender(i.class, 0, 1000L, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.z0.e
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.n(s2);
                    }
                }, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.z0.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return f.o(atomicBoolean2, countDownLatch2);
                    }
                }, new Function1() { // from class: cn.mucang.android.jiakaoyi.teachingk2.z0.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return f.p(atomicBoolean2, countDownLatch2, (i) obj);
                    }
                }).i();
            }
        });
        try {
            countDownLatch.await(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            t.d("TAG", "calibrate error=" + e2.getLocalizedMessage());
            cn.mucang.android.jiakaoyi.framework.log.f.o("方向盘校准失败：超时");
        }
        return atomicBoolean.get();
    }

    private void f() {
        Handler handler = this.b;
        if (handler == null) {
            return;
        }
        handler.sendMessage(handler.obtainMessage(2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(c cVar) {
        if (this.f8787d) {
            return;
        }
        if (this.f8786a.size() < 5) {
            this.f8786a.add(cVar);
            return;
        }
        List<c> list = this.f8786a;
        if (list.get(list.size() - 1).f8794a.distanceTo(cVar.f8794a) < 5.0d) {
            return;
        }
        this.f8786a.add(cVar);
        r();
        if (!i(this.f8786a)) {
            if (this.f8786a.size() > 5) {
                Pos pos = this.f8786a.get(0).f8794a;
                List<c> list2 = this.f8786a;
                if (pos.distanceTo(list2.get(list2.size() - 1).f8794a) > 350.0d) {
                    int size = (this.f8786a.size() * 2) / 3;
                    while (this.f8786a.size() > size) {
                        this.f8786a.remove(0);
                    }
                    return;
                }
                return;
            }
            return;
        }
        j = false;
        StringBuilder sb = new StringBuilder();
        for (c cVar2 : this.f8786a) {
            sb.append((int) cVar2.f8794a.x);
            sb.append(",");
            sb.append((int) cVar2.f8794a.y);
            sb.append(",");
            sb.append(cVar2.b);
            sb.append(",");
            sb.append(cVar2.c);
            sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("判断出来在走直线:" + sb.toString());
        double dQ = q();
        cn.mucang.android.jiakaoyi.framework.log.f.o("偏移角度:" + dQ);
        if (Math.abs(dQ) < 5.0d) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("在走直线，但方向盘角度很小，不需要校准。方向盘角度是:" + dQ);
            this.f8787d = true;
            this.f8786a.clear();
            this.f8787d = true;
            return;
        }
        if (Math.abs(dQ) <= 5.0d || Math.abs(dQ - this.c) <= 5.0d) {
            return;
        }
        j = true;
        if (i && e(dQ)) {
            u.h("方向盘自动校准成功");
            cn.mucang.android.jiakaoyi.framework.log.f.o("方向盘校准成功 : " + dQ);
            j = false;
            this.c = dQ;
            this.f8786a.clear();
            this.f8787d = true;
        }
    }

    public static void h(boolean z) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("方向盘校准初始化:" + z);
        i = z;
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        dVar.n(b.f8793a.f8791h);
        dVar.b(b.f8793a.f8791h);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0175  */
    /* JADX WARN: Code duplicated, block: B:49:0x0180 A[LOOP:2: B:47:0x017a->B:49:0x0180, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x019b A[LOOP:3: B:51:0x0195->B:53:0x019b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:56:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:59:0x01e6 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:? A[RETURN, SYNTHETIC] */
    private boolean i(List<c> list) {
        Iterator<c> it;
        double d2;
        double size;
        Iterator<c> it2;
        double dSqrt;
        int size2 = list.size();
        if (size2 < 5) {
            return false;
        }
        int i2 = size2 - 1;
        if (list.get(0).f8794a.distanceTo(list.get(i2).f8794a) < 280.0d || cn.mucang.android.jiakaoyi.hpmap.d.a.k(list.get(size2 / 2).f8794a, list.get(0).f8794a, list.get(i2).f8794a) > 1.0d) {
            return false;
        }
        double d3 = -list.get(0).f8794a.angleTo(list.get(list.size() - 1).f8794a);
        double dCos = Math.cos(d3);
        double dSin = Math.sin(d3);
        Pos pos = new Pos();
        Pos pos2 = list.get(0).f8794a;
        WeightedObservedPoints weightedObservedPoints = new WeightedObservedPoints();
        Iterator<c> it3 = list.iterator();
        while (it3.hasNext()) {
            pos.setPos(it3.next().f8794a);
            WeightedObservedPoints weightedObservedPoints2 = weightedObservedPoints;
            pos.rotate(pos2, dCos, dSin);
            weightedObservedPoints2.add(pos.x, pos.y);
            weightedObservedPoints = weightedObservedPoints2;
        }
        WeightedObservedPoints weightedObservedPoints3 = weightedObservedPoints;
        double[] dArrFit = PolynomialCurveFitter.create(2).fit(weightedObservedPoints3.toList());
        double dAbs = Math.abs(dArrFit[2]);
        if (dAbs > 5.0E-5d) {
            this.f8789f = 0;
            list.clear();
            return false;
        }
        if (dAbs > 7.0E-6d) {
            this.f8789f = 0;
            return false;
        }
        double d4 = 0.0d;
        double dAbs2 = 0.0d;
        for (WeightedObservedPoint weightedObservedPoint : weightedObservedPoints3.toList()) {
            dAbs2 += Math.abs(s(dArrFit, weightedObservedPoint.getX()) - weightedObservedPoint.getY());
        }
        double size3 = dAbs2 / ((double) list.size());
        cn.mucang.android.jiakaoyi.framework.log.f.o("系数:" + dAbs + " , 差异:" + size3);
        if (dAbs > 1.5E-7d || size3 >= 0.3d) {
            if (dAbs <= 4.0E-6d && size3 < 0.2d) {
                this.f8789f = 2;
            } else if (dAbs > 4.9999999999999996E-6d || size3 >= 0.5d) {
                this.f8789f = 0;
            } else {
                this.f8789f++;
            }
            if (this.f8789f >= 2) {
                return false;
            }
            it = list.iterator();
            d2 = 0.0d;
            while (it.hasNext()) {
                d2 += (double) it.next().b;
            }
            size = d2 / ((double) list.size());
            it2 = list.iterator();
            while (it2.hasNext()) {
                float f2 = it2.next().b;
                d4 += (((double) f2) - size) * (((double) f2) - size);
            }
            dSqrt = Math.sqrt(d4 / ((double) list.size()));
            cn.mucang.android.jiakaoyi.framework.log.f.o("方向盘均值:" + size + " ,方向盘角度值方差:" + dSqrt);
            if (dSqrt < (Math.abs(size) > 1000.0d ? 5.0d : 1.5d)) {
                return true;
            }
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("校准直接通过");
        this.f8789f = 2;
        if (this.f8789f >= 2) {
            return false;
        }
        it = list.iterator();
        d2 = 0.0d;
        while (it.hasNext()) {
            d2 += (double) it.next().b;
        }
        size = d2 / ((double) list.size());
        it2 = list.iterator();
        while (it2.hasNext()) {
            float f3 = it2.next().b;
            d4 += (((double) f3) - size) * (((double) f3) - size);
        }
        dSqrt = Math.sqrt(d4 / ((double) list.size()));
        cn.mucang.android.jiakaoyi.framework.log.f.o("方向盘均值:" + size + " ,方向盘角度值方差:" + dSqrt);
        if (dSqrt < (Math.abs(size) > 1000.0d ? 5.0d : 1.5d)) {
            return true;
        }
        return false;
    }

    public static boolean j() {
        return !j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.f8787d && !eVar.d().f()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("熄火了，需要重新校准，当前方向盘角度:" + eVar.d().r);
            this.f8787d = false;
        }
        if (this.f8787d) {
            return;
        }
        if (!eVar.getCurrentPosition().b()) {
            f();
        } else if (eVar.d().M == 3) {
            d(eVar);
        }
    }

    static /* synthetic */ v n(short s) {
        new CalibrationCommandManager().a(WheelAction.CENTER.getAction(), s);
        return null;
    }

    static /* synthetic */ v o(AtomicBoolean atomicBoolean, CountDownLatch countDownLatch) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("方向盘校准超时");
        atomicBoolean.set(false);
        if (countDownLatch.getCount() != 1) {
            return null;
        }
        countDownLatch.countDown();
        return null;
    }

    static /* synthetic */ v p(AtomicBoolean atomicBoolean, CountDownLatch countDownLatch, i iVar) {
        atomicBoolean.set(iVar.f5428a);
        if (countDownLatch.getCount() != 1) {
            return null;
        }
        countDownLatch.countDown();
        return null;
    }

    private double q() {
        int size = this.f8786a.size();
        int i2 = (size * 5) / 6;
        double d2 = 0.0d;
        int i3 = 0;
        for (int i4 = size / 6; i4 <= i2; i4++) {
            d2 += (double) this.f8786a.get(i4).b;
            i3++;
        }
        return d2 / ((double) i3);
    }

    private void r() {
        while (this.f8786a.size() > 5) {
            boolean z = false;
            Pos pos = this.f8786a.get(0).f8794a;
            List<c> list = this.f8786a;
            if (pos.distanceTo(list.get(list.size() - 1).f8794a) > 350.0d) {
                this.f8786a.remove(0);
                z = true;
            }
            if (!z) {
                return;
            }
        }
    }

    private static double s(double[] dArr, double d2) {
        return (dArr[2] * d2 * d2) + (dArr[1] * d2) + dArr[0];
    }

    private f() {
        this.f8790g = null;
        this.f8791h = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.z0.d
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
                this.f8784a.m(eVar);
            }
        };
        this.f8786a = new ArrayList();
        this.c = 0.0d;
        this.f8789f = 0;
        this.f8787d = false;
        this.f8788e = false;
        HandlerThread handlerThread = new HandlerThread("CalibrateSteeringWheel");
        handlerThread.start();
        this.b = new a(handlerThread.getLooper());
    }
}
