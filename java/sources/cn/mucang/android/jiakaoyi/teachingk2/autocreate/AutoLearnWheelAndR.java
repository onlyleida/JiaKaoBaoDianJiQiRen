package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.framework.utils.r0;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class AutoLearnWheelAndR {
    private static final r0<WheelSteerFactor> b = r0.h("factor-wheel-steer-front", new WheelSteerFactor(1.3236045129441394E-5d, 0.05471285994307601d, 0.11267108884051497d), WheelSteerFactor.class);
    private static final r0<WheelSteerFactor> c = r0.h("factor-wheel-steer-back", new WheelSteerFactor(-9.738036955229281E-6d, 0.05845694284561054d, 0.33146466515219986d), WheelSteerFactor.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WheelAndRLearning f6176a = new WheelAndRLearning();

    public static class WheelSteerFactor implements Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f6177a;
        public double b;
        public double c;

        public WheelSteerFactor() {
            this(1.3236045129441394E-5d, 0.05471285994307601d, 0.11267108884051497d);
        }

        public double getX(double d2) {
            double d3 = this.b;
            return ((-d3) + Math.sqrt((d3 * d3) - ((this.f6177a * 4.0d) * (this.c - d2)))) / (this.f6177a * 2.0d);
        }

        public double getY(double d2) {
            return (this.f6177a * d2 * d2) + (this.b * d2) + this.c;
        }

        public String toString() {
            return "{a=" + this.f6177a + ", b=" + this.b + ", c=" + this.c + '}';
        }

        public WheelSteerFactor(double d2, double d3, double d4) {
            this.f6177a = d2;
            this.b = d3;
            this.c = d4;
        }
    }

    public static double a(double d2, boolean z) {
        return (z ? b : c).b().getY(Math.abs(d2));
    }

    public static double b(double d2, boolean z) {
        return (z ? b : c).b().getX(Math.abs(d2));
    }

    public void c(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().h() && eVar.getCurrentPosition().b()) {
            this.f6176a.d(eVar);
        }
    }

    public void d() {
        this.f6176a.i();
    }

    public String e() {
        String strE = this.f6176a.e();
        if (this.f6176a.j()) {
            WheelSteerFactor wheelSteerFactorB = this.f6176a.b(true);
            WheelSteerFactor wheelSteerFactorB2 = this.f6176a.b(false);
            if (wheelSteerFactorB != null) {
                b.j(wheelSteerFactorB);
            }
            if (wheelSteerFactorB2 != null) {
                c.j(wheelSteerFactorB2);
            }
            strE = strE + "\nfront = " + b.b() + "\nback = " + c.b();
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(strE);
        return strE;
    }
}
