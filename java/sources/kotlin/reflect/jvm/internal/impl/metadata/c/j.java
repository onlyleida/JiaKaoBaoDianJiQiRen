package kotlin.reflect.jvm.internal.impl.metadata.c;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class j {
    public static final boolean a(a version) {
        r.e(version, "version");
        return version.a() == 1 && version.b() >= 4;
    }

    public static final boolean b(a version) {
        r.e(version, "version");
        return a(version);
    }
}
