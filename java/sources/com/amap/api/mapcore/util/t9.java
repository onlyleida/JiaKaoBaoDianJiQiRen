package com.amap.api.mapcore.util;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class t9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<Long, v9> f11207a = new HashMap<>();
    private long b = 0;

    private static long a(int i, int i2) {
        return (((long) i2) & 65535) | ((((long) i) & 65535) << 32);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0024  */
    public final long b(v9 v9Var) {
        int iA;
        int iB;
        long jA;
        if (v9Var == null || !v9Var.p) {
            return 0L;
        }
        HashMap<Long, v9> map = this.f11207a;
        int i = v9Var.k;
        if (i == 1) {
            iA = v9Var.a();
            iB = v9Var.b();
            jA = a(iA, iB);
        } else if (i == 2) {
            iA = v9Var.c();
            iB = v9Var.d();
            jA = a(iA, iB);
        } else if (i == 3 || i == 4) {
            iA = v9Var.a();
            iB = v9Var.b();
            jA = a(iA, iB);
        } else {
            jA = 0;
        }
        v9 v9Var2 = map.get(Long.valueOf(jA));
        if (v9Var2 == null) {
            v9Var.m = g9.p();
            map.put(Long.valueOf(jA), v9Var);
            return 0L;
        }
        if (v9Var2.e() != v9Var.e()) {
            v9Var.m = g9.p();
            map.put(Long.valueOf(jA), v9Var);
            return 0L;
        }
        v9Var.m = v9Var2.m;
        map.put(Long.valueOf(jA), v9Var);
        return (g9.p() - v9Var2.m) / 1000;
    }

    public final void c() {
        this.f11207a.clear();
        this.b = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0040  */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0083, code lost:
    
        if (r12 != 4) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(java.util.ArrayList<? extends com.amap.api.mapcore.util.v9> r15) {
        /*
            r14 = this;
            if (r15 == 0) goto La7
            long r0 = com.amap.api.mapcore.util.g9.p()
            long r2 = r14.b
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L18
            long r2 = r0 - r2
            r6 = 60000(0xea60, double:2.9644E-319)
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 >= 0) goto L18
            return
        L18:
            java.util.HashMap<java.lang.Long, com.amap.api.mapcore.util.v9> r2 = r14.f11207a
            int r3 = r15.size()
            r6 = 0
            r7 = 0
        L20:
            r8 = 4
            r9 = 3
            r10 = 2
            r11 = 1
            if (r7 >= r3) goto L68
            java.lang.Object r12 = r15.get(r7)
            com.amap.api.mapcore.util.v9 r12 = (com.amap.api.mapcore.util.v9) r12
            boolean r13 = r12.p
            if (r13 == 0) goto L65
            int r13 = r12.k
            if (r13 == r11) goto L40
            if (r13 == r10) goto L3b
            if (r13 == r9) goto L40
            if (r13 == r8) goto L40
            goto L48
        L3b:
            int r4 = r12.f11292h
            int r5 = r12.i
            goto L44
        L40:
            int r4 = r12.c
            int r5 = r12.f11288d
        L44:
            long r4 = a(r4, r5)
        L48:
            java.lang.Long r8 = java.lang.Long.valueOf(r4)
            java.lang.Object r8 = r2.get(r8)
            com.amap.api.mapcore.util.v9 r8 = (com.amap.api.mapcore.util.v9) r8
            if (r8 == 0) goto L65
            int r9 = r8.e()
            int r10 = r12.e()
            if (r9 != r10) goto L63
            long r8 = r8.m
            r12.m = r8
            goto L65
        L63:
            r12.m = r0
        L65:
            int r7 = r7 + 1
            goto L20
        L68:
            r2.clear()
            int r3 = r15.size()
        L6f:
            if (r6 >= r3) goto La5
            java.lang.Object r7 = r15.get(r6)
            com.amap.api.mapcore.util.v9 r7 = (com.amap.api.mapcore.util.v9) r7
            boolean r12 = r7.p
            if (r12 == 0) goto La2
            int r12 = r7.k
            if (r12 == r11) goto L8f
            if (r12 == r10) goto L86
            if (r12 == r9) goto L8f
            if (r12 == r8) goto L8f
            goto L9b
        L86:
            int r4 = r7.c()
            int r5 = r7.d()
            goto L97
        L8f:
            int r4 = r7.a()
            int r5 = r7.b()
        L97:
            long r4 = a(r4, r5)
        L9b:
            java.lang.Long r12 = java.lang.Long.valueOf(r4)
            r2.put(r12, r7)
        La2:
            int r6 = r6 + 1
            goto L6f
        La5:
            r14.b = r0
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.t9.d(java.util.ArrayList):void");
    }
}
