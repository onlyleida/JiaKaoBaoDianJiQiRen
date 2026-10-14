package cn.mucang.android.jiakaoyi.signal.handle.gps;

import android.location.Location;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<b> f5737a = new ThreadLocal<>();
    private static final ThreadLocal<b> b = new ThreadLocal<>();
    private static final ThreadLocal<cn.mucang.android.jiakaoyi.signal.i.a> c = new ThreadLocal<>();

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f5738a;
        Pos b;

        private b() {
        }
    }

    public static Pos a(cn.mucang.android.jiakaoyi.signal.c.e eVar, m mVar) {
        ThreadLocal<b> threadLocal = f5737a;
        b bVar = threadLocal.get();
        if (bVar == null) {
            bVar = new b();
        }
        if (bVar.b == null || eVar.d().L != bVar.f5738a) {
            bVar.b = mVar.c(eVar);
            bVar.f5738a = eVar.d().L;
        }
        threadLocal.set(bVar);
        return bVar.b;
    }

    public static cn.mucang.android.jiakaoyi.signal.i.a b(Location location) {
        ThreadLocal<cn.mucang.android.jiakaoyi.signal.i.a> threadLocal = c;
        cn.mucang.android.jiakaoyi.signal.i.a aVar = threadLocal.get();
        if (aVar != null || location.getLatitude() <= 1.0E-10d || location.getLongitude() <= 1.0E-10d) {
            return aVar;
        }
        cn.mucang.android.jiakaoyi.signal.i.b bVar = new cn.mucang.android.jiakaoyi.signal.i.b(Gps.from(location));
        threadLocal.set(bVar);
        return bVar;
    }

    public static Pos c(cn.mucang.android.jiakaoyi.signal.c.e eVar, m mVar) {
        ThreadLocal<b> threadLocal = b;
        b bVar = threadLocal.get();
        if (bVar == null) {
            bVar = new b();
        }
        if (bVar.b == null || eVar.d().L != bVar.f5738a) {
            bVar.b = mVar.b();
            bVar.f5738a = eVar.d().L;
        }
        threadLocal.set(bVar);
        return bVar.b;
    }
}
