package e.a.a.a;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.common.base.Ascii;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends androidx.constraintlayout.core.motion.a.l {

    static class a extends d {
        a() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            view.setAlpha(f(f2, j, view, dVar));
            return this.f672h;
        }
    }

    public static class b extends d {
        String l;
        SparseArray<ConstraintAttribute> m;
        SparseArray<float[]> n = new SparseArray<>();
        float[] o;
        float[] p;

        public b(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.l = str.split(",")[1];
            this.m = sparseArray;
        }

        @Override // androidx.constraintlayout.core.motion.a.l
        public void b(int i, float f2, float f3, int i2, float f4) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // androidx.constraintlayout.core.motion.a.l
        public void e(int i) {
            int size = this.m.size();
            int iG = this.m.valueAt(0).g();
            double[] dArr = new double[size];
            int i2 = iG + 2;
            this.o = new float[i2];
            this.p = new float[iG];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, i2);
            for (int i3 = 0; i3 < size; i3++) {
                int iKeyAt = this.m.keyAt(i3);
                ConstraintAttribute constraintAttributeValueAt = this.m.valueAt(i3);
                float[] fArrValueAt = this.n.valueAt(i3);
                dArr[i3] = ((double) iKeyAt) * 0.01d;
                constraintAttributeValueAt.f(this.o);
                int i4 = 0;
                while (true) {
                    float[] fArr = this.o;
                    if (i4 < fArr.length) {
                        dArr2[i3][i4] = fArr[i4];
                        i4++;
                    }
                }
                dArr2[i3][iG] = fArrValueAt[0];
                dArr2[i3][iG + 1] = fArrValueAt[1];
            }
            this.f667a = androidx.constraintlayout.core.motion.a.b.a(i, dArr, dArr2);
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            this.f667a.e(f2, this.o);
            float[] fArr = this.o;
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            long j2 = j - this.i;
            if (Float.isNaN(this.j)) {
                float fA = dVar.a(view, this.l, 0);
                this.j = fA;
                if (Float.isNaN(fA)) {
                    this.j = BitmapDescriptorFactory.HUE_RED;
                }
            }
            float f5 = (float) ((((double) this.j) + ((j2 * 1.0E-9d) * ((double) f3))) % 1.0d);
            this.j = f5;
            this.i = j;
            float fA2 = a(f5);
            this.f672h = false;
            int i = 0;
            while (true) {
                float[] fArr2 = this.p;
                if (i >= fArr2.length) {
                    break;
                }
                boolean z = this.f672h;
                float[] fArr3 = this.o;
                this.f672h = z | (((double) fArr3[i]) != 0.0d);
                fArr2[i] = (fArr3[i] * fA2) + f4;
                i++;
            }
            this.m.valueAt(0).j(view, this.p);
            if (f3 != BitmapDescriptorFactory.HUE_RED) {
                this.f672h = true;
            }
            return this.f672h;
        }

        public void j(int i, ConstraintAttribute constraintAttribute, float f2, int i2, float f3) {
            this.m.append(i, constraintAttribute);
            this.n.append(i, new float[]{f2, f3});
            this.b = Math.max(this.b, i2);
        }
    }

    static class c extends d {
        c() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(f(f2, j, view, dVar));
            }
            return this.f672h;
        }
    }

    /* JADX INFO: renamed from: e.a.a.a.d$d, reason: collision with other inner class name */
    public static class C0294d extends d {
        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            return this.f672h;
        }

        public boolean j(View view, androidx.constraintlayout.core.motion.a.d dVar, float f2, long j, double d2, double d3) {
            view.setRotation(f(f2, j, view, dVar) + ((float) Math.toDegrees(Math.atan2(d3, d2))));
            return this.f672h;
        }
    }

    static class e extends d {
        boolean l = false;

        e() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(f(f2, j, view, dVar));
            } else {
                if (this.l) {
                    return false;
                }
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.l = true;
                }
                Method method2 = method;
                if (method2 != null) {
                    try {
                        method2.invoke(view, Float.valueOf(f(f2, j, view, dVar)));
                    } catch (IllegalAccessException e2) {
                        Log.e("ViewTimeCycle", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("ViewTimeCycle", "unable to setProgress", e3);
                    }
                }
            }
            return this.f672h;
        }
    }

    static class f extends d {
        f() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            view.setRotation(f(f2, j, view, dVar));
            return this.f672h;
        }
    }

    static class g extends d {
        g() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            view.setRotationX(f(f2, j, view, dVar));
            return this.f672h;
        }
    }

    static class h extends d {
        h() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            view.setRotationY(f(f2, j, view, dVar));
            return this.f672h;
        }
    }

    static class i extends d {
        i() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            view.setScaleX(f(f2, j, view, dVar));
            return this.f672h;
        }
    }

    static class j extends d {
        j() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            view.setScaleY(f(f2, j, view, dVar));
            return this.f672h;
        }
    }

    static class k extends d {
        k() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            view.setTranslationX(f(f2, j, view, dVar));
            return this.f672h;
        }
    }

    static class l extends d {
        l() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            view.setTranslationY(f(f2, j, view, dVar));
            return this.f672h;
        }
    }

    static class m extends d {
        m() {
        }

        @Override // e.a.a.a.d
        public boolean i(View view, float f2, long j, androidx.constraintlayout.core.motion.a.d dVar) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(f(f2, j, view, dVar));
            }
            return this.f672h;
        }
    }

    public static d g(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new b(str, sparseArray);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static d h(String str, long j2) {
        d gVar;
        str.hashCode();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    b2 = 0;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    b2 = 1;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    b2 = 2;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    b2 = 3;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    b2 = 4;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    b2 = 5;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    b2 = 6;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    b2 = 7;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    b2 = 8;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b2 = 9;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b2 = 10;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b2 = Ascii.VT;
                }
                break;
        }
        switch (b2) {
            case 0:
                gVar = new g();
                break;
            case 1:
                gVar = new h();
                break;
            case 2:
                gVar = new k();
                break;
            case 3:
                gVar = new l();
                break;
            case 4:
                gVar = new m();
                break;
            case 5:
                gVar = new e();
                break;
            case 6:
                gVar = new i();
                break;
            case 7:
                gVar = new j();
                break;
            case 8:
                gVar = new f();
                break;
            case 9:
                gVar = new c();
                break;
            case 10:
                gVar = new C0294d();
                break;
            case 11:
                gVar = new a();
                break;
            default:
                return null;
        }
        gVar.c(j2);
        return gVar;
    }

    public float f(float f2, long j2, View view, androidx.constraintlayout.core.motion.a.d dVar) {
        this.f667a.e(f2, this.f671g);
        float[] fArr = this.f671g;
        float f3 = fArr[1];
        if (f3 == BitmapDescriptorFactory.HUE_RED) {
            this.f672h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.j)) {
            float fA = dVar.a(view, this.f670f, 0);
            this.j = fA;
            if (Float.isNaN(fA)) {
                this.j = BitmapDescriptorFactory.HUE_RED;
            }
        }
        float f4 = (float) ((((double) this.j) + (((j2 - this.i) * 1.0E-9d) * ((double) f3))) % 1.0d);
        this.j = f4;
        dVar.b(view, this.f670f, 0, f4);
        this.i = j2;
        float f5 = this.f671g[0];
        float fA2 = (a(this.j) * f5) + this.f671g[2];
        this.f672h = (f5 == BitmapDescriptorFactory.HUE_RED && f3 == BitmapDescriptorFactory.HUE_RED) ? false : true;
        return fA2;
    }

    public abstract boolean i(View view, float f2, long j2, androidx.constraintlayout.core.motion.a.d dVar);
}
