package com.loc;

import android.os.SystemClock;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cr {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile cr f12693g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Object f12694h = new Object();
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private dw f12696d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private dw f12698f = new dw();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cq f12695a = new cq();
    private cs b = new cs();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn f12697e = new cn();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public dw f12699a;
        public List<dx> b;
        public long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f12700d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f12701e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f12702f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public byte f12703g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f12704h;
        public List<dq> i;
        public boolean j;
    }

    private cr() {
    }

    public static cr a() {
        if (f12693g == null) {
            synchronized (f12694h) {
                if (f12693g == null) {
                    f12693g = new cr();
                }
            }
        }
        return f12693g;
    }

    public final ct a(a aVar) {
        ct ctVar = null;
        if (aVar == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        dw dwVar = this.f12696d;
        if (dwVar == null || aVar.f12699a.a(dwVar) >= 10.0d) {
            cq.a aVarA = this.f12695a.a(aVar.f12699a, aVar.j, aVar.f12703g, aVar.f12704h, aVar.i);
            List<dx> listA = this.b.a(aVar.f12699a, aVar.b, aVar.f12701e, aVar.f12700d, jCurrentTimeMillis);
            if (aVarA != null || listA != null) {
                Cdo.a(this.f12698f, aVar.f12699a, aVar.f12702f, jCurrentTimeMillis);
                ctVar = new ct(0, this.f12697e.a(this.f12698f, aVarA, aVar.c, listA));
            }
            this.f12696d = aVar.f12699a;
            this.c = jElapsedRealtime;
        }
        return ctVar;
    }
}
