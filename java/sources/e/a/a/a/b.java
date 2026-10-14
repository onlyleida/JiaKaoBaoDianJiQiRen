package e.a.a.a;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.google.common.base.Ascii;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends androidx.constraintlayout.core.motion.a.e {

    static class a extends b {
        a() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            view.setAlpha(a(f2));
        }
    }

    /* JADX INFO: renamed from: e.a.a.a.b$b, reason: collision with other inner class name */
    static class C0292b extends b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float[] f14434g = new float[1];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        protected ConstraintAttribute f14435h;

        C0292b() {
        }

        @Override // androidx.constraintlayout.core.motion.a.e
        protected void b(Object obj) {
            this.f14435h = (ConstraintAttribute) obj;
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            this.f14434g[0] = a(f2);
            this.f14435h.j(view, this.f14434g);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f2));
            }
        }
    }

    public static class d extends b {
        @Override // e.a.a.a.b
        public void i(View view, float f2) {
        }

        public void j(View view, float f2, double d2, double d3) {
            view.setRotation(a(f2) + ((float) Math.toDegrees(Math.atan2(d3, d2))));
        }
    }

    static class e extends b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f14436g = false;

        e() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f2));
                return;
            }
            if (this.f14436g) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f14436g = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f2)));
                } catch (IllegalAccessException e2) {
                    Log.e("ViewOscillator", "unable to setProgress", e2);
                } catch (InvocationTargetException e3) {
                    Log.e("ViewOscillator", "unable to setProgress", e3);
                }
            }
        }
    }

    static class f extends b {
        f() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            view.setRotation(a(f2));
        }
    }

    static class g extends b {
        g() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            view.setRotationX(a(f2));
        }
    }

    static class h extends b {
        h() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            view.setRotationY(a(f2));
        }
    }

    static class i extends b {
        i() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            view.setScaleX(a(f2));
        }
    }

    static class j extends b {
        j() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            view.setScaleY(a(f2));
        }
    }

    static class k extends b {
        k() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            view.setTranslationX(a(f2));
        }
    }

    static class l extends b {
        l() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            view.setTranslationY(a(f2));
        }
    }

    static class m extends b {
        m() {
        }

        @Override // e.a.a.a.b
        public void i(View view, float f2) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f2));
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static b h(String str) {
        if (str.startsWith("CUSTOM")) {
            return new C0292b();
        }
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
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    b = 8;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    b = 9;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b = 10;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b = Ascii.VT;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b = Ascii.FF;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    b = Ascii.CR;
                }
                break;
        }
        switch (b) {
            case 0:
                return new g();
            case 1:
                return new h();
            case 2:
                return new k();
            case 3:
                return new l();
            case 4:
                return new m();
            case 5:
                return new e();
            case 6:
                return new i();
            case 7:
                return new j();
            case 8:
                return new a();
            case 9:
                return new f();
            case 10:
                return new c();
            case 11:
                return new d();
            case 12:
                return new a();
            case 13:
                return new a();
            default:
                return null;
        }
    }

    public abstract void i(View view, float f2);
}
