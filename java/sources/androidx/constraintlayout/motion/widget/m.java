package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private k[] A;
    private int B;
    private int C;
    private View D;
    private int E;
    private float F;
    private Interpolator G;
    private boolean H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View f777a;
    int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p f778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private p f779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l f780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private l f781g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.constraintlayout.core.motion.a.b[] f782h;
    private androidx.constraintlayout.core.motion.a.b i;
    float j;
    float k;
    float l;
    float m;
    private int[] n;
    private double[] o;
    private double[] p;
    private String[] q;
    private int[] r;
    private int s;
    private float[] t;
    private ArrayList<p> u;
    private float[] v;
    private ArrayList<d> w;
    private HashMap<String, e.a.a.a.d> x;
    private HashMap<String, e.a.a.a.c> y;
    private HashMap<String, e.a.a.a.b> z;

    m(View view) {
        new Rect();
        this.c = -1;
        this.f778d = new p();
        this.f779e = new p();
        this.f780f = new l();
        this.f781g = new l();
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.k = 1.0f;
        this.s = 4;
        this.t = new float[4];
        this.u = new ArrayList<>();
        this.v = new float[1];
        this.w = new ArrayList<>();
        int i = d.f751f;
        this.B = i;
        this.C = i;
        this.D = null;
        this.E = i;
        this.F = Float.NaN;
        this.G = null;
        this.H = false;
        s(view);
    }

    private float f(float f2, float[] fArr) {
        float f3 = BitmapDescriptorFactory.HUE_RED;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f4 = this.k;
            if (f4 != 1.0d) {
                float f5 = this.j;
                if (f2 < f5) {
                    f2 = BitmapDescriptorFactory.HUE_RED;
                }
                if (f2 > f5 && f2 < 1.0d) {
                    f2 = Math.min((f2 - f5) * f4, 1.0f);
                }
            }
        }
        androidx.constraintlayout.core.motion.a.c cVar = this.f778d.f783a;
        float f6 = Float.NaN;
        for (p pVar : this.u) {
            androidx.constraintlayout.core.motion.a.c cVar2 = pVar.f783a;
            if (cVar2 != null) {
                float f7 = pVar.c;
                if (f7 < f2) {
                    cVar = cVar2;
                    f3 = f7;
                } else if (Float.isNaN(f6)) {
                    f6 = pVar.c;
                }
            }
        }
        if (cVar != null) {
            float f8 = (Float.isNaN(f6) ? 1.0f : f6) - f3;
            double d2 = (f2 - f3) / f8;
            f2 = (((float) cVar.a(d2)) * f8) + f3;
            if (fArr != null) {
                fArr[0] = (float) cVar.b(d2);
            }
        }
        return f2;
    }

    private float n() {
        char c;
        float fHypot;
        float[] fArr = new float[2];
        float f2 = 1.0f / 99;
        double d2 = 0.0d;
        double d3 = 0.0d;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        int i = 0;
        while (i < 100) {
            float f4 = i * f2;
            double dA = f4;
            androidx.constraintlayout.core.motion.a.c cVar = this.f778d.f783a;
            float f5 = Float.NaN;
            float f6 = BitmapDescriptorFactory.HUE_RED;
            for (p pVar : this.u) {
                androidx.constraintlayout.core.motion.a.c cVar2 = pVar.f783a;
                if (cVar2 != null) {
                    float f7 = pVar.c;
                    if (f7 < f4) {
                        cVar = cVar2;
                        f6 = f7;
                    } else if (Float.isNaN(f5)) {
                        f5 = pVar.c;
                    }
                }
            }
            if (cVar != null) {
                if (Float.isNaN(f5)) {
                    f5 = 1.0f;
                }
                float f8 = f5 - f6;
                dA = (((float) cVar.a((f4 - f6) / f8)) * f8) + f6;
            }
            this.f782h[0].d(dA, this.o);
            float f9 = f3;
            int i2 = i;
            this.f778d.e(dA, this.n, this.o, fArr, 0);
            if (i2 > 0) {
                c = 0;
                fHypot = (float) (((double) f9) + Math.hypot(d3 - ((double) fArr[1]), d2 - ((double) fArr[0])));
            } else {
                c = 0;
                fHypot = f9;
            }
            d2 = fArr[c];
            i = i2 + 1;
            f3 = fHypot;
            d3 = fArr[1];
        }
        return f3;
    }

    private void p(p pVar) {
        int iBinarySearch = Collections.binarySearch(this.u, pVar);
        if (iBinarySearch == 0) {
            Log.e("MotionController", " KeyPath position \"" + pVar.f784d + "\" outside of range");
        }
        this.u.add((-iBinarySearch) - 1, pVar);
    }

    void a(ArrayList<d> arrayList) {
        this.w.addAll(arrayList);
    }

    int b(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] dArrG = this.f782h[0].g();
        if (iArr != null) {
            Iterator<p> it = this.u.iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = it.next().n;
                i++;
            }
        }
        int i2 = 0;
        for (int i3 = 0; i3 < dArrG.length; i3++) {
            this.f782h[0].d(dArrG[i3], this.o);
            this.f778d.e(dArrG[i3], this.n, this.o, fArr, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    void c(float[] fArr, int i) {
        double dA;
        float f2 = 1.0f;
        float f3 = 1.0f / (i - 1);
        HashMap<String, e.a.a.a.c> map = this.y;
        e.a.a.a.c cVar = map == null ? null : map.get("translationX");
        HashMap<String, e.a.a.a.c> map2 = this.y;
        e.a.a.a.c cVar2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, e.a.a.a.b> map3 = this.z;
        e.a.a.a.b bVar = map3 == null ? null : map3.get("translationX");
        HashMap<String, e.a.a.a.b> map4 = this.z;
        e.a.a.a.b bVar2 = map4 != null ? map4.get("translationY") : null;
        int i2 = 0;
        while (i2 < i) {
            float fMin = i2 * f3;
            float f4 = this.k;
            if (f4 != f2) {
                float f5 = this.j;
                if (fMin < f5) {
                    fMin = BitmapDescriptorFactory.HUE_RED;
                }
                if (fMin > f5 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f5) * f4, f2);
                }
            }
            float f6 = fMin;
            double d2 = f6;
            androidx.constraintlayout.core.motion.a.c cVar3 = this.f778d.f783a;
            float f7 = Float.NaN;
            float f8 = BitmapDescriptorFactory.HUE_RED;
            for (p pVar : this.u) {
                androidx.constraintlayout.core.motion.a.c cVar4 = pVar.f783a;
                double d3 = d2;
                if (cVar4 != null) {
                    float f9 = pVar.c;
                    if (f9 < f6) {
                        f8 = f9;
                        cVar3 = cVar4;
                    } else if (Float.isNaN(f7)) {
                        f7 = pVar.c;
                    }
                }
                d2 = d3;
            }
            double d4 = d2;
            if (cVar3 != null) {
                if (Float.isNaN(f7)) {
                    f7 = 1.0f;
                }
                float f10 = f7 - f8;
                dA = (((float) cVar3.a((f6 - f8) / f10)) * f10) + f8;
            } else {
                dA = d4;
            }
            this.f782h[0].d(dA, this.o);
            androidx.constraintlayout.core.motion.a.b bVar3 = this.i;
            if (bVar3 != null) {
                double[] dArr = this.o;
                if (dArr.length > 0) {
                    bVar3.d(dA, dArr);
                }
            }
            int i3 = i2 * 2;
            int i4 = i2;
            this.f778d.e(dA, this.n, this.o, fArr, i3);
            if (bVar != null) {
                fArr[i3] = fArr[i3] + bVar.a(f6);
            } else if (cVar != null) {
                fArr[i3] = fArr[i3] + cVar.a(f6);
            }
            if (bVar2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + bVar2.a(f6);
            } else if (cVar2 != null) {
                int i6 = i3 + 1;
                fArr[i6] = fArr[i6] + cVar2.a(f6);
            }
            i2 = i4 + 1;
            f2 = 1.0f;
        }
    }

    void d(float f2, float[] fArr, int i) {
        this.f782h[0].d(f(f2, null), this.o);
        this.f778d.n(this.n, this.o, fArr, i);
    }

    void e(boolean z) {
        if (!"button".equals(a.c(this.f777a)) || this.A == null) {
            return;
        }
        int i = 0;
        while (true) {
            k[] kVarArr = this.A;
            if (i >= kVarArr.length) {
                return;
            }
            kVarArr[i].s(z ? -100.0f : 100.0f, this.f777a);
            i++;
        }
    }

    public int g() {
        return this.f778d.k;
    }

    public void h(double d2, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f782h[0].d(d2, dArr);
        this.f782h[0].f(d2, dArr2);
        Arrays.fill(fArr2, BitmapDescriptorFactory.HUE_RED);
        this.f778d.g(d2, this.n, dArr, fArr, dArr2, fArr2);
    }

    public float i() {
        return this.l;
    }

    public float j() {
        return this.m;
    }

    void k(float f2, float f3, float f4, float[] fArr) {
        double[] dArr;
        float f5 = f(f2, this.v);
        androidx.constraintlayout.core.motion.a.b[] bVarArr = this.f782h;
        int i = 0;
        if (bVarArr == null) {
            p pVar = this.f779e;
            float f6 = pVar.f785e;
            p pVar2 = this.f778d;
            float f7 = f6 - pVar2.f785e;
            float f8 = pVar.f786f - pVar2.f786f;
            float f9 = (pVar.f787g - pVar2.f787g) + f7;
            float f10 = (pVar.f788h - pVar2.f788h) + f8;
            fArr[0] = (f7 * (1.0f - f3)) + (f9 * f3);
            fArr[1] = (f8 * (1.0f - f4)) + (f10 * f4);
            return;
        }
        double d2 = f5;
        bVarArr[0].f(d2, this.p);
        this.f782h[0].d(d2, this.o);
        float f11 = this.v[0];
        while (true) {
            dArr = this.p;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * ((double) f11);
            i++;
        }
        androidx.constraintlayout.core.motion.a.b bVar = this.i;
        if (bVar == null) {
            this.f778d.u(f3, f4, fArr, this.n, dArr, this.o);
            return;
        }
        double[] dArr2 = this.o;
        if (dArr2.length > 0) {
            bVar.d(d2, dArr2);
            this.i.f(d2, this.p);
            this.f778d.u(f3, f4, fArr, this.n, this.p, this.o);
        }
    }

    public int l() {
        int iMax = this.f778d.b;
        Iterator<p> it = this.u.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().b);
        }
        return Math.max(iMax, this.f779e.b);
    }

    p m(int i) {
        return this.u.get(i);
    }

    public View o() {
        return this.f777a;
    }

    boolean q(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
        e.a.a.a.d.C0294d c0294d;
        boolean zJ;
        char c;
        float f3 = f(f2, null);
        int i = this.E;
        if (i != d.f751f) {
            float f4 = 1.0f / i;
            float fFloor = ((float) Math.floor(f3 / f4)) * f4;
            float f5 = (f3 % f4) / f4;
            if (!Float.isNaN(this.F)) {
                f5 = (f5 + this.F) % 1.0f;
            }
            Interpolator interpolator = this.G;
            f3 = ((interpolator != null ? interpolator.getInterpolation(f5) : ((double) f5) > 0.5d ? 1.0f : BitmapDescriptorFactory.HUE_RED) * f4) + fFloor;
        }
        float f6 = f3;
        HashMap<String, e.a.a.a.c> map = this.y;
        if (map != null) {
            Iterator<e.a.a.a.c> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().g(view, f6);
            }
        }
        HashMap<String, e.a.a.a.d> map2 = this.x;
        if (map2 != null) {
            c0294d = null;
            boolean zI = false;
            for (e.a.a.a.d dVar2 : map2.values()) {
                if (dVar2 instanceof e.a.a.a.d.C0294d) {
                    c0294d = (e.a.a.a.d.C0294d) dVar2;
                } else {
                    zI |= dVar2.i(view, f6, j, dVar);
                }
            }
            zJ = zI;
        } else {
            c0294d = null;
            zJ = false;
        }
        androidx.constraintlayout.core.motion.a.b[] bVarArr = this.f782h;
        if (bVarArr != null) {
            double d2 = f6;
            bVarArr[0].d(d2, this.o);
            this.f782h[0].f(d2, this.p);
            androidx.constraintlayout.core.motion.a.b bVar = this.i;
            if (bVar != null) {
                double[] dArr = this.o;
                if (dArr.length > 0) {
                    bVar.d(d2, dArr);
                    this.i.f(d2, this.p);
                }
            }
            if (!this.H) {
                this.f778d.v(f6, view, this.n, this.o, this.p, null);
            }
            if (this.C != d.f751f) {
                if (this.D == null) {
                    this.D = ((View) view.getParent()).findViewById(this.C);
                }
                View view2 = this.D;
                if (view2 != null) {
                    float top = (view2.getTop() + this.D.getBottom()) / 2.0f;
                    float left = (this.D.getLeft() + this.D.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        float left2 = left - view.getLeft();
                        float top2 = top - view.getTop();
                        view.setPivotX(left2);
                        view.setPivotY(top2);
                    }
                }
            }
            HashMap<String, e.a.a.a.c> map3 = this.y;
            if (map3 != null) {
                for (e.a.a.a.c cVar : map3.values()) {
                    if (cVar instanceof e.a.a.a.c.d) {
                        double[] dArr2 = this.p;
                        if (dArr2.length > 1) {
                            ((e.a.a.a.c.d) cVar).h(view, f6, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (c0294d != null) {
                double[] dArr3 = this.p;
                c = 1;
                zJ |= c0294d.j(view, dVar, f6, j, dArr3[0], dArr3[1]);
            } else {
                c = 1;
            }
            int i2 = 1;
            while (true) {
                androidx.constraintlayout.core.motion.a.b[] bVarArr2 = this.f782h;
                if (i2 >= bVarArr2.length) {
                    break;
                }
                bVarArr2[i2].e(d2, this.t);
                this.f778d.m.get(this.q[i2 - 1]).j(view, this.t);
                i2++;
            }
            l lVar = this.f780f;
            if (lVar.b == 0) {
                if (f6 <= BitmapDescriptorFactory.HUE_RED) {
                    view.setVisibility(lVar.c);
                } else if (f6 >= 1.0f) {
                    view.setVisibility(this.f781g.c);
                } else if (this.f781g.c != lVar.c) {
                    view.setVisibility(0);
                }
            }
            if (this.A != null) {
                int i3 = 0;
                while (true) {
                    k[] kVarArr = this.A;
                    if (i3 >= kVarArr.length) {
                        break;
                    }
                    kVarArr[i3].s(f6, view);
                    i3++;
                }
            }
        } else {
            c = 1;
            p pVar = this.f778d;
            float f7 = pVar.f785e;
            p pVar2 = this.f779e;
            float f8 = f7 + ((pVar2.f785e - f7) * f6);
            float f9 = pVar.f786f;
            float f10 = f9 + ((pVar2.f786f - f9) * f6);
            float f11 = pVar.f787g;
            float f12 = pVar2.f787g;
            float f13 = pVar.f788h;
            float f14 = pVar2.f788h;
            float f15 = f8 + 0.5f;
            int i4 = (int) f15;
            float f16 = f10 + 0.5f;
            int i5 = (int) f16;
            int i6 = (int) (f15 + ((f12 - f11) * f6) + f11);
            int i7 = (int) (f16 + ((f14 - f13) * f6) + f13);
            int i8 = i6 - i4;
            int i9 = i7 - i5;
            if (f12 != f11 || f14 != f13) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
            }
            view.layout(i4, i5, i6, i7);
        }
        HashMap<String, e.a.a.a.b> map4 = this.z;
        if (map4 != null) {
            for (e.a.a.a.b bVar2 : map4.values()) {
                if (bVar2 instanceof e.a.a.a.b.d) {
                    double[] dArr4 = this.p;
                    ((e.a.a.a.b.d) bVar2).j(view, f6, dArr4[0], dArr4[c]);
                } else {
                    bVar2.i(view, f6);
                }
            }
        }
        return zJ;
    }

    void r(View view) {
        p pVar = this.f778d;
        pVar.c = BitmapDescriptorFactory.HUE_RED;
        pVar.f784d = BitmapDescriptorFactory.HUE_RED;
        this.H = true;
        pVar.t(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f779e.t(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f780f.h(view);
        this.f781g.h(view);
    }

    public void s(View view) {
        this.f777a = view;
        this.b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).a();
        }
    }

    public void t(int i, int i2, float f2, long j) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        e.a.a.a.d dVarH;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        e.a.a.a.c cVarF;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        int i3 = this.B;
        if (i3 != d.f751f) {
            this.f778d.j = i3;
        }
        this.f780f.e(this.f781g, hashSet2);
        ArrayList<d> arrayList2 = this.w;
        if (arrayList2 != null) {
            arrayList = null;
            for (d dVar : arrayList2) {
                if (dVar instanceof h) {
                    h hVar = (h) dVar;
                    p(new p(i, i2, hVar, this.f778d, this.f779e));
                    int i4 = hVar.f764g;
                    if (i4 != d.f751f) {
                        this.c = i4;
                    }
                } else if (dVar instanceof f) {
                    dVar.d(hashSet3);
                } else if (dVar instanceof j) {
                    dVar.d(hashSet);
                } else if (dVar instanceof k) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((k) dVar);
                } else {
                    dVar.f(map);
                    dVar.d(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        char c = 0;
        if (arrayList != null) {
            this.A = (k[]) arrayList.toArray(new k[0]);
        }
        char c2 = 1;
        if (!hashSet2.isEmpty()) {
            this.y = new HashMap<>();
            for (String str : hashSet2) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[c2];
                    for (d dVar2 : this.w) {
                        HashMap<String, ConstraintAttribute> map2 = dVar2.f754e;
                        if (map2 != null && (constraintAttribute3 = map2.get(str2)) != null) {
                            sparseArray.append(dVar2.f752a, constraintAttribute3);
                        }
                    }
                    cVarF = e.a.a.a.c.e(str, sparseArray);
                } else {
                    cVarF = e.a.a.a.c.f(str);
                }
                if (cVarF != null) {
                    cVarF.c(str);
                    this.y.put(str, cVarF);
                }
                c2 = 1;
            }
            ArrayList<d> arrayList3 = this.w;
            if (arrayList3 != null) {
                for (d dVar3 : arrayList3) {
                    if (dVar3 instanceof e) {
                        dVar3.a(this.y);
                    }
                }
            }
            this.f780f.a(this.y, 0);
            this.f781g.a(this.y, 100);
            for (String str3 : this.y.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = map.get(str3)) == null) ? 0 : num.intValue();
                e.a.a.a.c cVar = this.y.get(str3);
                if (cVar != null) {
                    cVar.d(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.x == null) {
                this.x = new HashMap<>();
            }
            for (String str4 : hashSet) {
                if (!this.x.containsKey(str4)) {
                    if (str4.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(",")[1];
                        for (d dVar4 : this.w) {
                            HashMap<String, ConstraintAttribute> map3 = dVar4.f754e;
                            if (map3 != null && (constraintAttribute2 = map3.get(str5)) != null) {
                                sparseArray2.append(dVar4.f752a, constraintAttribute2);
                            }
                        }
                        dVarH = e.a.a.a.d.g(str4, sparseArray2);
                    } else {
                        dVarH = e.a.a.a.d.h(str4, j);
                    }
                    if (dVarH != null) {
                        dVarH.d(str4);
                        this.x.put(str4, dVarH);
                    }
                }
            }
            ArrayList<d> arrayList4 = this.w;
            if (arrayList4 != null) {
                for (d dVar5 : arrayList4) {
                    if (dVar5 instanceof j) {
                        ((j) dVar5).O(this.x);
                    }
                }
            }
            for (String str6 : this.x.keySet()) {
                this.x.get(str6).e(map.containsKey(str6) ? map.get(str6).intValue() : 0);
            }
        }
        int i5 = 2;
        int size = this.u.size() + 2;
        p[] pVarArr = new p[size];
        pVarArr[0] = this.f778d;
        pVarArr[size - 1] = this.f779e;
        if (this.u.size() > 0 && this.c == -1) {
            this.c = 0;
        }
        Iterator<p> it = this.u.iterator();
        int i6 = 1;
        while (it.hasNext()) {
            pVarArr[i6] = it.next();
            i6++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.f779e.m.keySet()) {
            if (this.f778d.m.containsKey(str7)) {
                if (!hashSet2.contains("CUSTOM," + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.q = strArr2;
        this.r = new int[strArr2.length];
        int i7 = 0;
        while (true) {
            strArr = this.q;
            if (i7 >= strArr.length) {
                break;
            }
            String str8 = strArr[i7];
            this.r[i7] = 0;
            for (int i8 = 0; i8 < size; i8++) {
                if (pVarArr[i8].m.containsKey(str8) && (constraintAttribute = pVarArr[i8].m.get(str8)) != null) {
                    int[] iArr = this.r;
                    iArr[i7] = iArr[i7] + constraintAttribute.g();
                    break;
                }
            }
            i7++;
        }
        boolean z = pVarArr[0].j != d.f751f;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i9 = 1; i9 < size; i9++) {
            pVarArr[i9].c(pVarArr[i9 - 1], zArr, this.q, z);
        }
        int i10 = 0;
        for (int i11 = 1; i11 < length; i11++) {
            if (zArr[i11]) {
                i10++;
            }
        }
        this.n = new int[i10];
        int iMax = Math.max(2, i10);
        this.o = new double[iMax];
        this.p = new double[iMax];
        int i12 = 0;
        for (int i13 = 1; i13 < length; i13++) {
            if (zArr[i13]) {
                this.n[i12] = i13;
                i12++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, size, this.n.length);
        double[] dArr2 = new double[size];
        for (int i14 = 0; i14 < size; i14++) {
            pVarArr[i14].d(dArr[i14], this.n);
            dArr2[i14] = pVarArr[i14].c;
        }
        int i15 = 0;
        while (true) {
            int[] iArr2 = this.n;
            if (i15 >= iArr2.length) {
                break;
            }
            if (iArr2[i15] < p.q.length) {
                String str9 = p.q[this.n[i15]] + " [";
                for (int i16 = 0; i16 < size; i16++) {
                    str9 = str9 + dArr[i16][i15];
                }
            }
            i15++;
        }
        this.f782h = new androidx.constraintlayout.core.motion.a.b[this.q.length + 1];
        int i17 = 0;
        while (true) {
            String[] strArr3 = this.q;
            if (i17 >= strArr3.length) {
                break;
            }
            String str10 = strArr3[i17];
            int i18 = 0;
            double[] dArr3 = null;
            int i19 = 0;
            double[][] dArr4 = null;
            while (i18 < size) {
                if (pVarArr[i18].o(str10)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] iArr3 = new int[i5];
                        iArr3[1] = pVarArr[i18].k(str10);
                        iArr3[c] = size;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, iArr3);
                    }
                    dArr3[i19] = pVarArr[i18].c;
                    pVarArr[i18].h(str10, dArr4[i19], 0);
                    i19++;
                }
                i18++;
                i5 = 2;
                c = 0;
            }
            i17++;
            this.f782h[i17] = androidx.constraintlayout.core.motion.a.b.a(this.c, Arrays.copyOf(dArr3, i19), (double[][]) Arrays.copyOf(dArr4, i19));
            i5 = 2;
            c = 0;
        }
        this.f782h[0] = androidx.constraintlayout.core.motion.a.b.a(this.c, dArr2, dArr);
        if (pVarArr[0].j != d.f751f) {
            int[] iArr4 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) double.class, size, 2);
            for (int i20 = 0; i20 < size; i20++) {
                iArr4[i20] = pVarArr[i20].j;
                dArr5[i20] = pVarArr[i20].c;
                dArr6[i20][0] = pVarArr[i20].f785e;
                dArr6[i20][1] = pVarArr[i20].f786f;
            }
            this.i = androidx.constraintlayout.core.motion.a.b.b(iArr4, dArr5, dArr6);
        }
        float fN = Float.NaN;
        this.z = new HashMap<>();
        if (this.w != null) {
            for (String str11 : hashSet3) {
                e.a.a.a.b bVarH = e.a.a.a.b.h(str11);
                if (bVarH != null) {
                    if (bVarH.g() && Float.isNaN(fN)) {
                        fN = n();
                    }
                    bVarH.e(str11);
                    this.z.put(str11, bVarH);
                }
            }
            for (d dVar6 : this.w) {
                if (dVar6 instanceof f) {
                    ((f) dVar6).S(this.z);
                }
            }
            Iterator<e.a.a.a.b> it2 = this.z.values().iterator();
            while (it2.hasNext()) {
                it2.next().f(fN);
            }
        }
    }

    public String toString() {
        return " start: x: " + this.f778d.f785e + " y: " + this.f778d.f786f + " end: x: " + this.f779e.f785e + " y: " + this.f779e.f786f;
    }
}
