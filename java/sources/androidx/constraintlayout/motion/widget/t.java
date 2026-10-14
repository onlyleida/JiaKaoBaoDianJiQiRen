package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MotionLayout f822a;
    private HashSet<View> c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList<s.b> f824e;
    private ArrayList<s> b = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f823d = "ViewTransitionController";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList<s.b> f825f = new ArrayList<>();

    class a implements androidx.constraintlayout.widget.g.a {
        a(t tVar, s sVar, int i, boolean z, int i2) {
        }
    }

    public t(MotionLayout motionLayout) {
        this.f822a = motionLayout;
    }

    private void e(s sVar, boolean z) {
        ConstraintLayout.getSharedValues().a(sVar.g(), new a(this, sVar, sVar.g(), z, sVar.f()));
    }

    private void i(s sVar, View... viewArr) {
        int currentState = this.f822a.getCurrentState();
        if (sVar.f811e == 2) {
            sVar.b(this, this.f822a, currentState, null, viewArr);
            return;
        }
        if (currentState != -1) {
            androidx.constraintlayout.widget.c cVarM = this.f822a.m(currentState);
            if (cVarM == null) {
                return;
            }
            sVar.b(this, this.f822a, currentState, cVarM, viewArr);
            return;
        }
        Log.w(this.f823d, "No support for ViewTransition within transition yet. Currently: " + this.f822a.toString());
    }

    public void a(s sVar) {
        this.b.add(sVar);
        this.c = null;
        if (sVar.h() == 4) {
            e(sVar, true);
        } else if (sVar.h() == 5) {
            e(sVar, false);
        }
    }

    void b(s.b bVar) {
        if (this.f824e == null) {
            this.f824e = new ArrayList<>();
        }
        this.f824e.add(bVar);
    }

    void c() {
        ArrayList<s.b> arrayList = this.f824e;
        if (arrayList == null) {
            return;
        }
        Iterator<s.b> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f824e.removeAll(this.f825f);
        this.f825f.clear();
        if (this.f824e.isEmpty()) {
            this.f824e = null;
        }
    }

    void d() {
        this.f822a.invalidate();
    }

    void f(s.b bVar) {
        this.f825f.add(bVar);
    }

    void g(MotionEvent motionEvent) {
        int currentState = this.f822a.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.c == null) {
            this.c = new HashSet<>();
            for (s sVar : this.b) {
                int childCount = this.f822a.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = this.f822a.getChildAt(i);
                    if (sVar.i(childAt)) {
                        childAt.getId();
                        this.c.add(childAt);
                    }
                }
            }
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList<s.b> arrayList = this.f824e;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<s.b> it = this.f824e.iterator();
            while (it.hasNext()) {
                it.next().d(action, x, y);
            }
        }
        if (action == 0 || action == 1) {
            androidx.constraintlayout.widget.c cVarM = this.f822a.m(currentState);
            Iterator<s> it2 = this.b.iterator();
            while (it2.hasNext()) {
                s next = it2.next();
                if (next.k(action)) {
                    for (View view : this.c) {
                        if (next.i(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x, (int) y)) {
                                next.b(this, this.f822a, currentState, cVarM, view);
                            }
                            next = next;
                        }
                    }
                }
            }
        }
    }

    void h(int i, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        s sVar = null;
        for (s sVar2 : this.b) {
            if (sVar2.d() == i) {
                for (View view : viewArr) {
                    if (sVar2.c(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    i(sVar2, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                sVar = sVar2;
            }
        }
        if (sVar == null) {
            Log.e(this.f823d, " Could not find ViewTransition");
        }
    }
}
