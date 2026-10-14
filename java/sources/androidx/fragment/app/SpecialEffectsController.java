package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
abstract class SpecialEffectsController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f1317a;
    final ArrayList<Operation> b = new ArrayList<>();
    final ArrayList<Operation> c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1318d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1319e = false;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f1326a;

        a(d dVar) {
            this.f1326a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SpecialEffectsController.this.b.contains(this.f1326a)) {
                this.f1326a.e().applyState(this.f1326a.f().mView);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f1327a;

        b(d dVar) {
            this.f1327a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            SpecialEffectsController.this.b.remove(this.f1327a);
            SpecialEffectsController.this.c.remove(this.f1327a);
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1328a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            b = iArr;
            try {
                iArr[Operation.LifecycleImpact.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[Operation.LifecycleImpact.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[Operation.LifecycleImpact.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Operation.State.values().length];
            f1328a = iArr2;
            try {
                iArr2[Operation.State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1328a[Operation.State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1328a[Operation.State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1328a[Operation.State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static class d extends Operation {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final r f1329h;

        d(Operation.State state, Operation.LifecycleImpact lifecycleImpact, r rVar, androidx.core.os.b bVar) {
            super(state, lifecycleImpact, rVar.k(), bVar);
            this.f1329h = rVar;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void c() {
            super.c();
            this.f1329h.m();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        void l() {
            if (g() == Operation.LifecycleImpact.ADDING) {
                Fragment fragmentK = this.f1329h.k();
                View viewFindFocus = fragmentK.mView.findFocus();
                if (viewFindFocus != null) {
                    fragmentK.setFocusedView(viewFindFocus);
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragmentK);
                    }
                }
                View viewRequireView = f().requireView();
                if (viewRequireView.getParent() == null) {
                    this.f1329h.b();
                    viewRequireView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                if (viewRequireView.getAlpha() == BitmapDescriptorFactory.HUE_RED && viewRequireView.getVisibility() == 0) {
                    viewRequireView.setVisibility(4);
                }
                viewRequireView.setAlpha(fragmentK.getPostOnViewCreatedAlpha());
            }
        }
    }

    SpecialEffectsController(ViewGroup viewGroup) {
        this.f1317a = viewGroup;
    }

    private void a(Operation.State state, Operation.LifecycleImpact lifecycleImpact, r rVar) {
        synchronized (this.b) {
            androidx.core.os.b bVar = new androidx.core.os.b();
            Operation operationH = h(rVar.k());
            if (operationH != null) {
                operationH.k(state, lifecycleImpact);
                return;
            }
            d dVar = new d(state, lifecycleImpact, rVar, bVar);
            this.b.add(dVar);
            dVar.a(new a(dVar));
            dVar.a(new b(dVar));
        }
    }

    private Operation h(Fragment fragment) {
        for (Operation operation : this.b) {
            if (operation.f().equals(fragment) && !operation.h()) {
                return operation;
            }
        }
        return null;
    }

    private Operation i(Fragment fragment) {
        for (Operation operation : this.c) {
            if (operation.f().equals(fragment) && !operation.h()) {
                return operation;
            }
        }
        return null;
    }

    static SpecialEffectsController n(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return o(viewGroup, fragmentManager.A0());
    }

    static SpecialEffectsController o(ViewGroup viewGroup, a0 a0Var) {
        int i = R.id.special_effects_controller_view_tag;
        Object tag = viewGroup.getTag(i);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        SpecialEffectsController specialEffectsControllerA = a0Var.a(viewGroup);
        viewGroup.setTag(i, specialEffectsControllerA);
        return specialEffectsControllerA;
    }

    private void q() {
        for (Operation operation : this.b) {
            if (operation.g() == Operation.LifecycleImpact.ADDING) {
                operation.k(Operation.State.from(operation.f().requireView().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    void b(Operation.State state, r rVar) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + rVar.k());
        }
        a(state, Operation.LifecycleImpact.ADDING, rVar);
    }

    void c(r rVar) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + rVar.k());
        }
        a(Operation.State.GONE, Operation.LifecycleImpact.NONE, rVar);
    }

    void d(r rVar) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + rVar.k());
        }
        a(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, rVar);
    }

    void e(r rVar) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + rVar.k());
        }
        a(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, rVar);
    }

    abstract void f(List<Operation> list, boolean z);

    void g() {
        if (this.f1319e) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.f1317a)) {
            j();
            this.f1318d = false;
            return;
        }
        synchronized (this.b) {
            if (!this.b.isEmpty()) {
                ArrayList<Operation> arrayList = new ArrayList(this.c);
                this.c.clear();
                for (Operation operation : arrayList) {
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + operation);
                    }
                    operation.b();
                    if (!operation.i()) {
                        this.c.add(operation);
                    }
                }
                q();
                ArrayList arrayList2 = new ArrayList(this.b);
                this.b.clear();
                this.c.addAll(arrayList2);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Operation) it.next()).l();
                }
                f(arrayList2, this.f1318d);
                this.f1318d = false;
            }
        }
    }

    void j() {
        boolean zIsAttachedToWindow = ViewCompat.isAttachedToWindow(this.f1317a);
        synchronized (this.b) {
            q();
            Iterator<Operation> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().l();
            }
            for (Operation operation : new ArrayList(this.c)) {
                if (FragmentManager.H0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    sb.append(zIsAttachedToWindow ? "" : "Container " + this.f1317a + " is not attached to window. ");
                    sb.append("Cancelling running operation ");
                    sb.append(operation);
                    Log.v("FragmentManager", sb.toString());
                }
                operation.b();
            }
            for (Operation operation2 : new ArrayList(this.b)) {
                if (FragmentManager.H0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    sb2.append(zIsAttachedToWindow ? "" : "Container " + this.f1317a + " is not attached to window. ");
                    sb2.append("Cancelling pending operation ");
                    sb2.append(operation2);
                    Log.v("FragmentManager", sb2.toString());
                }
                operation2.b();
            }
        }
    }

    void k() {
        if (this.f1319e) {
            this.f1319e = false;
            g();
        }
    }

    Operation.LifecycleImpact l(r rVar) {
        Operation operationH = h(rVar.k());
        Operation.LifecycleImpact lifecycleImpactG = operationH != null ? operationH.g() : null;
        Operation operationI = i(rVar.k());
        return (operationI == null || !(lifecycleImpactG == null || lifecycleImpactG == Operation.LifecycleImpact.NONE)) ? lifecycleImpactG : operationI.g();
    }

    public ViewGroup m() {
        return this.f1317a;
    }

    void p() {
        synchronized (this.b) {
            q();
            this.f1319e = false;
            for (int size = this.b.size() - 1; size >= 0; size--) {
                Operation operation = this.b.get(size);
                Operation.State stateFrom = Operation.State.from(operation.f().mView);
                Operation.State stateE = operation.e();
                Operation.State state = Operation.State.VISIBLE;
                if (stateE == state && stateFrom != state) {
                    this.f1319e = operation.f().isPostponed();
                    break;
                }
            }
        }
    }

    void r(boolean z) {
        this.f1318d = z;
    }

    static class Operation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private State f1320a;
        private LifecycleImpact b;
        private final Fragment c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<Runnable> f1321d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final HashSet<androidx.core.os.b> f1322e = new HashSet<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f1323f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f1324g = false;

        enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        class a implements androidx.core.os.b.a {
            a() {
            }

            @Override // androidx.core.os.b.a
            public void onCancel() {
                Operation.this.b();
            }
        }

        Operation(State state, LifecycleImpact lifecycleImpact, Fragment fragment, androidx.core.os.b bVar) {
            this.f1320a = state;
            this.b = lifecycleImpact;
            this.c = fragment;
            bVar.c(new a());
        }

        final void a(Runnable runnable) {
            this.f1321d.add(runnable);
        }

        final void b() {
            if (h()) {
                return;
            }
            this.f1323f = true;
            if (this.f1322e.isEmpty()) {
                c();
                return;
            }
            Iterator it = new ArrayList(this.f1322e).iterator();
            while (it.hasNext()) {
                ((androidx.core.os.b) it.next()).a();
            }
        }

        public void c() {
            if (this.f1324g) {
                return;
            }
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f1324g = true;
            Iterator<Runnable> it = this.f1321d.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }

        public final void d(androidx.core.os.b bVar) {
            if (this.f1322e.remove(bVar) && this.f1322e.isEmpty()) {
                c();
            }
        }

        public State e() {
            return this.f1320a;
        }

        public final Fragment f() {
            return this.c;
        }

        LifecycleImpact g() {
            return this.b;
        }

        final boolean h() {
            return this.f1323f;
        }

        final boolean i() {
            return this.f1324g;
        }

        public final void j(androidx.core.os.b bVar) {
            l();
            this.f1322e.add(bVar);
        }

        final void k(State state, LifecycleImpact lifecycleImpact) {
            int i = c.b[lifecycleImpact.ordinal()];
            if (i == 1) {
                if (this.f1320a == State.REMOVED) {
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.b + " to ADDING.");
                    }
                    this.f1320a = State.VISIBLE;
                    this.b = LifecycleImpact.ADDING;
                    return;
                }
                return;
            }
            if (i == 2) {
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.c + " mFinalState = " + this.f1320a + " -> REMOVED. mLifecycleImpact  = " + this.b + " to REMOVING.");
                }
                this.f1320a = State.REMOVED;
                this.b = LifecycleImpact.REMOVING;
                return;
            }
            if (i == 3 && this.f1320a != State.REMOVED) {
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.c + " mFinalState = " + this.f1320a + " -> " + state + ". ");
                }
                this.f1320a = state;
            }
        }

        void l() {
        }

        public String toString() {
            return "Operation " + VectorFormat.DEFAULT_PREFIX + Integer.toHexString(System.identityHashCode(this)) + "} " + VectorFormat.DEFAULT_PREFIX + "mFinalState = " + this.f1320a + "} " + VectorFormat.DEFAULT_PREFIX + "mLifecycleImpact = " + this.b + "} " + VectorFormat.DEFAULT_PREFIX + "mFragment = " + this.c + VectorFormat.DEFAULT_SUFFIX;
        }

        enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            static State from(View view) {
                return (view.getAlpha() == BitmapDescriptorFactory.HUE_RED && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            void applyState(View view) {
                int i = c.f1328a[ordinal()];
                if (i == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.H0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i == 3) {
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i != 4) {
                    return;
                }
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }

            static State from(int i) {
                if (i == 0) {
                    return VISIBLE;
                }
                if (i == 4) {
                    return INVISIBLE;
                }
                if (i == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i);
            }
        }
    }
}
