package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class cy extends fs {
    private static int a(fr frVar) {
        return frVar.b();
    }

    public static int a(fr frVar, int i, byte b, int i2, int i3) {
        frVar.b(4);
        c(frVar, i3);
        b(frVar, i2);
        a(frVar, i);
        a(frVar, b);
        return a(frVar);
    }

    public static int a(fr frVar, int[] iArr) {
        frVar.a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            frVar.a(iArr[length]);
        }
        return frVar.a();
    }

    private static void a(fr frVar, byte b) {
        frVar.a(1, b);
    }

    private static void a(fr frVar, int i) {
        frVar.b(0, i);
    }

    public static int b(fr frVar, int[] iArr) {
        frVar.a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            frVar.a(iArr[length]);
        }
        return frVar.a();
    }

    private static void b(fr frVar, int i) {
        frVar.b(2, i);
    }

    private static void c(fr frVar, int i) {
        frVar.b(3, i);
    }
}
