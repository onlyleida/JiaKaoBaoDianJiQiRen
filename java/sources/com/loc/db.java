package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class db extends fs {
    private static int a(fr frVar) {
        return frVar.b();
    }

    public static int a(fr frVar, byte b, int i) {
        frVar.b(2);
        a(frVar, i);
        a(frVar, b);
        return a(frVar);
    }

    public static int a(fr frVar, byte[] bArr) {
        frVar.a(1, bArr.length, 1);
        for (int length = bArr.length - 1; length >= 0; length--) {
            frVar.a(bArr[length]);
        }
        return frVar.a();
    }

    private static void a(fr frVar, byte b) {
        frVar.a(0, b);
    }

    private static void a(fr frVar, int i) {
        frVar.b(1, i);
    }
}
