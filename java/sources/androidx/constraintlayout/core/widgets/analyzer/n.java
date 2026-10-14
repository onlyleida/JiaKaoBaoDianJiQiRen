package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static int f718f;
    int b;
    int c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<ConstraintWidget> f719a = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<a> f720d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f721e = -1;

    class a {
        public a(n nVar, ConstraintWidget constraintWidget, androidx.constraintlayout.core.d dVar, int i) {
            new WeakReference(constraintWidget);
            dVar.y(constraintWidget.K);
            dVar.y(constraintWidget.L);
            dVar.y(constraintWidget.M);
            dVar.y(constraintWidget.N);
            dVar.y(constraintWidget.O);
        }
    }

    public n(int i) {
        this.b = -1;
        this.c = 0;
        int i2 = f718f;
        f718f = i2 + 1;
        this.b = i2;
        this.c = i;
    }

    private String e() {
        int i = this.c;
        if (i == 0) {
            return "Horizontal";
        }
        if (i == 1) {
            return "Vertical";
        }
        return i == 2 ? "Both" : "Unknown";
    }

    private int j(androidx.constraintlayout.core.d dVar, ArrayList<ConstraintWidget> arrayList, int i) {
        int iY;
        int iY2;
        androidx.constraintlayout.core.widgets.d dVar2 = (androidx.constraintlayout.core.widgets.d) arrayList.get(0).I();
        dVar.E();
        dVar2.g(dVar, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).g(dVar, false);
        }
        if (i == 0 && dVar2.E0 > 0) {
            androidx.constraintlayout.core.widgets.b.b(dVar2, dVar, arrayList, 0);
        }
        if (i == 1 && dVar2.F0 > 0) {
            androidx.constraintlayout.core.widgets.b.b(dVar2, dVar, arrayList, 1);
        }
        try {
            dVar.A();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f720d = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f720d.add(new a(this, arrayList.get(i3), dVar, i));
        }
        if (i == 0) {
            iY = dVar.y(dVar2.K);
            iY2 = dVar.y(dVar2.M);
            dVar.E();
        } else {
            iY = dVar.y(dVar2.L);
            iY2 = dVar.y(dVar2.N);
            dVar.E();
        }
        return iY2 - iY;
    }

    public boolean a(ConstraintWidget constraintWidget) {
        if (this.f719a.contains(constraintWidget)) {
            return false;
        }
        this.f719a.add(constraintWidget);
        return true;
    }

    public void b(ArrayList<n> arrayList) {
        int size = this.f719a.size();
        if (this.f721e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                n nVar = arrayList.get(i);
                if (this.f721e == nVar.b) {
                    g(this.c, nVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int c() {
        return this.b;
    }

    public int d() {
        return this.c;
    }

    public int f(androidx.constraintlayout.core.d dVar, int i) {
        if (this.f719a.size() == 0) {
            return 0;
        }
        return j(dVar, this.f719a, i);
    }

    public void g(int i, n nVar) {
        for (ConstraintWidget constraintWidget : this.f719a) {
            nVar.a(constraintWidget);
            if (i == 0) {
                constraintWidget.r0 = nVar.c();
            } else {
                constraintWidget.s0 = nVar.c();
            }
        }
        this.f721e = nVar.b;
    }

    public void h(boolean z) {
    }

    public void i(int i) {
        this.c = i;
    }

    public String toString() {
        String str = e() + " [" + this.b + "] <";
        Iterator<ConstraintWidget> it = this.f719a.iterator();
        while (it.hasNext()) {
            str = str + " " + it.next().r();
        }
        return str + " >";
    }
}
