package cn.mucang.android.jiakaoyi.engine.processor.exam.j;

import android.location.Location;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.d.i;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import cn.mucang.android.jiakaoyi.signal.handle.gps.l;
import cn.mucang.android.jiakaoyi.signal.handle.gps.m;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f3134a;
    private Pos b;
    private Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f3135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f3136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f3137f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f3138g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Location f3139h;
    private final double i;
    private float j;

    public a(float f2, float f3, Location location) {
        this.f3134a = null;
        this.f3136e = -1000000.0f;
        float fMax = Math.max(2.0f, Math.abs(f2)) * 100.0f;
        this.f3137f = fMax;
        float fMin = Math.min(89.0f, Math.max(15.0f, Math.abs(f3)));
        this.f3138g = fMin;
        this.f3139h = location;
        this.i = ((double) fMax) / Math.max(Math.abs(Math.cos(Math.toRadians(fMin))), 0.1d);
    }

    private static boolean a(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x - pos3.x;
        double d3 = pos2.y - pos3.y;
        if (Math.abs(d2) < 1.0E-8d && Math.abs(d3) < 1.0E-8d) {
            return false;
        }
        double d4 = pos.x;
        double d5 = pos2.x;
        double d6 = pos3.x;
        double d7 = pos.y;
        double d8 = pos2.y;
        double d9 = pos3.y;
        double d10 = (((d4 - d5) * (d5 - d6)) + ((d7 - d8) * (d8 - d9))) / ((d2 * d2) + (d3 * d3));
        double d11 = d5 + (d2 * d10);
        double d12 = (d10 * d3) + d8;
        return (d5 - d11) * (d11 - d6) >= 0.0d && (d8 - d12) * (d12 - d9) >= 0.0d;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:55:0x00eb  */
    public boolean b(e eVar, boolean z) {
        boolean z2;
        boolean zA;
        int i;
        if (!k.c(this.f3139h)) {
            return false;
        }
        if (this.f3134a == null) {
            cn.mucang.android.jiakaoyi.signal.i.a aVarB = l.b(eVar.getCurrentPosition().f5281g);
            if (aVarB == null) {
                return false;
            }
            this.f3134a = new m(aVarB);
        }
        Pos posA = l.a(eVar, this.f3134a);
        if (posA == null) {
            return false;
        }
        if (this.b == null) {
            this.b = this.f3134a.a(this.f3139h);
        }
        if (this.b == null) {
            return false;
        }
        Location location = eVar.getCurrentPosition().f5281g;
        if (!k.c(location)) {
            return false;
        }
        if (!n.a()) {
            if (b0.a().b() && i.a()) {
                this.j = 1.0f;
            } else {
                this.j = 2.0f;
            }
        }
        if (eVar.d().b >= this.j) {
            this.f3136e = location.getBearing();
        }
        float f2 = this.f3136e;
        if (f2 == -1000000.0f) {
            return false;
        }
        if (this.f3135d == -1000000.0f) {
            this.f3135d = f2;
            this.c = posA;
        } else {
            Pos pos = this.c;
            if (pos != null) {
                if (Math.abs(d.c((float) (((double) this.f3136e) - Math.toDegrees(pos.angleTo(posA))))) > 45.0f) {
                    this.f3135d = this.f3136e;
                    this.c = posA;
                    return false;
                }
            }
            if (Math.abs(d.c(this.f3136e - this.f3135d)) > 45.0f) {
                this.f3135d = this.f3136e;
                this.c = posA;
                return false;
            }
        }
        double dDistanceTo = posA.distanceTo(this.b);
        double degrees = Math.toDegrees(posA.angleTo(this.b));
        if (z) {
            if (dDistanceTo < this.f3137f) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            if (dDistanceTo > this.i) {
                this.c = posA;
                return false;
            }
            double dCos = dDistanceTo * Math.cos(Math.toRadians(degrees - ((double) this.f3136e)));
            if (dCos >= this.f3137f || dCos <= 0.0d) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        if (!z2) {
            this.c = posA;
            return false;
        }
        double dAbs = Math.abs(d.c(this.f3139h.getBearing() - this.f3136e));
        float f3 = this.f3138g;
        if (dAbs <= f3) {
            zA = true;
            i = 1;
        } else {
            if (dAbs > f3 * 2.0f || dAbs >= 90.0d || eVar.d().b <= this.j) {
                zA = false;
            } else {
                zA = a(this.b, posA, l.c(eVar, this.f3134a));
                if (zA) {
                    i = 2;
                }
            }
            i = 0;
        }
        this.c = posA;
        if (!zA || Math.abs(d.c((float) (degrees - ((double) this.f3136e)))) >= 90.0f) {
            return false;
        }
        f.o("thresholdDegree " + this.f3138g + "; currentBearing " + this.f3136e + "; speed " + eVar.d().b + "; condition " + i + "; current " + posA.toString() + "; targetPos " + this.b.toString() + " ; angleToTarget " + degrees);
        return true;
    }

    public a(Location location) {
        this(2.0f, 78.0f, location);
    }
}
