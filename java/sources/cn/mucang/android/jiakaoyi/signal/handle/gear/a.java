package cn.mucang.android.jiakaoyi.signal.handle.gear;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.a0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f5677a = new c();
    private boolean b = false;
    private Gear c = Gear.Invalid;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5678d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5679e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f5680f = new int[6];

    private void a() {
        int[] iArr = this.f5680f;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
    }

    private Gear b(boolean z, boolean z2, Gear gear, int i, float f2, long j, Gear gear2) {
        Gear gear3;
        if (z2) {
            return Gear.GearN;
        }
        return (gear == Gear.GearBack || gear == (gear3 = Gear.GearD) || gear == Gear.GearP || gear == Gear.GearS || gear == Gear.GearN) ? gear : gear3;
    }

    private Gear c(boolean z, boolean z2, Gear gear, int i, float f2, long j, Gear gear2) {
        Gear gearB;
        if (AppUtils.b()) {
            return gear;
        }
        if (z2) {
            if (this.f5678d <= 0) {
                this.f5678d = j;
            }
            return j - this.f5678d >= 500 ? Gear.GearN : gear2;
        }
        this.f5678d = -1L;
        if (AppUtils.i() && gear.isValid()) {
            return gear;
        }
        if (gear == Gear.GearN || !gear.isValid()) {
            return (!a0.b().c() || (gearB = this.f5677a.b(f2, (float) i)) == null) ? Gear.Gear1 : gearB;
        }
        return gear;
    }

    public Gear d(boolean z, boolean z2, boolean z3, Gear gear, int i, float f2, long j, Gear gear2) {
        if (SelectCarManager.d().isAuto()) {
            return b(z2, z3, gear, i, f2, j, gear2);
        }
        if (AppUtils.f() || AppUtils.l() || AppUtils.i() || AppUtils.b()) {
            return c(z2, z3, gear, i, f2, j, gear2);
        }
        if (z2) {
            this.f5679e = true;
            this.b = true;
            this.f5677a.c();
            a();
            return Gear.Invalid;
        }
        if (z3) {
            this.b = true;
            a();
            return Gear.GearN;
        }
        if (a0.b().c()) {
            if (f2 < 1.0f) {
                this.b = true;
                a();
                return Gear.Invalid;
            }
            if (!this.b && this.f5679e) {
                return this.c;
            }
            Gear gearA = this.f5677a.a(f2, i);
            if (gearA != null) {
                int i2 = -1;
                int i3 = gearA.gear;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int[] iArr = this.f5680f;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    if (i4 == i3) {
                        iArr[i4] = iArr[i4] + 1;
                        if (iArr[i4] > 10) {
                            iArr[i4] = 10;
                        }
                    } else {
                        iArr[i4] = iArr[i4] - 1;
                        if (iArr[i4] < 0) {
                            iArr[i4] = 0;
                        }
                    }
                    if (iArr[i4] > i5) {
                        i5 = iArr[i4];
                        i2 = i4;
                    }
                    i4++;
                }
                if (i5 <= (i2 == 0 ? 8 : 5)) {
                    return Gear.Invalid;
                }
                Gear gear3 = Gear.parse(i2);
                if (gear3 != Gear.Invalid) {
                    this.b = false;
                    this.c = gear3;
                }
                return gear3;
            }
        }
        return gear.isManual() ? gear : gear2;
    }
}
