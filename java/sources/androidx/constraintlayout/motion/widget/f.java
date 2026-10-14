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
public class f extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f758g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f759h = 0;
    private int i = -1;
    private String j = null;
    private float k = Float.NaN;
    private float l = BitmapDescriptorFactory.HUE_RED;
    private float m = BitmapDescriptorFactory.HUE_RED;
    private float n = Float.NaN;
    private int o = -1;
    private float p = Float.NaN;
    private float q = Float.NaN;
    private float r = Float.NaN;
    private float s = Float.NaN;
    private float t = Float.NaN;
    private float u = Float.NaN;
    private float v = Float.NaN;
    private float w = Float.NaN;
    private float x = Float.NaN;
    private float y = Float.NaN;
    private float z = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f760a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f760a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyCycle_motionTarget, 1);
            f760a.append(R.styleable.KeyCycle_framePosition, 2);
            f760a.append(R.styleable.KeyCycle_transitionEasing, 3);
            f760a.append(R.styleable.KeyCycle_curveFit, 4);
            f760a.append(R.styleable.KeyCycle_waveShape, 5);
            f760a.append(R.styleable.KeyCycle_wavePeriod, 6);
            f760a.append(R.styleable.KeyCycle_waveOffset, 7);
            f760a.append(R.styleable.KeyCycle_waveVariesBy, 8);
            f760a.append(R.styleable.KeyCycle_android_alpha, 9);
            f760a.append(R.styleable.KeyCycle_android_elevation, 10);
            f760a.append(R.styleable.KeyCycle_android_rotation, 11);
            f760a.append(R.styleable.KeyCycle_android_rotationX, 12);
            f760a.append(R.styleable.KeyCycle_android_rotationY, 13);
            f760a.append(R.styleable.KeyCycle_transitionPathRotate, 14);
            f760a.append(R.styleable.KeyCycle_android_scaleX, 15);
            f760a.append(R.styleable.KeyCycle_android_scaleY, 16);
            f760a.append(R.styleable.KeyCycle_android_translationX, 17);
            f760a.append(R.styleable.KeyCycle_android_translationY, 18);
            f760a.append(R.styleable.KeyCycle_android_translationZ, 19);
            f760a.append(R.styleable.KeyCycle_motionProgress, 20);
            f760a.append(R.styleable.KeyCycle_wavePhase, 21);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(f fVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f760a.get(index)) {
                    case 1:
                        if (MotionLayout.y0) {
                            int resourceId = typedArray.getResourceId(index, fVar.b);
                            fVar.b = resourceId;
                            if (resourceId == -1) {
                                fVar.c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            fVar.c = typedArray.getString(index);
                        } else {
                            fVar.b = typedArray.getResourceId(index, fVar.b);
                        }
                        break;
                    case 2:
                        fVar.f752a = typedArray.getInt(index, fVar.f752a);
                        break;
                    case 3:
                        fVar.f758g = typedArray.getString(index);
                        break;
                    case 4:
                        fVar.f759h = typedArray.getInteger(index, fVar.f759h);
                        break;
                    case 5:
                        if (typedArray.peekValue(index).type == 3) {
                            fVar.j = typedArray.getString(index);
                            fVar.i = 7;
                        } else {
                            fVar.i = typedArray.getInt(index, fVar.i);
                        }
                        break;
                    case 6:
                        fVar.k = typedArray.getFloat(index, fVar.k);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            fVar.l = typedArray.getDimension(index, fVar.l);
                        } else {
                            fVar.l = typedArray.getFloat(index, fVar.l);
                        }
                        break;
                    case 8:
                        fVar.o = typedArray.getInt(index, fVar.o);
                        break;
                    case 9:
                        fVar.p = typedArray.getFloat(index, fVar.p);
                        break;
                    case 10:
                        fVar.q = typedArray.getDimension(index, fVar.q);
                        break;
                    case 11:
                        fVar.r = typedArray.getFloat(index, fVar.r);
                        break;
                    case 12:
                        fVar.t = typedArray.getFloat(index, fVar.t);
                        break;
                    case 13:
                        fVar.u = typedArray.getFloat(index, fVar.u);
                        break;
                    case 14:
                        fVar.s = typedArray.getFloat(index, fVar.s);
                        break;
                    case 15:
                        fVar.v = typedArray.getFloat(index, fVar.v);
                        break;
                    case 16:
                        fVar.w = typedArray.getFloat(index, fVar.w);
                        break;
                    case 17:
                        fVar.x = typedArray.getDimension(index, fVar.x);
                        break;
                    case 18:
                        fVar.y = typedArray.getDimension(index, fVar.y);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            fVar.z = typedArray.getDimension(index, fVar.z);
                        }
                        break;
                    case 20:
                        fVar.n = typedArray.getFloat(index, fVar.n);
                        break;
                    case 21:
                        fVar.m = typedArray.getFloat(index, fVar.m) / 360.0f;
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f760a.get(index));
                        break;
                }
            }
        }
    }

    public f() {
        this.f753d = 4;
        this.f754e = new HashMap<>();
    }

    public void S(HashMap<String, e.a.a.a.b> map) {
        e.a.a.a.b bVar;
        e.a.a.a.b bVar2;
        for (String str : map.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = this.f754e.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.d() == ConstraintAttribute.AttributeType.FLOAT_TYPE && (bVar = map.get(str)) != null) {
                    bVar.d(this.f752a, this.i, this.j, this.o, this.k, this.l, this.m, constraintAttribute.e(), constraintAttribute);
                }
            } else {
                float fT = T(str);
                if (!Float.isNaN(fT) && (bVar2 = map.get(str)) != null) {
                    bVar2.c(this.f752a, this.i, this.j, this.o, this.k, this.l, this.m, fT);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public float T(String str) {
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
            case -40300674:
                if (str.equals("rotation")) {
                    b = 8;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b = 9;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b = 10;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b = Ascii.VT;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    b = Ascii.FF;
                }
                break;
            case 1530034690:
                if (str.equals("wavePhase")) {
                    b = Ascii.CR;
                }
                break;
        }
        switch (b) {
            case 0:
                return this.t;
            case 1:
                return this.u;
            case 2:
                return this.x;
            case 3:
                return this.y;
            case 4:
                return this.z;
            case 5:
                return this.n;
            case 6:
                return this.v;
            case 7:
                return this.w;
            case 8:
                return this.r;
            case 9:
                return this.q;
            case 10:
                return this.s;
            case 11:
                return this.p;
            case 12:
                return this.l;
            case 13:
                return this.m;
            default:
                if (str.startsWith("CUSTOM")) {
                    return Float.NaN;
                }
                Log.v("WARNING! KeyCycle", "  UNKNOWN  " + str);
                return Float.NaN;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap<String, e.a.a.a.c> map) {
        androidx.constraintlayout.motion.widget.a.f("KeyCycle", "add " + map.size() + " values", 2);
        for (String str : map.keySet()) {
            e.a.a.a.c cVar = map.get(str);
            if (cVar != null) {
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
                    case -40300674:
                        if (str.equals("rotation")) {
                            b = 8;
                        }
                        break;
                    case -4379043:
                        if (str.equals("elevation")) {
                            b = 9;
                        }
                        break;
                    case 37232917:
                        if (str.equals("transitionPathRotate")) {
                            b = 10;
                        }
                        break;
                    case 92909918:
                        if (str.equals("alpha")) {
                            b = Ascii.VT;
                        }
                        break;
                    case 156108012:
                        if (str.equals("waveOffset")) {
                            b = Ascii.FF;
                        }
                        break;
                    case 1530034690:
                        if (str.equals("wavePhase")) {
                            b = Ascii.CR;
                        }
                        break;
                }
                switch (b) {
                    case 0:
                        cVar.b(this.f752a, this.t);
                        break;
                    case 1:
                        cVar.b(this.f752a, this.u);
                        break;
                    case 2:
                        cVar.b(this.f752a, this.x);
                        break;
                    case 3:
                        cVar.b(this.f752a, this.y);
                        break;
                    case 4:
                        cVar.b(this.f752a, this.z);
                        break;
                    case 5:
                        cVar.b(this.f752a, this.n);
                        break;
                    case 6:
                        cVar.b(this.f752a, this.v);
                        break;
                    case 7:
                        cVar.b(this.f752a, this.w);
                        break;
                    case 8:
                        cVar.b(this.f752a, this.r);
                        break;
                    case 9:
                        cVar.b(this.f752a, this.q);
                        break;
                    case 10:
                        cVar.b(this.f752a, this.s);
                        break;
                    case 11:
                        cVar.b(this.f752a, this.p);
                        break;
                    case 12:
                        cVar.b(this.f752a, this.l);
                        break;
                    case 13:
                        cVar.b(this.f752a, this.m);
                        break;
                    default:
                        if (!str.startsWith("CUSTOM")) {
                            Log.v("WARNING KeyCycle", "  UNKNOWN  " + str);
                        }
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        f fVar = new f();
        fVar.c(this);
        return fVar;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        f fVar = (f) dVar;
        this.f758g = fVar.f758g;
        this.f759h = fVar.f759h;
        this.i = fVar.i;
        this.j = fVar.j;
        this.k = fVar.k;
        this.l = fVar.l;
        this.m = fVar.m;
        this.n = fVar.n;
        this.o = fVar.o;
        this.p = fVar.p;
        this.q = fVar.q;
        this.r = fVar.r;
        this.s = fVar.s;
        this.t = fVar.t;
        this.u = fVar.u;
        this.v = fVar.v;
        this.w = fVar.w;
        this.x = fVar.x;
        this.y = fVar.y;
        this.z = fVar.z;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet<String> hashSet) {
        if (!Float.isNaN(this.p)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.t)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.u)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.v)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.w)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.x)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.y)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.z)) {
            hashSet.add("translationZ");
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
        a.b(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyCycle));
    }
}
