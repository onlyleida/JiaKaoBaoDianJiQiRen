package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class da extends fs {
    private static int a(fr frVar) {
        return frVar.b();
    }

    public static int a(fr frVar, byte b, byte b2, short s, byte b3, int i) {
        frVar.b(5);
        a(frVar, i);
        a(frVar, s);
        c(frVar, b3);
        b(frVar, b2);
        a(frVar, b);
        return a(frVar);
    }

    private static void a(fr frVar, byte b) {
        frVar.a(0, b);
    }

    private static void a(fr frVar, int i) {
        frVar.b(4, i);
    }

    private static void a(fr frVar, short s) {
        frVar.a(2, s);
    }

    private static void b(fr frVar, byte b) {
        frVar.a(1, b);
    }

    private static void c(fr frVar, byte b) {
        frVar.a(3, b);
    }
}
