package cn.mucang.android.jiakaoyi.signal.gearsensor;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Pos f5603a;
    public final Gear b;
    final Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5604d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final GearPose f5607g;
    private List<b> i;
    private final double k;
    private float l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5605e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f5606f = BitmapDescriptorFactory.HUE_RED;
    private boolean j = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5608h = false;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Pos f5609a;
        private final Pos b;
        private final Pos c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final double f5610d;

        double b(double d2, double d3, double d4, double d5) {
            Pos pos = this.f5609a;
            double d6 = pos.x;
            double d7 = pos.y;
            Pos pos2 = this.b;
            if (!f.f(d2, d3, d4, d5, d6, d7, pos2.x, pos2.y)) {
                return 0.0d;
            }
            Pos pos3 = this.c;
            return ((d2 - d4) * pos3.x) + ((d3 - d5) * pos3.y) > 0.0d ? this.f5610d : -this.f5610d;
        }

        private b(Pos pos, Pos pos2, Pos pos3, double d2) {
            this.f5609a = pos;
            this.b = pos2;
            this.c = pos3;
            this.f5610d = d2;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double f5611a;
        double b;

        private c() {
        }

        void a() {
            this.f5611a *= this.b;
        }
    }

    public f(Pos pos, Pos pos2, Gear gear, Pos pos3, GearPose gearPose, double d2) {
        this.f5603a = pos;
        this.b = gear;
        this.c = pos3;
        this.f5607g = gearPose;
        this.k = d2;
        e();
        this.l = BitmapDescriptorFactory.HUE_RED;
        Iterator<b> it = this.i.iterator();
        while (it.hasNext()) {
            this.l = (float) (((double) this.l) + it.next().f5610d);
        }
    }

    private void d(List<b> list, Pos pos, Pos pos2, c cVar, c cVar2, c cVar3, boolean z) {
        boolean z2;
        Pos pos3;
        List<b> list2;
        List<b> list3 = list;
        Pos pos4 = pos;
        Pos pos5 = pos2;
        c cVar4 = cVar;
        Pos posVectorTo = pos.vectorTo(pos2);
        while (true) {
            double dDistanceTo = pos.distanceTo(pos2);
            if (dDistanceTo >= cVar4.f5611a) {
                z2 = false;
            } else if (!z || dDistanceTo < 0.1d) {
                return;
            } else {
                z2 = true;
            }
            if (Math.abs(pos5.x - pos4.x) > 1.0E-5d) {
                double d2 = (pos5.y - pos4.y) / (pos5.x - pos4.x);
                double d3 = cVar2.f5611a;
                double dSqrt = Math.sqrt((d3 * d3) / ((d2 * d2) + 1.0d));
                double d4 = pos4.y;
                double d5 = dSqrt + d4;
                double d6 = (-dSqrt) + d4;
                double d7 = pos4.x;
                list3.add(new b(new Pos(((d5 - d4) * d2) + d7, d5), new Pos(((d6 - d4) * d2) + d7, d6), posVectorTo, cVar3.f5611a));
                pos3 = pos;
                list2 = list3;
            } else {
                Pos pos6 = pos5;
                pos3 = pos;
                double d8 = (pos6.x - pos3.x) / (pos6.y - pos3.y);
                double d9 = cVar2.f5611a;
                double dSqrt2 = Math.sqrt((d9 * d9) / ((d8 * d8) + 1.0d));
                double d10 = pos3.x;
                double d11 = dSqrt2 + d10;
                double d12 = (-dSqrt2) + d10;
                double d13 = pos3.y;
                list2 = list;
                list2.add(new b(new Pos(d11, ((d11 - d10) * d8) + d13), new Pos(d12, ((d12 - d10) * d8) + d13), posVectorTo, cVar3.f5611a));
            }
            cVar2.a();
            cVar3.a();
            double d14 = pos2.x - pos3.x;
            double d15 = pos2.y - pos3.y;
            double dSqrt3 = Math.sqrt((d14 * d14) + (d15 * d15) + 1.0E-100d);
            double d16 = cVar.f5611a;
            pos3.setPos(((d14 * d16) / dSqrt3) + pos3.x, ((d16 * d15) / dSqrt3) + pos3.y);
            cVar.a();
            if (z2) {
                return;
            }
            pos5 = pos2;
            list3 = list2;
            pos4 = pos3;
            cVar4 = cVar;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:22:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:23:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d0 A[SYNTHETIC] */
    private void e() {
        Pos pos;
        int i;
        boolean z;
        boolean z2;
        this.i = new ArrayList();
        Pos pos2 = new Pos();
        c cVar = new c();
        cVar.f5611a = this.k;
        cVar.b = 0.96d;
        c cVar2 = new c();
        cVar2.f5611a = 3.0d;
        cVar2.b = 0.9d;
        c cVar3 = new c();
        cVar3.f5611a = 1.0d;
        cVar3.b = 1.03d;
        Gear gear = this.b;
        if (gear == Gear.Gear3 || gear == Gear.Gear4) {
            pos2.setPos(this.f5603a);
            cVar3.b = 1.01d;
            d(this.i, pos2, this.c, cVar3, cVar, cVar2, true);
            return;
        }
        int i2 = 0;
        boolean z3 = false;
        while (i2 < this.f5607g.points.size() - 1) {
            Pos pos3 = this.f5607g.points.get(i2);
            int i3 = i2 + 1;
            Pos pos4 = this.f5607g.points.get(i3);
            if (z3) {
                pos = pos4;
                i = i3;
            } else {
                double d2 = pos4.x;
                i = i3;
                double d3 = this.f5603a.x;
                double d4 = pos3.x;
                if ((d2 - d3) * (d3 - d4) >= 0.0d) {
                    double d5 = pos3.y;
                    cVar2 = cVar2;
                    pos = pos4;
                    cVar = cVar;
                    double d6 = pos.y;
                    pos2.setPos(d3, (((d3 - d2) * (d5 - d6)) / (d4 - d2)) + d6);
                    z = true;
                } else {
                    pos = pos4;
                }
                if (!z) {
                    List<b> list = this.i;
                    if (i2 == this.f5607g.points.size() - 1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    d(list, pos2, pos, cVar3, cVar, cVar2, z2);
                }
                z3 = z;
                i2 = i;
                cVar = cVar;
                cVar2 = cVar2;
            }
            z = z3;
            if (!z) {
                List<b> list2 = this.i;
                if (i2 == this.f5607g.points.size() - 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                d(list2, pos2, pos, cVar3, cVar, cVar2, z2);
            }
            z3 = z;
            i2 = i;
            cVar = cVar;
            cVar2 = cVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        if (Math.max(d6, d8) < Math.min(d2, d4) || Math.max(d2, d4) < Math.min(d6, d8) || Math.max(d7, d9) < Math.min(d3, d5) || Math.max(d3, d5) < Math.min(d7, d9)) {
            return false;
        }
        double d10 = d9 - d7;
        double d11 = d8 - d2;
        double d12 = d9 - d3;
        double d13 = d8 - d6;
        if (((d11 * d10) - (d12 * d13)) * (((d8 - d4) * d10) - ((d9 - d5) * d13)) > 0.0d) {
            return false;
        }
        double d14 = d5 - d3;
        double d15 = d4 - d2;
        return (((d6 - d2) * d14) - ((d7 - d3) * d15)) * ((d11 * d14) - (d12 * d15)) <= 0.0d;
    }

    private static String g(double d2) {
        return String.format("%.1f", Double.valueOf(d2));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0085  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:49:0x00df  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:59:0x0114  */
    /* JADX WARN: Code duplicated, block: B:60:0x0116 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:63:0x012f  */
    /* JADX WARN: Code duplicated, block: B:64:0x0131  */
    /* JADX WARN: Code duplicated, block: B:66:0x0134  */
    /* JADX WARN: Code duplicated, block: B:69:0x0138  */
    /* JADX WARN: Code duplicated, block: B:72:0x0141  */
    /* JADX WARN: Code duplicated, block: B:77:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:72:0x0141, please report this as an issue */
    public float b(double d2, double d3, double d4, double d5, double d6) {
        boolean z;
        boolean z2;
        double d7;
        boolean z3;
        boolean z4;
        int i;
        double d8;
        double d9;
        Iterator<b> it;
        float fB;
        boolean z5 = true;
        if (d6 < 2.5d) {
            this.f5605e++;
        } else {
            this.f5605e = 0;
        }
        double d10 = this.f5603a.x;
        double d11 = this.c.x;
        double d12 = d2 - d10;
        double d13 = d10 - d11;
        boolean z6 = d12 * d13 > 0.0d;
        if (d12 * (d10 - d4) <= 0.0d) {
            if (z6 && (d4 - d10) * d13 > 0.0d) {
                this.f5606f = BitmapDescriptorFactory.HUE_RED;
                this.f5605e = 0;
                this.f5608h = false;
                this.f5604d = false;
                this.j = false;
                z = false;
            }
            if (!this.f5608h || (d2 - d11) * (d11 - d10) > 0.0d) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.f5608h = z2;
            d7 = d2 - d4;
            if (Math.abs(d7) > 0.05d && z) {
                it = this.i.iterator();
                while (it.hasNext()) {
                    fB = (float) (((double) this.f5606f) + it.next().b(d2, d3, d4, d5));
                    this.f5606f = fB;
                    if (fB < BitmapDescriptorFactory.HUE_RED) {
                        this.f5606f = BitmapDescriptorFactory.HUE_RED;
                    }
                }
            }
            float fN = ((1.0f - h.n()) * 0.4f) + 0.4f;
            z3 = this.f5608h;
            if (!z3 || ((d11 > d10 && d2 + 3.5d > d11) || ((d11 < d10 && d2 - 3.5d < d11) || this.f5606f >= this.l * fN))) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (!this.f5604d && this.f5606f <= ((double) this.l) * 0.85d) {
                if (z4) {
                    i = this.f5605e;
                    if (i >= 1) {
                        Pos pos = this.c;
                        d8 = pos.x;
                        d9 = pos.y;
                        if (((d2 - d8) * (d2 - d8)) + ((d3 - d9) * (d3 - d9)) >= 16.0d) {
                            if (!z3 && i >= 1) {
                                Pos pos2 = this.c;
                                double d14 = pos2.x;
                                double d15 = pos2.y;
                                if (((d2 - d14) * (d2 - d14)) + ((d3 - d15) * (d3 - d15)) >= 16.0d) {
                                    if (z3) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                }
                            } else if ((z3 || i < 3) && i <= 5) {
                                z5 = false;
                            }
                        }
                    } else if (!z3) {
                        if (z3) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                    } else if (z3) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                } else {
                    z5 = false;
                }
            }
            this.f5604d = z5;
            if (MucangConfig.v()) {
                t.d("GearSensor", this.b.gearName + " : end = " + this.j + " , reach = " + this.f5604d + " , nowArea = " + g(this.f5606f) + " , srcArea = " + g(this.f5607g.f5592a) + " , dx=" + g(d7));
            }
            return this.f5606f;
        }
        this.f5604d = false;
        this.f5608h = false;
        this.f5606f = BitmapDescriptorFactory.HUE_RED;
        this.f5605e = 0;
        this.j = false;
        z = true;
        if (this.f5608h) {
            z2 = true;
        } else {
            z2 = true;
        }
        this.f5608h = z2;
        d7 = d2 - d4;
        if (Math.abs(d7) > 0.05d) {
            it = this.i.iterator();
            while (it.hasNext()) {
                fB = (float) (((double) this.f5606f) + it.next().b(d2, d3, d4, d5));
                this.f5606f = fB;
                if (fB < BitmapDescriptorFactory.HUE_RED) {
                    this.f5606f = BitmapDescriptorFactory.HUE_RED;
                }
            }
        }
        float fN2 = ((1.0f - h.n()) * 0.4f) + 0.4f;
        z3 = this.f5608h;
        if (z3) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (!this.f5604d) {
            if (z4) {
                z5 = false;
            } else {
                i = this.f5605e;
                if (i >= 1) {
                    Pos pos3 = this.c;
                    d8 = pos3.x;
                    d9 = pos3.y;
                    if (((d2 - d8) * (d2 - d8)) + ((d3 - d9) * (d3 - d9)) >= 16.0d) {
                        if (!z3) {
                            if (z3) {
                                z5 = false;
                            } else {
                                z5 = false;
                            }
                        } else if (z3) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                    }
                } else if (!z3) {
                    if (z3) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                } else if (z3) {
                    z5 = false;
                } else {
                    z5 = false;
                }
            }
        }
        this.f5604d = z5;
        if (MucangConfig.v()) {
            t.d("GearSensor", this.b.gearName + " : end = " + this.j + " , reach = " + this.f5604d + " , nowArea = " + g(this.f5606f) + " , srcArea = " + g(this.f5607g.f5592a) + " , dx=" + g(d7));
        }
        return this.f5606f;
    }

    public void c(boolean z) {
        this.j = z;
    }

    public String toString() {
        return "gear=" + this.b.gearName + ",area=" + this.f5606f;
    }
}
