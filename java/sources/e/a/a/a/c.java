package e.a.a.a;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.google.common.base.Ascii;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends androidx.constraintlayout.core.motion.a.j {

    static class a extends c {
        a() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setAlpha(a(f2));
        }
    }

    public static class b extends c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SparseArray<ConstraintAttribute> f14437f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float[] f14438g;

        public b(String str, SparseArray<ConstraintAttribute> sparseArray) {
            String str2 = str.split(",")[1];
            this.f14437f = sparseArray;
        }

        @Override // androidx.constraintlayout.core.motion.a.j
        public void b(int i, float f2) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.core.motion.a.j
        public void d(int i) {
            int size = this.f14437f.size();
            int iG = this.f14437f.valueAt(0).g();
            double[] dArr = new double[size];
            this.f14438g = new float[iG];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, iG);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = this.f14437f.keyAt(i2);
                ConstraintAttribute constraintAttributeValueAt = this.f14437f.valueAt(i2);
                dArr[i2] = ((double) iKeyAt) * 0.01d;
                constraintAttributeValueAt.f(this.f14438g);
                int i3 = 0;
                while (true) {
                    float[] fArr = this.f14438g;
                    if (i3 < fArr.length) {
                        dArr2[i2][i3] = fArr[i3];
                        i3++;
                    }
                }
            }
            this.f663a = androidx.constraintlayout.core.motion.a.b.a(i, dArr, dArr2);
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            this.f663a.e(f2, this.f14438g);
            this.f14437f.valueAt(0).j(view, this.f14438g);
        }

        public void h(int i, ConstraintAttribute constraintAttribute) {
            this.f14437f.append(i, constraintAttribute);
        }
    }

    /* JADX INFO: renamed from: e.a.a.a.c$c, reason: collision with other inner class name */
    static class C0293c extends c {
        C0293c() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f2));
            }
        }
    }

    public static class d extends c {
        @Override // e.a.a.a.c
        public void g(View view, float f2) {
        }

        public void h(View view, float f2, double d2, double d3) {
            view.setRotation(a(f2) + ((float) Math.toDegrees(Math.atan2(d3, d2))));
        }
    }

    static class e extends c {
        e() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setPivotX(a(f2));
        }
    }

    static class f extends c {
        f() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setPivotY(a(f2));
        }
    }

    static class g extends c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f14439f = false;

        g() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f2));
                return;
            }
            if (this.f14439f) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f14439f = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f2)));
                } catch (IllegalAccessException e2) {
                    Log.e("ViewSpline", "unable to setProgress", e2);
                } catch (InvocationTargetException e3) {
                    Log.e("ViewSpline", "unable to setProgress", e3);
                }
            }
        }
    }

    static class h extends c {
        h() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setRotation(a(f2));
        }
    }

    static class i extends c {
        i() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setRotationX(a(f2));
        }
    }

    static class j extends c {
        j() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setRotationY(a(f2));
        }
    }

    static class k extends c {
        k() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setScaleX(a(f2));
        }
    }

    static class l extends c {
        l() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setScaleY(a(f2));
        }
    }

    static class m extends c {
        m() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setTranslationX(a(f2));
        }
    }

    static class n extends c {
        n() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            view.setTranslationY(a(f2));
        }
    }

    static class o extends c {
        o() {
        }

        @Override // e.a.a.a.c
        public void g(View view, float f2) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f2));
            }
        }
    }

    public static c e(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new b(str, sparseArray);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static c f(String str) {
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
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    b2 = 8;
                }
                break;
            case -760884510:
                if (str.equals("transformPivotX")) {
                    b2 = 9;
                }
                break;
            case -760884509:
                if (str.equals("transformPivotY")) {
                    b2 = 10;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    b2 = Ascii.VT;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b2 = Ascii.FF;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b2 = Ascii.CR;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b2 = Ascii.SO;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    b2 = Ascii.SI;
                }
                break;
        }
        switch (b2) {
            case 0:
                return new i();
            case 1:
                return new j();
            case 2:
                return new m();
            case 3:
                return new n();
            case 4:
                return new o();
            case 5:
                return new g();
            case 6:
                return new k();
            case 7:
                return new l();
            case 8:
                return new a();
            case 9:
                return new e();
            case 10:
                return new f();
            case 11:
                return new h();
            case 12:
                return new C0293c();
            case 13:
                return new d();
            case 14:
                return new a();
            case 15:
                return new a();
            default:
                return null;
        }
    }

    public abstract void g(View view, float f2);
}
