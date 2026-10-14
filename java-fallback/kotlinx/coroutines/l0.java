package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f16049a = false;
    private static final boolean b = false;
    private static final boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicLong f16050d = null;

    static {
        String r0 = kotlinx.coroutines.internal.z.d("kotlinx.coroutines.debug");
        boolean r1 = true;
        if (r0 == null) goto L15;
        int r3 = r0.hashCode();
        if (r3 == 0) goto L23;
        if (r3 == 3551) goto L20;
        if (r3 == 109935) goto L17;
        if (r3 != 3005871) goto L34;
        if (r0.equals("auto") == true) goto L15;
    L34:
        throw new IllegalStateException(("System property 'kotlinx.coroutines.debug' has unrecognized value '" + r0 + '\'').toString());
    L17:
        if (r0.equals("off") == false) goto L34;
    L20:
        if (r0.equals("on") == false) goto L34;
    L24:
        boolean r2 = true;
    L25:
        b = r2;
        if (r2 == true) goto L28;
    L30:
        r1 = false;
    L31:
        c = r1;
        f16050d = new AtomicLong(0);
        return;
    L28:
        if (kotlinx.coroutines.internal.z.e("kotlinx.coroutines.stacktrace.recovery", true) == false) goto L30;
    L23:
        if (r0.equals("") == false) goto L34;
    L15:
        r2 = false;
        goto L25
    }

    public static final boolean a() {
        return f16049a;
    }

    public static final AtomicLong b() {
        return f16050d;
    }

    public static final boolean c() {
        return b;
    }

    public static final boolean d() {
        return c;
    }
}
