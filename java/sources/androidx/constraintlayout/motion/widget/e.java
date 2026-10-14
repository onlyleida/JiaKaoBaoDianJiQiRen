package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.google.common.base.Ascii;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class e extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f755g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f756h = -1;
    private boolean i = false;
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
    private float u = Float.NaN;
    private float v = Float.NaN;
    private float w = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f757a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f757a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyAttribute_android_alpha, 1);
            f757a.append(R.styleable.KeyAttribute_android_elevation, 2);
            f757a.append(R.styleable.KeyAttribute_android_rotation, 4);
            f757a.append(R.styleable.KeyAttribute_android_rotationX, 5);
            f757a.append(R.styleable.KeyAttribute_android_rotationY, 6);
            f757a.append(R.styleable.KeyAttribute_android_transformPivotX, 19);
            f757a.append(R.styleable.KeyAttribute_android_transformPivotY, 20);
            f757a.append(R.styleable.KeyAttribute_android_scaleX, 7);
            f757a.append(R.styleable.KeyAttribute_transitionPathRotate, 8);
            f757a.append(R.styleable.KeyAttribute_transitionEasing, 9);
            f757a.append(R.styleable.KeyAttribute_motionTarget, 10);
            f757a.append(R.styleable.KeyAttribute_framePosition, 12);
            f757a.append(R.styleable.KeyAttribute_curveFit, 13);
            f757a.append(R.styleable.KeyAttribute_android_scaleY, 14);
            f757a.append(R.styleable.KeyAttribute_android_translationX, 15);
            f757a.append(R.styleable.KeyAttribute_android_translationY, 16);
            f757a.append(R.styleable.KeyAttribute_android_translationZ, 17);
            f757a.append(R.styleable.KeyAttribute_motionProgress, 18);
        }

        public static void a(e eVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f757a.get(index)) {
                    case 1:
                        eVar.j = typedArray.getFloat(index, eVar.j);
                        break;
                    case 2:
                        eVar.k = typedArray.getDimension(index, eVar.k);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f757a.get(index));
                        break;
                    case 4:
                        eVar.l = typedArray.getFloat(index, eVar.l);
                        break;
                    case 5:
                        eVar.m = typedArray.getFloat(index, eVar.m);
                        break;
                    case 6:
                        eVar.n = typedArray.getFloat(index, eVar.n);
                        break;
                    case 7:
                        eVar.r = typedArray.getFloat(index, eVar.r);
                        break;
                    case 8:
                        eVar.q = typedArray.getFloat(index, eVar.q);
                        break;
                    case 9:
                        eVar.f755g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.y0) {
                            int resourceId = typedArray.getResourceId(index, eVar.b);
                            eVar.b = resourceId;
                            if (resourceId == -1) {
                                eVar.c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            eVar.c = typedArray.getString(index);
                        } else {
                            eVar.b = typedArray.getResourceId(index, eVar.b);
                        }
                        break;
                    case 12:
                        eVar.f752a = typedArray.getInt(index, eVar.f752a);
                        break;
                    case 13:
                        eVar.f756h = typedArray.getInteger(index, eVar.f756h);
                        break;
                    case 14:
                        eVar.s = typedArray.getFloat(index, eVar.s);
                        break;
                    case 15:
                        eVar.t = typedArray.getDimension(index, eVar.t);
                        break;
                    case 16:
                        eVar.u = typedArray.getDimension(index, eVar.u);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            eVar.v = typedArray.getDimension(index, eVar.v);
                        }
                        break;
                    case 18:
                        eVar.w = typedArray.getFloat(index, eVar.w);
                        break;
                    case 19:
                        eVar.o = typedArray.getDimension(index, eVar.o);
                        break;
                    case 20:
                        eVar.p = typedArray.getDimension(index, eVar.p);
                        break;
                }
            }
        }
    }

    public e() {
        this.f753d = 1;
        this.f754e = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x0047  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap<String, e.a.a.a.c> map) {
        for (String str : map.keySet()) {
            e.a.a.a.c cVar = map.get(str);
            if (cVar != null) {
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
                        case -760884510:
                            if (str.equals("transformPivotX")) {
                                b = 8;
                            } else {
                                b = -1;
                            }
                            break;
                        case -760884509:
                            if (str.equals("transformPivotY")) {
                                b = 9;
                            } else {
                                b = -1;
                            }
                            break;
                        case -40300674:
                            if (str.equals("rotation")) {
                                b = 10;
                            } else {
                                b = -1;
                            }
                            break;
                        case -4379043:
                            if (str.equals("elevation")) {
                                b = Ascii.VT;
                            } else {
                                b = -1;
                            }
                            break;
                        case 37232917:
                            if (str.equals("transitionPathRotate")) {
                                b = Ascii.FF;
                            } else {
                                b = -1;
                            }
                            break;
                        case 92909918:
                            if (str.equals("alpha")) {
                                b = Ascii.CR;
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
                            if (!Float.isNaN(this.m)) {
                                cVar.b(this.f752a, this.m);
                            }
                            break;
                        case 1:
                            if (!Float.isNaN(this.n)) {
                                cVar.b(this.f752a, this.n);
                            }
                            break;
                        case 2:
                            if (!Float.isNaN(this.t)) {
                                cVar.b(this.f752a, this.t);
                            }
                            break;
                        case 3:
                            if (!Float.isNaN(this.u)) {
                                cVar.b(this.f752a, this.u);
                            }
                            break;
                        case 4:
                            if (!Float.isNaN(this.v)) {
                                cVar.b(this.f752a, this.v);
                            }
                            break;
                        case 5:
                            if (!Float.isNaN(this.w)) {
                                cVar.b(this.f752a, this.w);
                            }
                            break;
                        case 6:
                            if (!Float.isNaN(this.r)) {
                                cVar.b(this.f752a, this.r);
                            }
                            break;
                        case 7:
                            if (!Float.isNaN(this.s)) {
                                cVar.b(this.f752a, this.s);
                            }
                            break;
                        case 8:
                            if (!Float.isNaN(this.m)) {
                                cVar.b(this.f752a, this.o);
                            }
                            break;
                        case 9:
                            if (!Float.isNaN(this.n)) {
                                cVar.b(this.f752a, this.p);
                            }
                            break;
                        case 10:
                            if (!Float.isNaN(this.l)) {
                                cVar.b(this.f752a, this.l);
                            }
                            break;
                        case 11:
                            if (!Float.isNaN(this.k)) {
                                cVar.b(this.f752a, this.k);
                            }
                            break;
                        case 12:
                            if (!Float.isNaN(this.q)) {
                                cVar.b(this.f752a, this.q);
                            }
                            break;
                        case 13:
                            if (!Float.isNaN(this.j)) {
                                cVar.b(this.f752a, this.j);
                            }
                            break;
                    }
                } else {
                    ConstraintAttribute constraintAttribute = this.f754e.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ((e.a.a.a.c.b) cVar).h(this.f752a, constraintAttribute);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        e eVar = new e();
        eVar.c(this);
        return eVar;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        e eVar = (e) dVar;
        this.f756h = eVar.f756h;
        this.i = eVar.i;
        this.j = eVar.j;
        this.k = eVar.k;
        this.l = eVar.l;
        this.m = eVar.m;
        this.n = eVar.n;
        this.o = eVar.o;
        this.p = eVar.p;
        this.q = eVar.q;
        this.r = eVar.r;
        this.s = eVar.s;
        this.t = eVar.t;
        this.u = eVar.u;
        this.v = eVar.v;
        this.w = eVar.w;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet<String> hashSet) {
        if (!Float.isNaN(this.j)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.k)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.t)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.u)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.v)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.w)) {
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
        a.a(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void f(HashMap<String, Integer> map) {
        if (this.f756h == -1) {
            return;
        }
        if (!Float.isNaN(this.j)) {
            map.put("alpha", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.k)) {
            map.put("elevation", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.l)) {
            map.put("rotation", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.m)) {
            map.put("rotationX", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.n)) {
            map.put("rotationY", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.o)) {
            map.put("transformPivotX", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.p)) {
            map.put("transformPivotY", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.t)) {
            map.put("translationX", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.u)) {
            map.put("translationY", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.v)) {
            map.put("translationZ", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.q)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.r)) {
            map.put("scaleX", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.s)) {
            map.put("scaleY", Integer.valueOf(this.f756h));
        }
        if (!Float.isNaN(this.w)) {
            map.put("progress", Integer.valueOf(this.f756h));
        }
        if (this.f754e.size() > 0) {
            Iterator<String> it = this.f754e.keySet().iterator();
            while (it.hasNext()) {
                map.put("CUSTOM," + it.next(), Integer.valueOf(this.f756h));
            }
        }
    }
}
