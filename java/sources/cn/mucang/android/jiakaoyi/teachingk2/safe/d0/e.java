package cn.mucang.android.jiakaoyi.teachingk2.safe.d0;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f7639a;
    private long c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte f7641e = -10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedList<Double> f7640d = new LinkedList<>();
    private double b = 50.0d;

    public e(double d2) {
        this.f7639a = d2 / 3.6d;
    }

    private static double c(List<Double> list) {
        Iterator<Double> it = list.iterator();
        double dDoubleValue = 0.0d;
        while (it.hasNext()) {
            dDoubleValue += it.next().doubleValue();
        }
        return dDoubleValue;
    }

    public void a(final byte b) {
        if (Math.abs(b - this.f7641e) < 3) {
            return;
        }
        this.f7641e = b;
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.d0.a
            @Override // java.lang.Runnable
            public final void run() {
                SafeCommandManager.d(BrakeModel.createBrakeModel(BrakeReason.TeachBrake, null, true), (byte) 1, b);
            }
        });
    }

    public void d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().h()) {
            if (this.c <= 0 || eVar.d().L - this.c >= 500) {
                this.c = eVar.d().L;
                double dMax = (((double) Math.max(eVar.d().b, eVar.d().c)) / 3.6d) - this.f7639a;
                this.f7640d.addFirst(Double.valueOf(dMax));
                if (this.f7640d.size() > 4) {
                    this.f7640d.removeLast();
                }
                double dFloatValue = this.b + (dMax * ((double) h.n.b().floatValue())) + (c(this.f7640d) * ((double) h.o.b().floatValue()));
                this.b = dFloatValue;
                double dMax2 = (byte) Math.max(10.0d, dFloatValue);
                this.b = dMax2;
                double dMin = (byte) Math.min(60.0d, dMax2);
                this.b = dMin;
                a((byte) dMin);
            }
        }
    }
}
