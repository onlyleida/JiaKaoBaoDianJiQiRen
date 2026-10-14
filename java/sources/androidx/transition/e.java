package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public class e extends androidx.fragment.app.x {

    class a extends m.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f1840a;

        a(e eVar, Rect rect) {
            this.f1840a = rect;
        }

        @Override // androidx.transition.m.f
        public Rect a(m mVar) {
            return this.f1840a;
        }
    }

    class b implements m.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f1841a;
        final /* synthetic */ ArrayList b;

        b(e eVar, View view, ArrayList arrayList) {
            this.f1841a = view;
            this.b = arrayList;
        }

        @Override // androidx.transition.m.g
        public void onTransitionCancel(m mVar) {
        }

        @Override // androidx.transition.m.g
        public void onTransitionEnd(m mVar) {
            mVar.removeListener(this);
            this.f1841a.setVisibility(8);
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.b.get(i)).setVisibility(0);
            }
        }

        @Override // androidx.transition.m.g
        public void onTransitionPause(m mVar) {
        }

        @Override // androidx.transition.m.g
        public void onTransitionResume(m mVar) {
        }

        @Override // androidx.transition.m.g
        public void onTransitionStart(m mVar) {
        }
    }

    class c extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f1842a;
        final /* synthetic */ ArrayList b;
        final /* synthetic */ Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ArrayList f1843d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f1844e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f1845f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f1842a = obj;
            this.b = arrayList;
            this.c = obj2;
            this.f1843d = arrayList2;
            this.f1844e = obj3;
            this.f1845f = arrayList3;
        }

        @Override // androidx.transition.m.g
        public void onTransitionEnd(m mVar) {
            mVar.removeListener(this);
        }

        @Override // androidx.transition.n, androidx.transition.m.g
        public void onTransitionStart(m mVar) {
            Object obj = this.f1842a;
            if (obj != null) {
                e.this.q(obj, this.b, null);
            }
            Object obj2 = this.c;
            if (obj2 != null) {
                e.this.q(obj2, this.f1843d, null);
            }
            Object obj3 = this.f1844e;
            if (obj3 != null) {
                e.this.q(obj3, this.f1845f, null);
            }
        }
    }

    class d extends m.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f1847a;

        d(e eVar, Rect rect) {
            this.f1847a = rect;
        }

        @Override // androidx.transition.m.f
        public Rect a(m mVar) {
            Rect rect = this.f1847a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f1847a;
        }
    }

    private static boolean C(m mVar) {
        return (androidx.fragment.app.x.l(mVar.getTargetIds()) && androidx.fragment.app.x.l(mVar.getTargetNames()) && androidx.fragment.app.x.l(mVar.getTargetTypes())) ? false : true;
    }

    @Override // androidx.fragment.app.x
    public void A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        q qVar = (q) obj;
        if (qVar != null) {
            qVar.getTargets().clear();
            qVar.getTargets().addAll(arrayList2);
            q(qVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.x
    public Object B(Object obj) {
        if (obj == null) {
            return null;
        }
        q qVar = new q();
        qVar.g((m) obj);
        return qVar;
    }

    @Override // androidx.fragment.app.x
    public void a(Object obj, View view) {
        if (obj != null) {
            ((m) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.x
    public void b(Object obj, ArrayList<View> arrayList) {
        m mVar = (m) obj;
        if (mVar == null) {
            return;
        }
        int i = 0;
        if (mVar instanceof q) {
            q qVar = (q) mVar;
            int iJ = qVar.j();
            while (i < iJ) {
                b(qVar.i(i), arrayList);
                i++;
            }
            return;
        }
        if (C(mVar) || !androidx.fragment.app.x.l(mVar.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            mVar.addTarget(arrayList.get(i));
            i++;
        }
    }

    @Override // androidx.fragment.app.x
    public void c(ViewGroup viewGroup, Object obj) {
        o.a(viewGroup, (m) obj);
    }

    @Override // androidx.fragment.app.x
    public boolean e(Object obj) {
        return obj instanceof m;
    }

    @Override // androidx.fragment.app.x
    public Object g(Object obj) {
        if (obj != null) {
            return ((m) obj).mo0clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.x
    public Object m(Object obj, Object obj2, Object obj3) {
        m mVar = (m) obj;
        m mVar2 = (m) obj2;
        m mVar3 = (m) obj3;
        if (mVar != null && mVar2 != null) {
            q qVar = new q();
            qVar.g(mVar);
            qVar.g(mVar2);
            qVar.s(1);
            mVar = qVar;
        } else if (mVar == null) {
            mVar = mVar2 != null ? mVar2 : null;
        }
        if (mVar3 == null) {
            return mVar;
        }
        q qVar2 = new q();
        if (mVar != null) {
            qVar2.g(mVar);
        }
        qVar2.g(mVar3);
        return qVar2;
    }

    @Override // androidx.fragment.app.x
    public Object n(Object obj, Object obj2, Object obj3) {
        q qVar = new q();
        if (obj != null) {
            qVar.g((m) obj);
        }
        if (obj2 != null) {
            qVar.g((m) obj2);
        }
        if (obj3 != null) {
            qVar.g((m) obj3);
        }
        return qVar;
    }

    @Override // androidx.fragment.app.x
    public void p(Object obj, View view) {
        if (obj != null) {
            ((m) obj).removeTarget(view);
        }
    }

    @Override // androidx.fragment.app.x
    public void q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        m mVar = (m) obj;
        int i = 0;
        if (mVar instanceof q) {
            q qVar = (q) mVar;
            int iJ = qVar.j();
            while (i < iJ) {
                q(qVar.i(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (C(mVar)) {
            return;
        }
        List<View> targets = mVar.getTargets();
        if (targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i < size) {
                mVar.addTarget(arrayList2.get(i));
                i++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                mVar.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.x
    public void r(Object obj, View view, ArrayList<View> arrayList) {
        ((m) obj).addListener(new b(this, view, arrayList));
    }

    @Override // androidx.fragment.app.x
    public void t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((m) obj).addListener(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.x
    public void u(Object obj, Rect rect) {
        if (obj != null) {
            ((m) obj).setEpicenterCallback(new d(this, rect));
        }
    }

    @Override // androidx.fragment.app.x
    public void v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            k(view, rect);
            ((m) obj).setEpicenterCallback(new a(this, rect));
        }
    }

    @Override // androidx.fragment.app.x
    public void z(Object obj, View view, ArrayList<View> arrayList) {
        q qVar = (q) obj;
        List<View> targets = qVar.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            androidx.fragment.app.x.d(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        b(qVar, arrayList);
    }
}
