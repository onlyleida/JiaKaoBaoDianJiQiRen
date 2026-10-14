package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.common.base.Ascii;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class j extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f765g;
    private String v;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f766h = -1;
    private float i = Float.NaN;
    private float j = Float.NaN;
    private float k = Float.NaN;
    private float l = Float.NaN;
    private float m = Float.NaN;
    private float n = Float.NaN;
    private float o = Float.NaN;
    private float p = Float.NaN;
    private float q = Float.NaN;
    private float r = Float.NaN;
    private float s = Float.NaN;
    private float t = Float.NaN;
    private int u = 0;
    private float w = Float.NaN;
    private float x = BitmapDescriptorFactory.HUE_RED;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f767a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f767a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_alpha, 1);
            f767a.append(R.styleable.KeyTimeCycle_android_elevation, 2);
            f767a.append(R.styleable.KeyTimeCycle_android_rotation, 4);
            f767a.append(R.styleable.KeyTimeCycle_android_rotationX, 5);
            f767a.append(R.styleable.KeyTimeCycle_android_rotationY, 6);
            f767a.append(R.styleable.KeyTimeCycle_android_scaleX, 7);
            f767a.append(R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            f767a.append(R.styleable.KeyTimeCycle_transitionEasing, 9);
            f767a.append(R.styleable.KeyTimeCycle_motionTarget, 10);
            f767a.append(R.styleable.KeyTimeCycle_framePosition, 12);
            f767a.append(R.styleable.KeyTimeCycle_curveFit, 13);
            f767a.append(R.styleable.KeyTimeCycle_android_scaleY, 14);
            f767a.append(R.styleable.KeyTimeCycle_android_translationX, 15);
            f767a.append(R.styleable.KeyTimeCycle_android_translationY, 16);
            f767a.append(R.styleable.KeyTimeCycle_android_translationZ, 17);
            f767a.append(R.styleable.KeyTimeCycle_motionProgress, 18);
            f767a.append(R.styleable.KeyTimeCycle_wavePeriod, 20);
            f767a.append(R.styleable.KeyTimeCycle_waveOffset, 21);
            f767a.append(R.styleable.KeyTimeCycle_waveShape, 19);
        }

        public static void a(j jVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f767a.get(index)) {
                    case 1:
                        jVar.i = typedArray.getFloat(index, jVar.i);
                        break;
                    case 2:
                        jVar.j = typedArray.getDimension(index, jVar.j);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f767a.get(index));
                        break;
                    case 4:
                        jVar.k = typedArray.getFloat(index, jVar.k);
                        break;
                    case 5:
                        jVar.l = typedArray.getFloat(index, jVar.l);
                        break;
                    case 6:
                        jVar.m = typedArray.getFloat(index, jVar.m);
                        break;
                    case 7:
                        jVar.o = typedArray.getFloat(index, jVar.o);
                        break;
                    case 8:
                        jVar.n = typedArray.getFloat(index, jVar.n);
                        break;
                    case 9:
                        jVar.f765g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.y0) {
                            int resourceId = typedArray.getResourceId(index, jVar.b);
                            jVar.b = resourceId;
                            if (resourceId == -1) {
                                jVar.c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            jVar.c = typedArray.getString(index);
                        } else {
                            jVar.b = typedArray.getResourceId(index, jVar.b);
                        }
                        break;
                    case 12:
                        jVar.f752a = typedArray.getInt(index, jVar.f752a);
                        break;
                    case 13:
                        jVar.f766h = typedArray.getInteger(index, jVar.f766h);
                        break;
                    case 14:
                        jVar.p = typedArray.getFloat(index, jVar.p);
                        break;
                    case 15:
                        jVar.q = typedArray.getDimension(index, jVar.q);
                        break;
                    case 16:
                        jVar.r = typedArray.getDimension(index, jVar.r);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            jVar.s = typedArray.getDimension(index, jVar.s);
                        }
                        break;
                    case 18:
                        jVar.t = typedArray.getFloat(index, jVar.t);
                        break;
                    case 19:
                        if (typedArray.peekValue(index).type == 3) {
                            jVar.v = typedArray.getString(index);
                            jVar.u = 7;
                        } else {
                            jVar.u = typedArray.getInt(index, jVar.u);
                        }
                        break;
                    case 20:
                        jVar.w = typedArray.getFloat(index, jVar.w);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            jVar.x = typedArray.getDimension(index, jVar.x);
                        } else {
                            jVar.x = typedArray.getFloat(index, jVar.x);
                        }
                        break;
                }
            }
        }
    }

    public j() {
        this.f753d = 3;
        this.f754e = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x0050  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void O(HashMap<String, e.a.a.a.d> map) {
        for (String str : map.keySet()) {
            e.a.a.a.d dVar = map.get(str);
            if (dVar != null) {
                byte b = 7;
                if (!str.startsWith("CUSTOM")) {
                    str.hashCode();
                    switch (str.hashCode()) {
                        case -1249320806:
                            if (str.equals("rotationX")) {
                                b = 0;
                            } else {
                                b = -1;
                            }
                            break;
                        case -1249320805:
                            if (str.equals("rotationY")) {
                                b = 1;
                            } else {
                                b = -1;
                            }
                            break;
                        case -1225497657:
                            if (str.equals("translationX")) {
                                b = 2;
                            } else {
                                b = -1;
                            }
                            break;
                        case -1225497656:
                            if (str.equals("translationY")) {
                                b = 3;
                            } else {
                                b = -1;
                            }
                            break;
                        case -1225497655:
                            if (str.equals("translationZ")) {
                                b = 4;
                            } else {
                                b = -1;
                            }
                            break;
                        case -1001078227:
                            if (str.equals("progress")) {
                                b = 5;
                            } else {
                                b = -1;
                            }
                            break;
                        case -908189618:
                            if (str.equals("scaleX")) {
                                b = 6;
                            } else {
                                b = -1;
                            }
                            break;
                        case -908189617:
                            if (!str.equals("scaleY")) {
                                b = -1;
                            }
                            break;
                        case -40300674:
                            if (str.equals("rotation")) {
                                b = 8;
                            } else {
                                b = -1;
                            }
                            break;
                        case -4379043:
                            if (str.equals("elevation")) {
                                b = 9;
                            } else {
                                b = -1;
                            }
                            break;
                        case 37232917:
                            if (str.equals("transitionPathRotate")) {
                                b = 10;
                            } else {
                                b = -1;
                            }
                            break;
                        case 92909918:
                            if (str.equals("alpha")) {
                                b = Ascii.VT;
                            } else {
                                b = -1;
                            }
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    switch (b) {
                        case 0:
                            if (!Float.isNaN(this.l)) {
                                dVar.b(this.f752a, this.l, this.w, this.u, this.x);
                            }
                            break;
                        case 1:
                            if (!Float.isNaN(this.m)) {
                                dVar.b(this.f752a, this.m, this.w, this.u, this.x);
                            }
                            break;
                        case 2:
                            if (!Float.isNaN(this.q)) {
                                dVar.b(this.f752a, this.q, this.w, this.u, this.x);
                            }
                            break;
                        case 3:
                            if (!Float.isNaN(this.r)) {
                                dVar.b(this.f752a, this.r, this.w, this.u, this.x);
                            }
                            break;
                        case 4:
                            if (!Float.isNaN(this.s)) {
                                dVar.b(this.f752a, this.s, this.w, this.u, this.x);
                            }
                            break;
                        case 5:
                            if (!Float.isNaN(this.t)) {
                                dVar.b(this.f752a, this.t, this.w, this.u, this.x);
                            }
                            break;
                        case 6:
                            if (!Float.isNaN(this.o)) {
                                dVar.b(this.f752a, this.o, this.w, this.u, this.x);
                            }
                            break;
                        case 7:
                            if (!Float.isNaN(this.p)) {
                                dVar.b(this.f752a, this.p, this.w, this.u, this.x);
                            }
                            break;
                        case 8:
                            if (!Float.isNaN(this.k)) {
                                dVar.b(this.f752a, this.k, this.w, this.u, this.x);
                            }
                            break;
                        case 9:
                            if (!Float.isNaN(this.j)) {
                                dVar.b(this.f752a, this.j, this.w, this.u, this.x);
                            }
                            break;
                        case 10:
                            if (!Float.isNaN(this.n)) {
                                dVar.b(this.f752a, this.n, this.w, this.u, this.x);
                            }
                            break;
                        case 11:
                            if (!Float.isNaN(this.i)) {
                                dVar.b(this.f752a, this.i, this.w, this.u, this.x);
                            }
                            break;
                        default:
                            Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + str + "\"");
                            break;
                    }
                } else {
                    ConstraintAttribute constraintAttribute = this.f754e.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ((e.a.a.a.d.b) dVar).j(this.f752a, constraintAttribute, this.w, this.u, this.x);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap<String, e.a.a.a.c> map) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        j jVar = new j();
        jVar.c(this);
        return jVar;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        j jVar = (j) dVar;
        this.f765g = jVar.f765g;
        this.f766h = jVar.f766h;
        this.u = jVar.u;
        this.w = jVar.w;
        this.x = jVar.x;
        this.t = jVar.t;
        this.i = jVar.i;
        this.j = jVar.j;
        this.k = jVar.k;
        this.n = jVar.n;
        this.l = jVar.l;
        this.m = jVar.m;
        this.o = jVar.o;
        this.p = jVar.p;
        this.q = jVar.q;
        this.r = jVar.r;
        this.s = jVar.s;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet<String> hashSet) {
        if (!Float.isNaN(this.i)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.j)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.t)) {
            hashSet.add("progress");
        }
        if (this.f754e.size() > 0) {
            Iterator<String> it = this.f754e.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void f(HashMap<String, Integer> map) {
        if (this.f766h == -1) {
            return;
        }
        if (!Float.isNaN(this.i)) {
            map.put("alpha", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.j)) {
            map.put("elevation", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.k)) {
            map.put("rotation", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.l)) {
            map.put("rotationX", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.m)) {
            map.put("rotationY", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.q)) {
            map.put("translationX", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.r)) {
            map.put("translationY", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.s)) {
            map.put("translationZ", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.n)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.o)) {
            map.put("scaleX", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.o)) {
            map.put("scaleY", Integer.valueOf(this.f766h));
        }
        if (!Float.isNaN(this.t)) {
            map.put("progress", Integer.valueOf(this.f766h));
        }
        if (this.f754e.size() > 0) {
            Iterator<String> it = this.f754e.keySet().iterator();
            while (it.hasNext()) {
                map.put("CUSTOM," + it.next(), Integer.valueOf(this.f766h));
            }
        }
    }
}
