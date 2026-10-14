package kotlin.reflect.jvm.internal.impl.load.java.structure;

/* JADX INFO: loaded from: classes6.dex */
public final class p {
    private static final boolean a(r r2) {
        b0 r3 = (b0) kotlin.collections.s.E0(r2.f());
        j r0 = null;
        if (r3 != null) goto L5;
        x r4 = null;
    L7:
        if ((r4 instanceof j) == false) goto L10;
        r0 = (j) r4;
    L10:
        if (r0 != null) goto L12;
        return false;
    L12:
        i r1 = r0.c();
        if ((r1 instanceof g) == false) goto L20;
        kotlin.reflect.jvm.internal.impl.name.c r5 = ((g) r1).e();
        if (r5 != null) goto L17;
        return false;
    L17:
        if (kotlin.jvm.internal.r.a(r5.b(), "java.lang.Object") == false) goto L22;
        return true;
    L22:
        return false;
    L20:
        return false;
    L5:
        r4 = r3.getType();
        goto L7
    }

    private static final boolean b(r r3) {
        String r0 = r3.getName().b();
        int r1 = r0.hashCode();
        if (r1 == (-1776922004)) goto L17;
        if (r1 == (-1295482945)) goto L13;
        if (r1 == 147696667) goto L10;
    L18:
        return false;
    L10:
        if (r0.equals("hashCode") == false) goto L18;
    L20:
        return r3.f().isEmpty();
    L13:
        if (r0.equals("equals") == false) goto L18;
        return a(r3);
    L17:
        if (r0.equals("toString") == true) goto L20;
        goto L18
    }

    public static final boolean c(q r1) {
        kotlin.jvm.internal.r.e(r1, "<this>");
        if (r1.N().I() == true) goto L5;
    L9:
        return false;
    L5:
        if ((r1 instanceof r) == false) goto L9;
        if (b((r) r1) == false) goto L9;
        return true;
    }
}
