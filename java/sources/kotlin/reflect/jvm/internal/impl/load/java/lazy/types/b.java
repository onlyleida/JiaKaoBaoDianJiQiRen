package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.name.c;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.k0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.u0;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f15128a = new c("java.lang.Class");

    public static final s0 b(t0 typeParameter, a attr) {
        r.e(typeParameter, "typeParameter");
        r.e(attr, "attr");
        return attr.e() == TypeUsage.SUPERTYPE ? new u0(k0.b(typeParameter)) : new StarProjectionImpl(typeParameter);
    }

    public static final a c(TypeUsage typeUsage, boolean z, t0 t0Var) {
        r.e(typeUsage, "<this>");
        return new a(typeUsage, null, z, t0Var == null ? null : kotlin.collections.t0.a(t0Var), null, 18, null);
    }

    public static /* synthetic */ a d(TypeUsage typeUsage, boolean z, t0 t0Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            t0Var = null;
        }
        return c(typeUsage, z, t0Var);
    }
}
