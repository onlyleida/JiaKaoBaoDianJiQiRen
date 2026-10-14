package cn.mucang.android.jiakaoyi.signal.gearsensor;

import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Pos f5612a;
    final Pos b;
    public final Gear c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final double f5614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final double f5615f;
    private final GearPose j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f5616g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f5617h = 0;
    private final List<b> k = new ArrayList();
    private final List<c> l = new ArrayList();
    private float i = BitmapDescriptorFactory.HUE_RED;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f5618a;
        final float b;
        final float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f5619d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f5620e;

        void a(double d2, double d3, double d4, double d5) {
            float f2 = this.f5618a;
            if ((d2 - ((double) f2)) * (((double) f2) - d4) >= 0.0d) {
                double d6 = d2 - d4;
                double d7 = (((d3 - d5) * (((double) f2) - d4)) / d6) + d5;
                if (d7 > this.b || d7 < this.c) {
                    return;
                }
                this.f5620e = d6 * ((double) this.f5619d) >= 0.0d;
            }
        }

        private b(float f2, float f3, float f4, int i) {
            this.f5618a = f2;
            this.b = f3;
            this.c = f4;
            this.f5619d = i;
            this.f5620e = false;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f5621a;
        final float b;
        final float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f5622d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f5623e;

        void a(double d2, double d3, double d4, double d5) {
            float f2 = this.f5621a;
            if ((d3 - ((double) f2)) * (((double) f2) - d5) >= 0.0d) {
                double d6 = d3 - d5;
                double d7 = (((d2 - d4) * (((double) f2) - d5)) / d6) + d4;
                if (d7 < this.b || d7 > this.c) {
                    return;
                }
                this.f5622d = d6 * ((double) this.f5623e) >= 0.0d;
            }
        }

        private c(float f2, float f3, float f4, int i) {
            this.f5621a = f2;
            this.b = f3;
            this.c = f4;
            this.f5623e = i;
            this.f5622d = false;
        }
    }

    public g(Pos pos, Pos pos2, Gear gear, Pos pos3, GearPose gearPose) {
        this.f5612a = pos;
        this.b = pos2;
        this.c = gear;
        this.j = gearPose;
        double d2 = 1.0d / (pos2.x - pos.x);
        this.f5615f = d2;
        this.f5614e = (pos2.y - pos.y) * d2;
        d();
    }

    private void c(double d2, double d3, double d4, double d5) {
        Iterator<b> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().a(d2, d3, d4, d5);
        }
        Iterator<c> it2 = this.l.iterator();
        while (it2.hasNext()) {
            it2.next().a(d2, d3, d4, d5);
        }
    }

    private void d() {
        List<GearPose> listL = h.l(Gear.GearN);
        if (listL == null || listL.size() == 0) {
            return;
        }
        GearPose gearPose = listL.get(0);
        Gear gear = this.c;
        if (gear == Gear.Gear1) {
            List<b> list = this.k;
            float f2 = gearPose.roll * 0.7f;
            GearPose gearPose2 = this.j;
            float f3 = f2 + (gearPose2.roll * 0.3f);
            float f4 = gearPose2.maxPitch;
            list.add(new b(f3, f4 + 1.0f, Math.max(gearPose2.pitch + 1.0f, f4 - 4.0f), 1));
            List<c> list2 = this.l;
            GearPose gearPose3 = this.j;
            float f5 = (gearPose3.maxPitch * 0.6f) + (gearPose3.pitch * 0.4f);
            float f6 = gearPose3.roll;
            list2.add(new c(f5, f6 - 6.0f, f6 + 4.0f, -1));
            return;
        }
        if (gear == Gear.Gear2) {
            List<b> list3 = this.k;
            float f7 = gearPose.roll * 0.7f;
            GearPose gearPose4 = this.j;
            float f8 = f7 + (gearPose4.roll * 0.3f);
            float f9 = gearPose4.pitch;
            list3.add(new b(f8, f9 + 100.0f, f9 + 1.0f, 1));
            List<c> list4 = this.l;
            GearPose gearPose5 = this.j;
            float f10 = (gearPose5.maxPitch * 0.5f) + (gearPose5.pitch * 0.5f);
            float f11 = gearPose5.roll;
            list4.add(new c(f10, f11 - 3.0f, f11 + 3.0f, -1));
            List<c> list5 = this.l;
            GearPose gearPose6 = this.j;
            float f12 = (gearPose6.maxPitch * 0.6f) + (gearPose6.pitch * 0.4f);
            float f13 = gearPose.roll;
            list5.add(new c(f12, f13 - 3.0f, f13 + 3.0f, 1));
            return;
        }
        if (gear == Gear.Gear3) {
            List<b> list6 = this.k;
            float f14 = gearPose.roll * 0.4f;
            GearPose gearPose7 = this.j;
            float f15 = (gearPose7.roll * 0.6f) + f14;
            float f16 = gearPose7.pitch;
            list6.add(new b(f15, f16 + 2.0f, f16 - 2.0f, 1));
            return;
        }
        if (gear == Gear.Gear4) {
            List<b> list7 = this.k;
            float f17 = gearPose.roll * 0.4f;
            GearPose gearPose8 = this.j;
            float f18 = (gearPose8.roll * 0.6f) + f17;
            float f19 = gearPose8.pitch;
            list7.add(new b(f18, f19 + 2.0f, f19 - 2.0f, -1));
            return;
        }
        if (gear == Gear.Gear5) {
            List<b> list8 = this.k;
            float f20 = gearPose.roll * 0.7f;
            GearPose gearPose9 = this.j;
            float f21 = f20 + (gearPose9.roll * 0.3f);
            float f22 = gearPose9.pitch;
            list8.add(new b(f21, f22 - 1.0f, f22 - 100.0f, 1));
            List<c> list9 = this.l;
            GearPose gearPose10 = this.j;
            float f23 = (gearPose10.minPitch * 0.6f) + (gearPose10.pitch * 0.4f);
            float f24 = gearPose10.roll;
            list9.add(new c(f23, f24 - 7.0f, f24 + 4.0f, 1));
            return;
        }
        if (gear == Gear.GearBack) {
            if (h.F()) {
                List<b> list10 = this.k;
                float f25 = gearPose.roll * 0.6f;
                GearPose gearPose11 = this.j;
                float f26 = (gearPose11.roll * 0.4f) + f25;
                float f27 = gearPose11.pitch;
                list10.add(new b(f26, f27 + 100.0f, f27, 1));
                List<c> list11 = this.l;
                float f28 = this.j.pitch;
                float f29 = gearPose.roll;
                list11.add(new c(f28, f29 - 10.0f, f29 + 10.0f, 1));
                return;
            }
            List<b> list12 = this.k;
            float f30 = gearPose.roll * 0.7f;
            GearPose gearPose12 = this.j;
            float f31 = f30 + (gearPose12.roll * 0.3f);
            float f32 = gearPose12.pitch;
            int i = -1;
            list12.add(new b(f31, f32, f32 - 100.0f, i));
            List<b> list13 = this.k;
            GearPose gearPose13 = this.j;
            float f33 = gearPose13.roll + 4.0f;
            float f34 = gearPose13.pitch;
            list13.add(new b(f33, f34, f34 - 3.0f, i));
            List<c> list14 = this.l;
            GearPose gearPose14 = this.j;
            float f35 = (gearPose14.minPitch * 0.3f) + (gearPose14.pitch * 0.7f);
            float f36 = gearPose14.roll;
            list14.add(new c(f35, f36 - 4.0f, f36 + 6.0f, 1));
        }
    }

    private void e() {
        Iterator<b> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().f5620e = false;
        }
        Iterator<c> it2 = this.l.iterator();
        while (it2.hasNext()) {
            it2.next().f5622d = false;
        }
    }

    private static String f(double d2) {
        return String.format("%.1f", Double.valueOf(d2));
    }

    public float a() {
        boolean z;
        boolean z2;
        Iterator<b> it = this.k.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            if (it.next().f5620e) {
                z2 = true;
                break;
            }
        }
        if (!z2) {
            Iterator<c> it2 = this.l.iterator();
            do {
                if (!it2.hasNext()) {
                    z = z2;
                    break;
                }
            } while (!it2.next().f5622d);
        } else {
            z = z2;
            break;
        }
        return Math.abs(this.i) + (z ? 0 : Videoio.CAP_UNICAP);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x015b  */
    /* JADX WARN: Code duplicated, block: B:60:0x0179  */
    public void b(double d2, double d3, double d4, double d5, double d6) {
        boolean z;
        double d7;
        double d8;
        double d9;
        double d10;
        int i;
        double d11;
        List<GearPose> listL = h.l(Gear.GearN);
        if (listL == null || listL.size() == 0) {
            return;
        }
        GearPose gearPose = listL.get(0);
        c(d2, d3, d4, d5);
        if (d6 < 1.5d) {
            this.f5616g++;
        } else {
            this.f5616g = 0;
        }
        double d12 = this.b.x;
        Pos pos = this.f5612a;
        d4 = pos.x;
        double d13 = d2 - d4;
        double d14 = 0.0d;
        boolean z2 = (d12 - d4) * d13 > 0.0d;
        if ((d2 - d4) * (d4 - d4) > 0.0d) {
            this.f5613d = false;
            this.f5616g = 0;
            this.f5617h = 0;
            if (!z2) {
                this.i = 10000.0f;
                e();
                return;
            }
            this.i = BitmapDescriptorFactory.HUE_RED;
            double d15 = d3 - d5;
            double d16 = (((d4 - d4) * d15) / d13) + d5;
            if ((d2 - d12) * (d12 - d4) > 0.0d) {
                d11 = (((d12 - d4) * d15) / d13) + d5;
                this.f5613d = true;
                i = 1;
            } else {
                i = 2;
                d12 = d2;
                d11 = d3;
            }
            double d17 = pos.y;
            double d18 = (this.f5614e * (d12 - d4)) + d17;
            d8 = d17;
            d14 = d12;
            d7 = d16;
            d9 = d11;
            d10 = d18;
        } else if ((d2 - d12) * (d12 - d4) > 0.0d) {
            if (z2) {
                d9 = (((d12 - d4) * (d3 - d5)) / d13) + d5;
                double d19 = this.f5614e;
                double d20 = pos.y;
                double d21 = ((d4 - d4) * d19) + d20;
                i = 3;
                d10 = d20 + (d19 * (d12 - d4));
                d8 = d21;
                d14 = d12;
                d7 = d5;
            } else {
                d7 = 0.0d;
                d8 = 0.0d;
                d4 = 0.0d;
                d9 = 0.0d;
                d10 = 0.0d;
                i = 4;
            }
        } else {
            if ((d2 - d4) * (d4 - d12) > 0.0d && (d4 - d4) * (d4 - d12) > 0.0d) {
                this.f5613d = false;
                this.f5616g = 0;
                this.f5617h = 0;
                this.i = 10000.0f;
                float f2 = gearPose.roll;
                if ((d2 - ((double) f2)) * (d4 - d12) > 0.0d) {
                    Math.abs(d2 - ((double) f2));
                    return;
                }
                return;
            }
            if ((d2 - d12) * (d12 - d4) <= 0.0d || (d4 - d12) * (d12 - d4) <= 0.0d) {
                if (!this.f5613d) {
                    if (this.f5616g >= 5 && Math.abs(d2 - d4) > Math.abs(this.b.x - this.f5612a.x) * 0.55d) {
                        double d22 = this.f5612a.x;
                        if ((d2 - d22) * (this.b.x - d22) > 0.0d) {
                        }
                        this.f5613d = z;
                        if (z2) {
                            double d23 = this.f5614e;
                            Pos pos2 = this.f5612a;
                            double d24 = pos2.x;
                            double d25 = pos2.y;
                            d9 = d3;
                            d10 = (d23 * (d2 - d24)) + d25;
                            d8 = ((d4 - d24) * d23) + d25;
                            i = 5;
                            d14 = d2;
                            d7 = d5;
                        } else {
                            d7 = 0.0d;
                            d8 = 0.0d;
                            d4 = 0.0d;
                            d9 = 0.0d;
                            d10 = 0.0d;
                            i = 6;
                        }
                    }
                    z = false;
                    this.f5613d = z;
                    if (z2) {
                        double d26 = this.f5614e;
                        Pos pos3 = this.f5612a;
                        double d27 = pos3.x;
                        double d28 = pos3.y;
                        d9 = d3;
                        d10 = (d26 * (d2 - d27)) + d28;
                        d8 = ((d4 - d27) * d26) + d28;
                        i = 5;
                        d14 = d2;
                        d7 = d5;
                    } else {
                        d7 = 0.0d;
                        d8 = 0.0d;
                        d4 = 0.0d;
                        d9 = 0.0d;
                        d10 = 0.0d;
                        i = 6;
                    }
                }
                z = true;
                this.f5613d = z;
                if (z2) {
                    double d29 = this.f5614e;
                    Pos pos4 = this.f5612a;
                    double d210 = pos4.x;
                    double d211 = pos4.y;
                    d9 = d3;
                    d10 = (d29 * (d2 - d210)) + d211;
                    d8 = ((d4 - d210) * d29) + d211;
                    i = 5;
                    d14 = d2;
                    d7 = d5;
                } else {
                    d7 = 0.0d;
                    d8 = 0.0d;
                    d4 = 0.0d;
                    d9 = 0.0d;
                    d10 = 0.0d;
                    i = 6;
                }
            } else {
                this.f5613d = true;
                d7 = 0.0d;
                d8 = 0.0d;
                d4 = 0.0d;
                d9 = 0.0d;
                d10 = 0.0d;
                i = 7;
            }
        }
        double d30 = d14 - d4;
        double d31 = d7 - d8;
        float f3 = (float) (((d31 + d9) - d10) * d30 * 0.5d);
        this.i += f3;
        if (this.f5613d) {
            this.f5617h++;
        } else {
            this.f5617h = 0;
        }
        if (MucangConfig.v()) {
            Log.e("GearSensor", this.f5613d + " , " + this.c.gearName + " , " + i + " , area = " + f(a()) + " , thisArea = " + f(f3) + " , dx=" + f(d30) + " , dyStart=" + f(d31) + " , dyEnd=" + f(d9 - d10));
        }
    }

    public String toString() {
        return "gear=" + this.c.gearName + ",area=" + this.i;
    }
}
