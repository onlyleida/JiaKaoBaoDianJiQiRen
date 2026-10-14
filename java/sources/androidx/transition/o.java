package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f1878a = new b();
    private static ThreadLocal<WeakReference<androidx.collection.a<ViewGroup, ArrayList<m>>>> b = new ThreadLocal<>();
    static ArrayList<ViewGroup> c = new ArrayList<>();

    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        m f1879a;
        ViewGroup b;

        /* JADX INFO: renamed from: androidx.transition.o$a$a, reason: collision with other inner class name */
        class C0052a extends n {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ androidx.collection.a f1880a;

            C0052a(androidx.collection.a aVar) {
                this.f1880a = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.transition.m.g
            public void onTransitionEnd(m mVar) {
                ((ArrayList) this.f1880a.get(a.this.b)).remove(mVar);
                mVar.removeListener(this);
            }
        }

        a(m mVar, ViewGroup viewGroup) {
            this.f1879a = mVar;
            this.b = viewGroup;
        }

        private void a() {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!o.c.remove(this.b)) {
                return true;
            }
            androidx.collection.a<ViewGroup, ArrayList<m>> aVarB = o.b();
            ArrayList<m> arrayList = aVarB.get(this.b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                aVarB.put(this.b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f1879a);
            this.f1879a.addListener(new C0052a(aVarB));
            this.f1879a.captureValues(this.b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((m) it.next()).resume(this.b);
                }
            }
            this.f1879a.playTransition(this.b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            o.c.remove(this.b);
            ArrayList<m> arrayList = o.b().get(this.b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<m> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().resume(this.b);
                }
            }
            this.f1879a.clearValues(true);
        }
    }

    public static void a(ViewGroup viewGroup, m mVar) {
        if (c.contains(viewGroup) || !ViewCompat.isLaidOut(viewGroup)) {
            return;
        }
        c.add(viewGroup);
        if (mVar == null) {
            mVar = f1878a;
        }
        m mVarMo0clone = mVar.mo0clone();
        d(viewGroup, mVarMo0clone);
        k.c(viewGroup, null);
        c(viewGroup, mVarMo0clone);
    }

    static androidx.collection.a<ViewGroup, ArrayList<m>> b() {
        androidx.collection.a<ViewGroup, ArrayList<m>> aVar;
        WeakReference<androidx.collection.a<ViewGroup, ArrayList<m>>> weakReference = b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        androidx.collection.a<ViewGroup, ArrayList<m>> aVar2 = new androidx.collection.a<>();
        b.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    private static void c(ViewGroup viewGroup, m mVar) {
        if (mVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(mVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static void d(ViewGroup viewGroup, m mVar) {
        ArrayList<m> arrayList = b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<m> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().pause(viewGroup);
            }
        }
        if (mVar != null) {
            mVar.captureValues(viewGroup, true);
        }
        k kVarB = k.b(viewGroup);
        if (kVarB != null) {
            kVarB.a();
        }
    }
}
