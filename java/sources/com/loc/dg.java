package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class dg extends fs {
    public static int a(fr frVar, int i, int i2, short s) {
        frVar.b(4);
        b(frVar, i2);
        a(frVar, i);
        a(frVar, s);
        a(frVar);
        return b(frVar);
    }

    private static void a(fr frVar) {
        frVar.a(0, (byte) 1);
    }

    private static void a(fr frVar, int i) {
        frVar.a(1, i);
    }

    private static void a(fr frVar, short s) {
        frVar.a(3, s);
    }

    private static int b(fr frVar) {
        return frVar.b();
    }

    private static void b(fr frVar, int i) {
        frVar.a(2, i);
    }
}
