package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.common.base.Ascii;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
class l implements Comparable<l> {
    int c;
    private float o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f771a = 1.0f;
    int b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f772d = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f773e = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f774f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f775g = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f776h = 1.0f;
    private float i = 1.0f;
    private float j = Float.NaN;
    private float k = Float.NaN;
    private float l = BitmapDescriptorFactory.HUE_RED;
    private float m = BitmapDescriptorFactory.HUE_RED;
    private float n = BitmapDescriptorFactory.HUE_RED;
    private float p = Float.NaN;
    private float q = Float.NaN;
    LinkedHashMap<String, ConstraintAttribute> r = new LinkedHashMap<>();

    private boolean d(float f2, float f3) {
        if (Float.isNaN(f2) || Float.isNaN(f3)) {
            return Float.isNaN(f2) != Float.isNaN(f3);
        }
        return Math.abs(f2 - f3) > 1.0E-6f;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void a(HashMap<String, e.a.a.a.c> map, int i) {
        for (String str : map.keySet()) {
            e.a.a.a.c cVar = map.get(str);
            str.hashCode();
            byte b = -1;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        b = 0;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        b = 1;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        b = 2;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        b = 3;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        b = 4;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        b = 5;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        b = 6;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        b = 7;
                    }
                    break;
                case -760884510:
                    if (str.equals("transformPivotX")) {
                        b = 8;
                    }
                    break;
                case -760884509:
                    if (str.equals("transformPivotY")) {
                        b = 9;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        b = 10;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        b = Ascii.VT;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        b = Ascii.FF;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        b = Ascii.CR;
                    }
                    break;
            }
            float f2 = BitmapDescriptorFactory.HUE_RED;
            switch (b) {
                case 0:
                    if (!Float.isNaN(this.f774f)) {
                        f2 = this.f774f;
                    }
                    cVar.b(i, f2);
                    break;
                case 1:
                    if (!Float.isNaN(this.f775g)) {
                        f2 = this.f775g;
                    }
                    cVar.b(i, f2);
                    break;
                case 2:
                    if (!Float.isNaN(this.l)) {
                        f2 = this.l;
                    }
                    cVar.b(i, f2);
                    break;
                case 3:
                    if (!Float.isNaN(this.m)) {
                        f2 = this.m;
                    }
                    cVar.b(i, f2);
                    break;
                case 4:
                    if (!Float.isNaN(this.n)) {
                        f2 = this.n;
                    }
                    cVar.b(i, f2);
                    break;
                case 5:
                    if (!Float.isNaN(this.q)) {
                        f2 = this.q;
                    }
                    cVar.b(i, f2);
                    break;
                case 6:
                    cVar.b(i, Float.isNaN(this.f776h) ? 1.0f : this.f776h);
                    break;
                case 7:
                    cVar.b(i, Float.isNaN(this.i) ? 1.0f : this.i);
                    break;
                case 8:
                    if (!Float.isNaN(this.j)) {
                        f2 = this.j;
                    }
                    cVar.b(i, f2);
                    break;
                case 9:
                    if (!Float.isNaN(this.k)) {
                        f2 = this.k;
                    }
                    cVar.b(i, f2);
                    break;
                case 10:
                    if (!Float.isNaN(this.f773e)) {
                        f2 = this.f773e;
                    }
                    cVar.b(i, f2);
                    break;
                case 11:
                    if (!Float.isNaN(this.f772d)) {
                        f2 = this.f772d;
                    }
                    cVar.b(i, f2);
                    break;
                case 12:
                    if (!Float.isNaN(this.p)) {
                        f2 = this.p;
                    }
                    cVar.b(i, f2);
                    break;
                case 13:
                    cVar.b(i, Float.isNaN(this.f771a) ? 1.0f : this.f771a);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.r.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = this.r.get(str2);
                            if (cVar instanceof e.a.a.a.c.b) {
                                ((e.a.a.a.c.b) cVar).h(i, constraintAttribute);
                            } else {
                                Log.e("MotionPaths", str + " ViewSpline not a CustomSet frame = " + i + ", value" + constraintAttribute.e() + cVar);
                            }
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                    }
                    break;
            }
        }
    }

    public void b(View view) {
        this.c = view.getVisibility();
        this.f771a = view.getVisibility() != 0 ? BitmapDescriptorFactory.HUE_RED : view.getAlpha();
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            this.f772d = view.getElevation();
        }
        this.f773e = view.getRotation();
        this.f774f = view.getRotationX();
        this.f775g = view.getRotationY();
        this.f776h = view.getScaleX();
        this.i = view.getScaleY();
        this.j = view.getPivotX();
        this.k = view.getPivotY();
        this.l = view.getTranslationX();
        this.m = view.getTranslationY();
        if (i >= 21) {
            this.n = view.getTranslationZ();
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        return Float.compare(this.o, lVar.o);
    }

    void e(l lVar, HashSet<String> hashSet) {
        if (d(this.f771a, lVar.f771a)) {
            hashSet.add("alpha");
        }
        if (d(this.f772d, lVar.f772d)) {
            hashSet.add("elevation");
        }
        int i = this.c;
        int i2 = lVar.c;
        if (i != i2 && this.b == 0 && (i == 0 || i2 == 0)) {
            hashSet.add("alpha");
        }
        if (d(this.f773e, lVar.f773e)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.p) || !Float.isNaN(lVar.p)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.q) || !Float.isNaN(lVar.q)) {
            hashSet.add("progress");
        }
        if (d(this.f774f, lVar.f774f)) {
            hashSet.add("rotationX");
        }
        if (d(this.f775g, lVar.f775g)) {
            hashSet.add("rotationY");
        }
        if (d(this.j, lVar.j)) {
            hashSet.add("transformPivotX");
        }
        if (d(this.k, lVar.k)) {
            hashSet.add("transformPivotY");
        }
        if (d(this.f776h, lVar.f776h)) {
            hashSet.add("scaleX");
        }
        if (d(this.i, lVar.i)) {
            hashSet.add("scaleY");
        }
        if (d(this.l, lVar.l)) {
            hashSet.add("translationX");
        }
        if (d(this.m, lVar.m)) {
            hashSet.add("translationY");
        }
        if (d(this.n, lVar.n)) {
            hashSet.add("translationZ");
        }
    }

    void g(float f2, float f3, float f4, float f5) {
    }

    public void h(View view) {
        g(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        b(view);
    }
}
