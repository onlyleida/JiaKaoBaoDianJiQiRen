package com.amap.api.mapcore.util;

import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class t9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<Long, v9> f11207a;
    private long b;

    public t9() {
        this.f11207a = new HashMap();
        this.b = 0;
    }

    private static long a(int r4, int r5) {
        long r0 = (((long) r4) & 65535) << 32;
        return (((long) r5) & 65535) | r0;
    }

    public final long b(v9 r9) {
        if (r9 != null) goto L5;
        return 0;
    L5:
        if (r9.p == false) goto L30;
        HashMap<Long, v9> r2 = this.f11207a;
        int r3 = r9.k;
        if (r3 != 1) goto L10;
    L17:
        int r4 = r9.a();
        int r5 = r9.b();
    L18:
        long r6 = a(r4, r5);
    L19:
        v9 r7 = r2.get(Long.valueOf(r6));
        if (r7 != null) goto L24;
        r9.m = g9.p();
        r2.put(Long.valueOf(r6), r9);
        return 0;
    L24:
        if (r7.e() == r9.e()) goto L27;
        r9.m = g9.p();
        r2.put(Long.valueOf(r6), r9);
        return 0;
    L27:
        r9.m = r7.m;
        r2.put(Long.valueOf(r6), r9);
        return (g9.p() - r7.m) / 1000;
    L10:
        if (r3 != 2) goto L12;
        r4 = r9.c();
        r5 = r9.d();
        goto L18
    L12:
        if (r3 == 3) goto L17;
        if (r3 == 4) goto L17;
        r6 = 0;
        goto L19
    L30:
        return 0;
    }

    public final void c() {
        this.f11207a.clear();
        this.b = 0;
    }

    public final void d(ArrayList<? extends v9> r15) {
        if (r15 == null) goto L54;
        long r0 = g9.p();
        long r2 = this.b;
        long r4 = 0;
        if (r2 > 0) goto L6;
    L8:
        HashMap<Long, v9> r3 = this.f11207a;
        int r5 = r15.size();
        int r6 = 0;
        int r7 = 0;
    L10:
        if (r7 >= r5) goto L29;
        v9 r12 = r15.get(r7);
        if (r12.p == false) goto L28;
        int r13 = r12.k;
        if (r13 == 1) goto L20;
        if (r13 == 2) goto L19;
        if (r13 == 3) goto L20;
        if (r13 == 4) goto L20;
    L22:
        v9 r8 = r3.get(Long.valueOf(r4));
        if (r8 == null) goto L28;
        if (r8.e() != r12.e()) goto L27;
        r12.m = r8.m;
        goto L28
    L27:
        r12.m = r0;
        goto L28
    L19:
        int r9 = r12.f11292h;
        int r10 = r12.i;
    L21:
        r4 = a(r9, r10);
    L20:
        r9 = r12.c;
        r10 = r12.f11288d;
    L28:
        r7 = r7 + 1;
        goto L10
    L29:
        r3.clear();
        int r11 = r15.size();
    L30:
        if (r6 >= r11) goto L44;
        v9 r14 = r15.get(r6);
        if (r14.p == false) goto L43;
        int r16 = r14.k;
        if (r16 == 1) goto L40;
        if (r16 == 2) goto L39;
        if (r16 == 3) goto L40;
        if (r16 == 4) goto L40;
    L42:
        r3.put(Long.valueOf(r4), r14);
        goto L43
    L39:
        int r17 = r14.c();
        int r18 = r14.d();
    L41:
        r4 = a(r17, r18);
    L40:
        r17 = r14.a();
        r18 = r14.b();
    L43:
        r6 = r6 + 1;
        goto L30
    L44:
        this.b = r0;
        return;
    L6:
        if ((r0 - r2) >= DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) goto L8;
        return;
    }
}
