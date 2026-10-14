package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class di extends fs {
    private static int a(fr frVar) {
        return frVar.b();
    }

    public static int a(fr frVar, int i) {
        frVar.b(1);
        b(frVar, i);
        return a(frVar);
    }

    public static int a(fr frVar, int[] iArr) {
        frVar.a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            frVar.a(iArr[length]);
        }
        return frVar.a();
    }

    private static void b(fr frVar, int i) {
        frVar.b(0, i);
    }
}
