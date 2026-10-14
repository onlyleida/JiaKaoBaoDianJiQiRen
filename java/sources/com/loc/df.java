package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class df extends fs {
    public static int a(fr frVar, int i, int i2, int i3, short s) {
        frVar.b(5);
        c(frVar, i3);
        b(frVar, i2);
        a(frVar, i);
        a(frVar, s);
        a(frVar);
        return b(frVar);
    }

    private static void a(fr frVar) {
        frVar.a(0, (byte) 2);
    }

    private static void a(fr frVar, int i) {
        frVar.a(1, i);
    }

    private static void a(fr frVar, short s) {
        frVar.a(4, s);
    }

    private static int b(fr frVar) {
        return frVar.b();
    }

    private static void b(fr frVar, int i) {
        frVar.a(2, i);
    }

    private static void c(fr frVar, int i) {
        frVar.a(3, i);
    }
}
