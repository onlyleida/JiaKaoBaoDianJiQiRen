package androidx.lifecycle;

import android.annotation.SuppressLint;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class t extends Lifecycle {
    private androidx.arch.core.b.a<q, a> b;
    private Lifecycle.State c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakReference<r> f1520d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1522f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1523g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<Lifecycle.State> f1524h;
    private final boolean i;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Lifecycle.State f1525a;
        o b;

        a(q qVar, Lifecycle.State state) {
            this.b = v.f(qVar);
            this.f1525a = state;
        }

        void a(r rVar, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            this.f1525a = t.k(this.f1525a, targetState);
            this.b.b(rVar, event);
            this.f1525a = targetState;
        }
    }

    public t(r rVar) {
        this(rVar, true);
    }

    private void d(r rVar) {
        Iterator<Map.Entry<q, a>> itDescendingIterator = this.b.descendingIterator();
        while (itDescendingIterator.hasNext() && !this.f1523g) {
            Map.Entry<q, a> next = itDescendingIterator.next();
            a value = next.getValue();
            while (value.f1525a.compareTo(this.c) > 0 && !this.f1523g && this.b.contains(next.getKey())) {
                Lifecycle.Event eventDownFrom = Lifecycle.Event.downFrom(value.f1525a);
                if (eventDownFrom == null) {
                    throw new IllegalStateException("no event down from " + value.f1525a);
                }
                n(eventDownFrom.getTargetState());
                value.a(rVar, eventDownFrom);
                m();
            }
        }
    }

    private Lifecycle.State e(q qVar) {
        Map.Entry<q, a> entryN = this.b.n(qVar);
        Lifecycle.State state = null;
        Lifecycle.State state2 = entryN != null ? entryN.getValue().f1525a : null;
        if (!this.f1524h.isEmpty()) {
            ArrayList<Lifecycle.State> arrayList = this.f1524h;
            state = arrayList.get(arrayList.size() - 1);
        }
        return k(k(this.c, state2), state);
    }

    @SuppressLint({"RestrictedApi"})
    private void f(String str) {
        if (!this.i || androidx.arch.core.a.a.c().a()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    private void g(r rVar) {
        androidx.arch.core.b.b<q, a>.d dVarF = this.b.f();
        while (dVarF.hasNext() && !this.f1523g) {
            Map.Entry next = dVarF.next();
            a aVar = (a) next.getValue();
            while (aVar.f1525a.compareTo(this.c) < 0 && !this.f1523g && this.b.contains((q) next.getKey())) {
                n(aVar.f1525a);
                Lifecycle.Event eventUpFrom = Lifecycle.Event.upFrom(aVar.f1525a);
                if (eventUpFrom == null) {
                    throw new IllegalStateException("no event up from " + aVar.f1525a);
                }
                aVar.a(rVar, eventUpFrom);
                m();
            }
        }
    }

    private boolean i() {
        if (this.b.size() == 0) {
            return true;
        }
        Lifecycle.State state = this.b.a().getValue().f1525a;
        Lifecycle.State state2 = this.b.i().getValue().f1525a;
        return state == state2 && this.c == state2;
    }

    static Lifecycle.State k(Lifecycle.State state, Lifecycle.State state2) {
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    private void l(Lifecycle.State state) {
        if (this.c == state) {
            return;
        }
        this.c = state;
        if (this.f1522f || this.f1521e != 0) {
            this.f1523g = true;
            return;
        }
        this.f1522f = true;
        p();
        this.f1522f = false;
    }

    private void m() {
        ArrayList<Lifecycle.State> arrayList = this.f1524h;
        arrayList.remove(arrayList.size() - 1);
    }

    private void n(Lifecycle.State state) {
        this.f1524h.add(state);
    }

    private void p() {
        r rVar = this.f1520d.get();
        if (rVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (!i()) {
            this.f1523g = false;
            if (this.c.compareTo(this.b.a().getValue().f1525a) < 0) {
                d(rVar);
            }
            Map.Entry<q, a> entryI = this.b.i();
            if (!this.f1523g && entryI != null && this.c.compareTo(entryI.getValue().f1525a) > 0) {
                g(rVar);
            }
        }
        this.f1523g = false;
    }

    @Override // androidx.lifecycle.Lifecycle
    public void a(q qVar) {
        r rVar;
        f("addObserver");
        Lifecycle.State state = this.c;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        a aVar = new a(qVar, state2);
        if (this.b.l(qVar, aVar) == null && (rVar = this.f1520d.get()) != null) {
            boolean z = this.f1521e != 0 || this.f1522f;
            Lifecycle.State stateE = e(qVar);
            this.f1521e++;
            while (aVar.f1525a.compareTo(stateE) < 0 && this.b.contains(qVar)) {
                n(aVar.f1525a);
                Lifecycle.Event eventUpFrom = Lifecycle.Event.upFrom(aVar.f1525a);
                if (eventUpFrom == null) {
                    throw new IllegalStateException("no event up from " + aVar.f1525a);
                }
                aVar.a(rVar, eventUpFrom);
                m();
                stateE = e(qVar);
            }
            if (!z) {
                p();
            }
            this.f1521e--;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    public Lifecycle.State b() {
        return this.c;
    }

    @Override // androidx.lifecycle.Lifecycle
    public void c(q qVar) {
        f("removeObserver");
        this.b.m(qVar);
    }

    public void h(Lifecycle.Event event) {
        f("handleLifecycleEvent");
        l(event.getTargetState());
    }

    @Deprecated
    public void j(Lifecycle.State state) {
        f("markState");
        o(state);
    }

    public void o(Lifecycle.State state) {
        f("setCurrentState");
        l(state);
    }

    private t(r rVar, boolean z) {
        this.b = new androidx.arch.core.b.a<>();
        this.f1521e = 0;
        this.f1522f = false;
        this.f1523g = false;
        this.f1524h = new ArrayList<>();
        this.f1520d = new WeakReference<>(rVar);
        this.c = Lifecycle.State.INITIALIZED;
        this.i = z;
    }
}
