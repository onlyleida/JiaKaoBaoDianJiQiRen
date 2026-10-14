package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends r {
    private static TimeInterpolator s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<RecyclerView.c0> f1716h = new ArrayList<>();
    private ArrayList<RecyclerView.c0> i = new ArrayList<>();
    private ArrayList<j> j = new ArrayList<>();
    private ArrayList<i> k = new ArrayList<>();
    ArrayList<ArrayList<RecyclerView.c0>> l = new ArrayList<>();
    ArrayList<ArrayList<j>> m = new ArrayList<>();
    ArrayList<ArrayList<i>> n = new ArrayList<>();
    ArrayList<RecyclerView.c0> o = new ArrayList<>();
    ArrayList<RecyclerView.c0> p = new ArrayList<>();
    ArrayList<RecyclerView.c0> q = new ArrayList<>();
    ArrayList<RecyclerView.c0> r = new ArrayList<>();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f1717a;

        a(ArrayList arrayList) {
            this.f1717a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (j jVar : this.f1717a) {
                c.this.T(jVar.f1736a, jVar.b, jVar.c, jVar.f1737d, jVar.f1738e);
            }
            this.f1717a.clear();
            c.this.m.remove(this.f1717a);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f1718a;

        b(ArrayList arrayList) {
            this.f1718a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f1718a.iterator();
            while (it.hasNext()) {
                c.this.S((i) it.next());
            }
            this.f1718a.clear();
            c.this.n.remove(this.f1718a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$c, reason: collision with other inner class name */
    class RunnableC0048c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f1719a;

        RunnableC0048c(ArrayList arrayList) {
            this.f1719a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f1719a.iterator();
            while (it.hasNext()) {
                c.this.R((RecyclerView.c0) it.next());
            }
            this.f1719a.clear();
            c.this.l.remove(this.f1719a);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.c0 f1720a;
        final /* synthetic */ ViewPropertyAnimator b;
        final /* synthetic */ View c;

        d(RecyclerView.c0 c0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f1720a = c0Var;
            this.b = viewPropertyAnimator;
            this.c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.b.setListener(null);
            this.c.setAlpha(1.0f);
            c.this.H(this.f1720a);
            c.this.q.remove(this.f1720a);
            c.this.W();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.I(this.f1720a);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.c0 f1722a;
        final /* synthetic */ View b;
        final /* synthetic */ ViewPropertyAnimator c;

        e(RecyclerView.c0 c0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f1722a = c0Var;
            this.b = view;
            this.c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.c.setListener(null);
            c.this.B(this.f1722a);
            c.this.o.remove(this.f1722a);
            c.this.W();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.C(this.f1722a);
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.c0 f1724a;
        final /* synthetic */ int b;
        final /* synthetic */ View c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1725d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f1726e;

        f(RecyclerView.c0 c0Var, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
            this.f1724a = c0Var;
            this.b = i;
            this.c = view;
            this.f1725d = i2;
            this.f1726e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.b != 0) {
                this.c.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
            if (this.f1725d != 0) {
                this.c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1726e.setListener(null);
            c.this.F(this.f1724a);
            c.this.p.remove(this.f1724a);
            c.this.W();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.G(this.f1724a);
        }
    }

    class g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f1728a;
        final /* synthetic */ ViewPropertyAnimator b;
        final /* synthetic */ View c;

        g(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f1728a = iVar;
            this.b = viewPropertyAnimator;
            this.c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.b.setListener(null);
            this.c.setAlpha(1.0f);
            this.c.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            c.this.D(this.f1728a.f1732a, true);
            c.this.r.remove(this.f1728a.f1732a);
            c.this.W();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.E(this.f1728a.f1732a, true);
        }
    }

    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f1730a;
        final /* synthetic */ ViewPropertyAnimator b;
        final /* synthetic */ View c;

        h(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f1730a = iVar;
            this.b = viewPropertyAnimator;
            this.c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.b.setListener(null);
            this.c.setAlpha(1.0f);
            this.c.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            c.this.D(this.f1730a.b, false);
            c.this.r.remove(this.f1730a.b);
            c.this.W();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.E(this.f1730a.b, false);
        }
    }

    private static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.c0 f1736a;
        public int b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1737d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1738e;

        j(RecyclerView.c0 c0Var, int i, int i2, int i3, int i4) {
            this.f1736a = c0Var;
            this.b = i;
            this.c = i2;
            this.f1737d = i3;
            this.f1738e = i4;
        }
    }

    private void U(RecyclerView.c0 c0Var) {
        View view = c0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.q.add(c0Var);
        viewPropertyAnimatorAnimate.setDuration(o()).alpha(BitmapDescriptorFactory.HUE_RED).setListener(new d(c0Var, viewPropertyAnimatorAnimate, view)).start();
    }

    private void X(List<i> list, RecyclerView.c0 c0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            i iVar = list.get(size);
            if (Z(iVar, c0Var) && iVar.f1732a == null && iVar.b == null) {
                list.remove(iVar);
            }
        }
    }

    private void Y(i iVar) {
        RecyclerView.c0 c0Var = iVar.f1732a;
        if (c0Var != null) {
            Z(iVar, c0Var);
        }
        RecyclerView.c0 c0Var2 = iVar.b;
        if (c0Var2 != null) {
            Z(iVar, c0Var2);
        }
    }

    private boolean Z(i iVar, RecyclerView.c0 c0Var) {
        boolean z = false;
        if (iVar.b == c0Var) {
            iVar.b = null;
        } else {
            if (iVar.f1732a != c0Var) {
                return false;
            }
            iVar.f1732a = null;
            z = true;
        }
        c0Var.itemView.setAlpha(1.0f);
        c0Var.itemView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        c0Var.itemView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        D(c0Var, z);
        return true;
    }

    private void a0(RecyclerView.c0 c0Var) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        c0Var.itemView.animate().setInterpolator(s);
        j(c0Var);
    }

    @Override // androidx.recyclerview.widget.r
    public boolean A(RecyclerView.c0 c0Var) {
        a0(c0Var);
        this.f1716h.add(c0Var);
        return true;
    }

    void R(RecyclerView.c0 c0Var) {
        View view = c0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.o.add(c0Var);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(l()).setListener(new e(c0Var, view, viewPropertyAnimatorAnimate)).start();
    }

    void S(i iVar) {
        RecyclerView.c0 c0Var = iVar.f1732a;
        View view = c0Var == null ? null : c0Var.itemView;
        RecyclerView.c0 c0Var2 = iVar.b;
        View view2 = c0Var2 != null ? c0Var2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(m());
            this.r.add(iVar.f1732a);
            duration.translationX(iVar.f1734e - iVar.c);
            duration.translationY(iVar.f1735f - iVar.f1733d);
            duration.alpha(BitmapDescriptorFactory.HUE_RED).setListener(new g(iVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.r.add(iVar.b);
            viewPropertyAnimatorAnimate.translationX(BitmapDescriptorFactory.HUE_RED).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(m()).alpha(1.0f).setListener(new h(iVar, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    void T(RecyclerView.c0 c0Var, int i2, int i3, int i4, int i5) {
        View view = c0Var.itemView;
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(BitmapDescriptorFactory.HUE_RED);
        }
        if (i7 != 0) {
            view.animate().translationY(BitmapDescriptorFactory.HUE_RED);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.p.add(c0Var);
        viewPropertyAnimatorAnimate.setDuration(n()).setListener(new f(c0Var, i6, view, i7, viewPropertyAnimatorAnimate)).start();
    }

    void V(List<RecyclerView.c0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    void W() {
        if (p()) {
            return;
        }
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean g(RecyclerView.c0 c0Var, List<Object> list) {
        return !list.isEmpty() || super.g(c0Var, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void j(RecyclerView.c0 c0Var) {
        View view = c0Var.itemView;
        view.animate().cancel();
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.j.get(size).f1736a == c0Var) {
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                F(c0Var);
                this.j.remove(size);
            }
        }
        X(this.k, c0Var);
        if (this.f1716h.remove(c0Var)) {
            view.setAlpha(1.0f);
            H(c0Var);
        }
        if (this.i.remove(c0Var)) {
            view.setAlpha(1.0f);
            B(c0Var);
        }
        for (int size2 = this.n.size() - 1; size2 >= 0; size2--) {
            ArrayList<i> arrayList = this.n.get(size2);
            X(arrayList, c0Var);
            if (arrayList.isEmpty()) {
                this.n.remove(size2);
            }
        }
        for (int size3 = this.m.size() - 1; size3 >= 0; size3--) {
            ArrayList<j> arrayList2 = this.m.get(size3);
            for (int size4 = arrayList2.size() - 1; size4 >= 0; size4--) {
                if (arrayList2.get(size4).f1736a == c0Var) {
                    view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    F(c0Var);
                    arrayList2.remove(size4);
                    if (!arrayList2.isEmpty()) {
                        break;
                    }
                    this.m.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = this.l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.c0> arrayList3 = this.l.get(size5);
            if (arrayList3.remove(c0Var)) {
                view.setAlpha(1.0f);
                B(c0Var);
                if (arrayList3.isEmpty()) {
                    this.l.remove(size5);
                }
            }
        }
        this.q.remove(c0Var);
        this.o.remove(c0Var);
        this.r.remove(c0Var);
        this.p.remove(c0Var);
        W();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void k() {
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = this.j.get(size);
            View view = jVar.f1736a.itemView;
            view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            F(jVar.f1736a);
            this.j.remove(size);
        }
        for (int size2 = this.f1716h.size() - 1; size2 >= 0; size2--) {
            H(this.f1716h.get(size2));
            this.f1716h.remove(size2);
        }
        int size3 = this.i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.c0 c0Var = this.i.get(size3);
            c0Var.itemView.setAlpha(1.0f);
            B(c0Var);
            this.i.remove(size3);
        }
        for (int size4 = this.k.size() - 1; size4 >= 0; size4--) {
            Y(this.k.get(size4));
        }
        this.k.clear();
        if (p()) {
            for (int size5 = this.m.size() - 1; size5 >= 0; size5--) {
                ArrayList<j> arrayList = this.m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.f1736a.itemView;
                    view2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    view2.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    F(jVar2.f1736a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.c0> arrayList2 = this.l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.c0 c0Var2 = arrayList2.get(size8);
                    c0Var2.itemView.setAlpha(1.0f);
                    B(c0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.n.size() - 1; size9 >= 0; size9--) {
                ArrayList<i> arrayList3 = this.n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    Y(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.n.remove(arrayList3);
                    }
                }
            }
            V(this.q);
            V(this.p);
            V(this.o);
            V(this.r);
            i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean p() {
        return (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.f1716h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void v() {
        boolean z = !this.f1716h.isEmpty();
        boolean z2 = !this.j.isEmpty();
        boolean z3 = !this.k.isEmpty();
        boolean z4 = !this.i.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.c0> it = this.f1716h.iterator();
            while (it.hasNext()) {
                U(it.next());
            }
            this.f1716h.clear();
            if (z2) {
                ArrayList<j> arrayList = new ArrayList<>();
                arrayList.addAll(this.j);
                this.m.add(arrayList);
                this.j.clear();
                a aVar = new a(arrayList);
                if (z) {
                    ViewCompat.postOnAnimationDelayed(arrayList.get(0).f1736a.itemView, aVar, o());
                } else {
                    aVar.run();
                }
            }
            if (z3) {
                ArrayList<i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.k);
                this.n.add(arrayList2);
                this.k.clear();
                b bVar = new b(arrayList2);
                if (z) {
                    ViewCompat.postOnAnimationDelayed(arrayList2.get(0).f1732a.itemView, bVar, o());
                } else {
                    bVar.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.c0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.i);
                this.l.add(arrayList3);
                this.i.clear();
                RunnableC0048c runnableC0048c = new RunnableC0048c(arrayList3);
                if (z || z2 || z3) {
                    ViewCompat.postOnAnimationDelayed(arrayList3.get(0).itemView, runnableC0048c, (z ? o() : 0L) + Math.max(z2 ? n() : 0L, z3 ? m() : 0L));
                } else {
                    runnableC0048c.run();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.r
    public boolean x(RecyclerView.c0 c0Var) {
        a0(c0Var);
        c0Var.itemView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.i.add(c0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.r
    public boolean y(RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2, int i2, int i3, int i4, int i5) {
        if (c0Var == c0Var2) {
            return z(c0Var, i2, i3, i4, i5);
        }
        float translationX = c0Var.itemView.getTranslationX();
        float translationY = c0Var.itemView.getTranslationY();
        float alpha = c0Var.itemView.getAlpha();
        a0(c0Var);
        int i6 = (int) ((i4 - i2) - translationX);
        int i7 = (int) ((i5 - i3) - translationY);
        c0Var.itemView.setTranslationX(translationX);
        c0Var.itemView.setTranslationY(translationY);
        c0Var.itemView.setAlpha(alpha);
        if (c0Var2 != null) {
            a0(c0Var2);
            c0Var2.itemView.setTranslationX(-i6);
            c0Var2.itemView.setTranslationY(-i7);
            c0Var2.itemView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        this.k.add(new i(c0Var, c0Var2, i2, i3, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.r
    public boolean z(RecyclerView.c0 c0Var, int i2, int i3, int i4, int i5) {
        View view = c0Var.itemView;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) c0Var.itemView.getTranslationY());
        a0(c0Var);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            F(c0Var);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        this.j.add(new j(c0Var, translationX, translationY, i4, i5));
        return true;
    }

    private static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.c0 f1732a;
        public RecyclerView.c0 b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1733d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1734e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1735f;

        private i(RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2) {
            this.f1732a = c0Var;
            this.b = c0Var2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f1732a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.f1733d + ", toX=" + this.f1734e + ", toY=" + this.f1735f + '}';
        }

        i(RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2, int i, int i2, int i3, int i4) {
            this(c0Var, c0Var2);
            this.c = i;
            this.f1733d = i2;
            this.f1734e = i3;
            this.f1735f = i4;
        }
    }
}
