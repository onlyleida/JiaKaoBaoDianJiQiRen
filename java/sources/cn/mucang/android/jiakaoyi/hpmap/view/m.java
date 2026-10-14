package cn.mucang.android.jiakaoyi.hpmap.view;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.OutProject;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    private final MapView b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HandlerThread f3732d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f3733e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f3735g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> f3731a = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final cn.mucang.android.jiakaoyi.hpmap.view.t.a f3736h = new cn.mucang.android.jiakaoyi.hpmap.view.t.a();
    private volatile boolean i = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f3734f = false;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (m.this.f3734f) {
                removeCallbacksAndMessages(null);
                return;
            }
            if (m.this.i) {
                boolean zIsShown = m.this.b.isShown();
                boolean z = m.this.b.getWindowVisibility() == 0;
                if (zIsShown && z && m.this.f3735g && !m.this.f3734f) {
                    m.this.i = false;
                    m.this.p();
                }
            }
            sendEmptyMessageDelayed(1, 8L);
        }
    }

    public m(MapView mapView) {
        this.b = mapView;
        this.c = mapView.getResources().getColor(OutProject.parse(i0.d("keyOutProjectBg", OutProject.Black.type)).color);
    }

    static /* synthetic */ void C() {
    }

    static /* synthetic */ int D(cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar, cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar2) {
        return kVar.f3758a - kVar2.f3758a;
    }

    static /* synthetic */ int E(cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar, cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar2) {
        return kVar.f3758a - kVar2.f3758a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void I(cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar) {
        this.f3731a.remove(kVar);
        kVar.g();
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void K(int i) {
        this.c = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public void G(Pos pos) {
        long jNanoTime = System.nanoTime();
        cn.mucang.android.jiakaoyi.hpmap.view.q.a aVarQ = q(pos);
        if (aVarQ != null) {
            this.b.k(aVarQ.c, aVarQ.b);
        }
        Iterator<cn.mucang.android.jiakaoyi.hpmap.view.p.k> it = this.f3731a.iterator();
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.hpmap.view.p.k next = it.next();
            next.f3759d = aVarQ != null && next == aVarQ.c;
            if (aVarQ != null) {
                next.f3760e = aVarQ.b;
            } else {
                next.f3760e = null;
            }
        }
        Log.e("MapManager", "检测点击 -- 共有" + s().size() + "个元素，消耗时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
        P();
    }

    private void T() {
        this.f3735g = false;
        HandlerThread handlerThread = this.f3732d;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.f3732d = null;
            this.f3733e = null;
        }
    }

    private void l(cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar) {
        m(kVar, false);
    }

    private void m(cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar, boolean z) {
        if (kVar == null || this.f3731a.contains(kVar)) {
            return;
        }
        if (z) {
            this.f3731a.add(0, kVar);
        } else {
            this.f3731a.add(kVar);
        }
        kVar.e();
    }

    private void o(Canvas canvas) {
        canvas.drawColor(this.c);
        if (this.b.f3713a) {
            cn.mucang.android.jiakaoyi.signal.pos.c currentViewport = this.b.getCurrentViewport();
            System.nanoTime();
            List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listS = s();
            this.f3736h.a();
            for (cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar : listS) {
                kVar.b = kVar.d(currentViewport);
            }
            Matrix currentMatrix = this.b.getCurrentMatrix();
            for (cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar2 : listS) {
                if (kVar2.b) {
                    if (this.b.getWindowVisibility() == 0) {
                        kVar2.b(canvas, currentMatrix);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        String str;
        String str2;
        if (this.f3735g) {
            if (this.f3734f) {
                return;
            }
            System.nanoTime();
            try {
                Canvas canvasLockCanvas = this.b.lockCanvas();
                if (canvasLockCanvas != null) {
                    o(canvasLockCanvas);
                } else {
                    Log.e("MapManager", "Canvas == null");
                }
                if (canvasLockCanvas != null) {
                    try {
                        this.b.unlockCanvasAndPost(canvasLockCanvas);
                    } catch (Throwable th) {
                        str = "MapManager";
                        str2 = "Canvas unlock error : " + th.getMessage();
                        Log.e(str, str2);
                    }
                }
            } catch (Throwable th2) {
                try {
                    Log.e("MapManager", "msg : " + th2.getLocalizedMessage());
                    if (0 != 0) {
                        try {
                            this.b.unlockCanvasAndPost(null);
                        } catch (Throwable th3) {
                            str = "MapManager";
                            str2 = "Canvas unlock error : " + th3.getMessage();
                            Log.e(str, str2);
                        }
                    }
                } catch (Throwable th4) {
                    if (0 != 0) {
                        try {
                            this.b.unlockCanvasAndPost(null);
                        } catch (Throwable th5) {
                            Log.e("MapManager", "Canvas unlock error : " + th5.getMessage());
                        }
                    }
                    throw th4;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w(cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar) {
        l(kVar);
        Collections.sort(this.f3731a, new Comparator() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.D((cn.mucang.android.jiakaoyi.hpmap.view.p.k) obj, (cn.mucang.android.jiakaoyi.hpmap.view.p.k) obj2);
            }
        });
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void y(List list, boolean z) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            m((cn.mucang.android.jiakaoyi.hpmap.view.p.k) it.next(), z);
        }
        Collections.sort(this.f3731a, new Comparator() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.E((cn.mucang.android.jiakaoyi.hpmap.view.p.k) obj, (cn.mucang.android.jiakaoyi.hpmap.view.p.k) obj2);
            }
        });
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void A() {
        n();
        P();
    }

    public void L(final Pos pos) {
        if (this.f3734f) {
            return;
        }
        t().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f3720a.G(pos);
            }
        });
    }

    public void N() {
        T();
    }

    public void O() {
        S();
    }

    public void P() {
        if (this.f3734f) {
            return;
        }
        this.i = true;
    }

    public void Q(final cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar) {
        if (this.f3734f || kVar == null) {
            return;
        }
        t().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f3728a.I(kVar);
            }
        });
    }

    public void R(final int i) {
        if (this.f3734f) {
            return;
        }
        t().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f3725a.K(i);
            }
        });
    }

    void S() {
        this.i = true;
        this.f3735g = true;
        this.f3733e = t();
        this.f3734f = false;
    }

    public void g(final cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar) {
        if (this.f3734f || kVar == null) {
            return;
        }
        t().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f3722a.w(kVar);
            }
        });
    }

    public void h(List<? extends cn.mucang.android.jiakaoyi.hpmap.view.p.k> list) {
        i(list, false);
    }

    public void i(List<? extends cn.mucang.android.jiakaoyi.hpmap.view.p.k> list, final boolean z) {
        if (this.f3734f) {
            return;
        }
        final ArrayList arrayList = new ArrayList(list);
        t().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f3723a.y(arrayList, z);
            }
        });
    }

    public void j() {
        if (this.f3734f) {
            return;
        }
        t().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f3726a.A();
            }
        });
    }

    void k() {
        if (this.f3734f) {
            return;
        }
        this.f3734f = true;
        T();
    }

    void n() {
        for (int size = this.f3731a.size() - 1; size >= 0; size--) {
            this.f3731a.get(size).g();
            this.f3731a.remove(size);
        }
    }

    public cn.mucang.android.jiakaoyi.hpmap.view.q.a q(Pos pos) {
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listS = s();
        double dB = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(45.0d);
        ArrayList arrayList = new ArrayList();
        Iterator<cn.mucang.android.jiakaoyi.hpmap.view.p.k> it = listS.iterator();
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.hpmap.view.q.a aVarF = it.next().f(pos, dB);
            if (aVarF != null) {
                arrayList.add(aVarF);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.i
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Double.compare(((cn.mucang.android.jiakaoyi.hpmap.view.q.a) obj).f3772a, ((cn.mucang.android.jiakaoyi.hpmap.view.q.a) obj2).f3772a);
            }
        });
        cn.mucang.android.jiakaoyi.hpmap.view.q.a aVar = (cn.mucang.android.jiakaoyi.hpmap.view.q.a) arrayList.get(0);
        if (aVar.f3772a <= dB) {
            return aVar;
        }
        return null;
    }

    public Handler r() {
        return this.f3733e;
    }

    public List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> s() {
        return new ArrayList(this.f3731a);
    }

    synchronized Handler t() {
        if (this.f3733e == null) {
            try {
                HandlerThread handlerThread = this.f3732d;
                if (handlerThread != null) {
                    handlerThread.quit();
                }
            } catch (Throwable th) {
                t.d("MapManager", "quit error : " + th.getLocalizedMessage());
            }
            HandlerThread handlerThread2 = new HandlerThread("MapCanvasThread");
            this.f3732d = handlerThread2;
            handlerThread2.start();
            a aVar = new a(this.f3732d.getLooper());
            this.f3733e = aVar;
            aVar.sendEmptyMessage(1);
        }
        return this.f3733e;
    }

    public void u() {
        if (this.f3734f) {
            return;
        }
        t().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.c
            @Override // java.lang.Runnable
            public final void run() {
                m.C();
            }
        });
    }
}
