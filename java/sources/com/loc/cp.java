package com.loc;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cp extends cm {
    private static cp b = new cp();

    private cp() {
        super(5120);
    }

    private static String a(String str) {
        return str == null ? "" : str;
    }

    public static cp b() {
        return b;
    }

    public final byte[] a(byte[] bArr, byte[] bArr2, List<? extends ct> list) {
        if (list == null) {
            return null;
        }
        try {
            int size = list.size();
            if (size <= 0 || bArr == null) {
                return null;
            }
            a();
            int iA = cw.a((fr) this.f12684a, bArr);
            int[] iArr = new int[size];
            for (int i = 0; i < size; i++) {
                ct ctVar = list.get(i);
                iArr[i] = db.a(this.f12684a, (byte) ctVar.a(), db.a(this.f12684a, ctVar.b()));
            }
            this.f12684a.c(cw.a(this.f12684a, iA, bArr2 != null ? cw.b(this.f12684a, bArr2) : 0, cw.a(this.f12684a, iArr)));
            return this.f12684a.c();
        } catch (Throwable th) {
            ea.a(th);
            return null;
        }
    }

    public final byte[] c() {
        super.a();
        try {
            this.f12684a.c(dz.a(this.f12684a, dy.a(), this.f12684a.a(dy.f()), this.f12684a.a(dy.c()), (byte) dy.m(), this.f12684a.a(dy.i()), this.f12684a.a(dy.h()), this.f12684a.a(a(dy.g())), this.f12684a.a(a(dy.j())), dx.a(dy.n()), this.f12684a.a(dy.l()), this.f12684a.a(dy.k()), this.f12684a.a(dy.d()), this.f12684a.a(dy.e())));
            return this.f12684a.c();
        } catch (Exception e2) {
            ea.a(e2);
            return null;
        }
    }
}
