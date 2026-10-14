package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f15894a = false;

    static {
        String r0 = kotlinx.coroutines.internal.z.d("kotlinx.coroutines.scheduler");
        if (r0 == null) goto L19;
        int r1 = r0.hashCode();
        if (r1 == 0) goto L18;
        if (r1 == 3551) goto L15;
        if (r1 != 109935) goto L23;
        if (r0.equals("off") == false) goto L23;
        boolean r2 = false;
    L20:
        f15894a = r2;
        return;
    L23:
        throw new IllegalStateException(("System property 'kotlinx.coroutines.scheduler' has unrecognized value '" + r0 + '\'').toString());
    L15:
        if (r0.equals("on") == false) goto L23;
    L18:
        if (r0.equals("") == false) goto L23;
    L19:
        r2 = true;
        goto L20
    }

    public static final CoroutineDispatcher a() {
        if (f15894a == false) goto L6;
        return kotlinx.coroutines.scheduling.b.f16084h;
    L6:
        return t.f16117d;
    }

    public static final String b(CoroutineContext r4) {
        if (l0.c() == true) goto L5;
        return null;
    L5:
        g0 r0 = (g0) r4.get(g0.b);
        if (r0 == null) goto L15;
        h0 r5 = (h0) r4.get(h0.b);
        if (r5 == null) goto L12;
        String r6 = r5.y();
        if (r6 == null) goto L12;
    L14:
        return r6 + '#' + r0.y();
    L12:
        r6 = "coroutine";
        goto L14
    L15:
        return null;
    }

    public static final CoroutineContext c(i0 r2, CoroutineContext r3) {
        CoroutineContext r4 = r2.E().plus(r3);
        if (l0.c() == false) goto L5;
        CoroutineContext r5 = r4.plus(new g0(l0.b().incrementAndGet()));
    L7:
        if (r4 != w0.a()) goto L9;
        return r5;
    L9:
        if (r4.get(kotlin.coroutines.d.L) == null) goto L11;
        return r5;
    L11:
        return r5.plus(w0.a());
    L5:
        r5 = r4;
        goto L7
    }
}
