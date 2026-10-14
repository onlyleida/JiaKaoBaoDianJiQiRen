package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class cw extends fs {
    private static int a(fr frVar) {
        return frVar.b();
    }

    public static int a(fr frVar, int i, int i2, int i3) {
        frVar.b(3);
        c(frVar, i3);
        b(frVar, i2);
        a(frVar, i);
        return a(frVar);
    }

    public static int a(fr frVar, byte[] bArr) {
        frVar.a(1, bArr.length, 1);
        for (int length = bArr.length - 1; length >= 0; length--) {
            frVar.a(bArr[length]);
        }
        return frVar.a();
    }

    public static int a(fr frVar, int[] iArr) {
        frVar.a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            frVar.a(iArr[length]);
        }
        return frVar.a();
    }

    private static void a(fr frVar, int i) {
        frVar.b(0, i);
    }

    public static int b(fr frVar, byte[] bArr) {
        frVar.a(1, bArr.length, 1);
        for (int length = bArr.length - 1; length >= 0; length--) {
            frVar.a(bArr[length]);
        }
        return frVar.a();
    }

    private static void b(fr frVar, int i) {
        frVar.b(1, i);
    }

    private static void c(fr frVar, int i) {
        frVar.b(2, i);
    }
}
