package cn.mucang.android.jiakaoyi.signal.c.g;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile a f5238d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5239a = 0;
    private Gear b = Gear.Invalid;
    private long c;

    public static a d() {
        if (f5238d == null) {
            synchronized (cn.mucang.android.jiakaoyi.signal.center.model.a.class) {
                if (f5238d == null) {
                    f5238d = new a();
                    return f5238d;
                }
            }
        }
        return f5238d;
    }

    public void a(int i) {
        this.f5239a = Math.min(i, 5000);
    }

    public void b() {
        this.f5239a = 0L;
    }

    public Gear c(Gear gear, byte b, Gear gear2) {
        if (this.f5239a <= 0) {
            return gear;
        }
        if (this.b.gear != gear.gear) {
            this.c = SystemClock.elapsedRealtime();
        }
        if (this.c > 0 && SystemClock.elapsedRealtime() - this.c > this.f5239a) {
            gear2 = gear;
        }
        this.b = gear;
        return gear2;
    }
}
