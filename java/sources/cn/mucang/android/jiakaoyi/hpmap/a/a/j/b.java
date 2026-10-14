package cn.mucang.android.jiakaoyi.hpmap.a.a.j;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static final Map<Integer, b> i;
    private volatile int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f3670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f3671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f3672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f3673g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f3669a = new a();
    private volatile Reference<InterfaceC0107b> c = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile List<Integer> f3674h = null;

    class a implements cn.mucang.android.jiakaoyi.framework.h.b<Boolean> {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(Boolean bool) {
            b.this.b = bool.booleanValue() ? 2 : 4;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.hpmap.a.a.j.b$b, reason: collision with other inner class name */
    public interface InterfaceC0107b {
        void d(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar2);
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        i = concurrentHashMap;
        concurrentHashMap.put(1, new b(1));
        concurrentHashMap.put(2, new b(2));
        concurrentHashMap.put(5, new b(5));
    }

    private b(int i2) {
        a aVar = null;
        this.f3670d = new c(aVar);
        this.f3671e = new c(aVar);
        this.f3672f = new c(aVar);
        this.f3673g = new c(aVar);
        String str = "AskTag-" + i2;
    }

    public static void d() {
        Iterator<Map.Entry<Integer, b>> it = i.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().c();
        }
    }

    public static b g(int i2) {
        Map<Integer, b> map = i;
        b bVar = map.get(Integer.valueOf(i2));
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(i2);
        map.put(Integer.valueOf(i2), bVar2);
        return bVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(InterfaceC0107b interfaceC0107b, BoundaryChecker boundaryChecker) {
        interfaceC0107b.d(boundaryChecker.f3684a, this.f3669a);
    }

    public static void u(List<Integer> list) {
        for (Map.Entry<Integer, b> entry : i.entrySet()) {
            if (entry.getKey().intValue() != 1) {
                entry.getValue().s(list);
            }
        }
    }

    public void b(final BoundaryChecker boundaryChecker) {
        BoundaryChecker boundaryCheckerE;
        BoundaryChecker boundaryCheckerE2;
        final InterfaceC0107b interfaceC0107b;
        if (this.b == 1 || l() || k() || this.f3673g.f() || boundaryChecker == null || this.f3670d.g(boundaryChecker) || (boundaryCheckerE = this.f3670d.e()) == null || boundaryCheckerE == boundaryChecker || boundaryChecker.f3684a.getClass() == boundaryCheckerE.f3684a.getClass()) {
            return;
        }
        BoundaryChecker boundaryCheckerE3 = this.f3671e.e();
        if ((boundaryCheckerE3 != null && boundaryCheckerE3 == boundaryChecker) || this.f3671e.g(boundaryChecker) || this.f3672f.g(boundaryChecker) || (boundaryCheckerE2 = this.f3672f.e()) == boundaryChecker || boundaryCheckerE2 != null) {
            return;
        }
        this.f3672f.h(boundaryChecker);
        this.b = 1;
        Reference<InterfaceC0107b> reference = this.c;
        if (reference == null || (interfaceC0107b = reference.get()) == null) {
            return;
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.a.a.j.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f3668a.q(interfaceC0107b, boundaryChecker);
            }
        });
    }

    public void c() {
        this.b = 0;
        this.f3672f.b();
        this.f3670d.b();
        this.f3671e.b();
        this.f3673g.b();
        this.f3674h = null;
    }

    public void e() {
        if (this.b == 2) {
            this.f3672f.a();
            this.b = 3;
            this.f3671e.i(this.f3670d);
            this.f3670d.c();
            this.f3672f.j();
            this.f3673g.i(this.f3672f);
            this.f3670d.i(this.f3672f);
            this.f3672f.b();
        }
    }

    public void f() {
        this.f3671e.i(this.f3672f);
    }

    public List<Integer> h() {
        return this.f3674h;
    }

    public BoundaryChecker i() {
        return this.f3670d.e();
    }

    public boolean j() {
        return this.f3670d.f();
    }

    public boolean k() {
        return this.b == 3;
    }

    public boolean l() {
        return this.b == 2;
    }

    public boolean m(BoundaryChecker boundaryChecker) {
        return this.f3670d.d(boundaryChecker);
    }

    public boolean n() {
        Reference<InterfaceC0107b> reference = this.c;
        return (reference == null || reference.get() == null) ? false : true;
    }

    public boolean o() {
        return this.b == 4;
    }

    public void r(BoundaryChecker boundaryChecker) {
        this.f3670d.h(boundaryChecker);
    }

    public void s(List<Integer> list) {
        this.f3674h = list;
    }

    public void t(InterfaceC0107b interfaceC0107b) {
        if (interfaceC0107b == null) {
            this.c = null;
        } else {
            this.c = new WeakReference(interfaceC0107b);
        }
    }

    public void v() {
    }

    public void w() {
        if (!this.f3673g.f() && this.b == 3) {
            this.f3671e.b();
            this.f3672f.b();
            this.b = 0;
        } else {
            if (this.f3670d.f() || this.b != 1) {
                return;
            }
            this.f3671e.b();
            this.f3672f.b();
            this.b = 0;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Reference<BoundaryChecker> f3676a;

        private c() {
            this.f3676a = null;
        }

        boolean a() {
            BoundaryChecker boundaryCheckerE = e();
            if (boundaryCheckerE != null) {
                return boundaryCheckerE.i;
            }
            return false;
        }

        void b() {
            Reference<BoundaryChecker> reference = this.f3676a;
            if (reference != null) {
                reference.clear();
            }
        }

        void c() {
            BoundaryChecker boundaryCheckerE;
            if (!f() || (boundaryCheckerE = e()) == null) {
                return;
            }
            boundaryCheckerE.b();
        }

        boolean d(BoundaryChecker boundaryChecker) {
            BoundaryChecker boundaryCheckerE = e();
            return (boundaryCheckerE == null || boundaryChecker == null || (boundaryChecker != boundaryCheckerE && boundaryChecker.f3684a != boundaryCheckerE.f3684a)) ? false : true;
        }

        BoundaryChecker e() {
            Reference<BoundaryChecker> reference = this.f3676a;
            if (reference == null) {
                return null;
            }
            return reference.get();
        }

        boolean f() {
            BoundaryChecker boundaryCheckerE = e();
            return boundaryCheckerE != null && boundaryCheckerE.d();
        }

        boolean g(BoundaryChecker boundaryChecker) {
            T t;
            BoundaryChecker boundaryCheckerE = e();
            if (boundaryCheckerE == null || boundaryChecker == null) {
                return false;
            }
            return boundaryChecker == boundaryCheckerE || (t = boundaryChecker.f3684a) == boundaryCheckerE.f3684a || t.getClass() == boundaryCheckerE.f3684a.getClass();
        }

        void h(BoundaryChecker boundaryChecker) {
            if (boundaryChecker != null) {
                this.f3676a = new WeakReference(boundaryChecker);
                return;
            }
            Reference<BoundaryChecker> reference = this.f3676a;
            if (reference != null) {
                reference.clear();
            }
        }

        void i(c cVar) {
            if (cVar.f()) {
                h(cVar.e());
            }
        }

        boolean j() {
            BoundaryChecker boundaryCheckerE = e();
            if (boundaryCheckerE == null) {
                return false;
            }
            boundaryCheckerE.e();
            return true;
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }
}
