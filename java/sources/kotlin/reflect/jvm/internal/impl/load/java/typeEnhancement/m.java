package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.collections.v0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.x0;

/* JADX INFO: loaded from: classes6.dex */
public final class m {
    public static final e a(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2) {
        return (z2 && nullabilityQualifier == NullabilityQualifier.NOT_NULL) ? new e(nullabilityQualifier, mutabilityQualifier, true, z) : new e(nullabilityQualifier, mutabilityQualifier, false, z);
    }

    public static final boolean b(x0 x0Var, kotlin.reflect.jvm.internal.impl.types.model.g type) {
        r.e(x0Var, "<this>");
        r.e(type, "type");
        kotlin.reflect.jvm.internal.impl.name.c ENHANCED_NULLABILITY_ANNOTATION = kotlin.reflect.jvm.internal.impl.load.java.r.o;
        r.d(ENHANCED_NULLABILITY_ANNOTATION, "ENHANCED_NULLABILITY_ANNOTATION");
        return x0Var.o0(type, ENHANCED_NULLABILITY_ANNOTATION);
    }

    public static final <T> T c(Set<? extends T> set, T low, T high, T t, boolean z) {
        Set<? extends T> setQ0;
        T t2;
        r.e(set, "<this>");
        r.e(low, "low");
        r.e(high, "high");
        if (!z) {
            if (t != null && (setQ0 = CollectionsKt___CollectionsKt.Q0(v0.i(set, t))) != null) {
                set = setQ0;
            }
            return (T) s.D0(set);
        }
        if (set.contains(low)) {
            t2 = low;
        } else {
            t2 = set.contains(high) ? high : null;
        }
        if (r.a(t2, low) && r.a(t, high)) {
            return null;
        }
        return t == null ? t2 : t;
    }

    public static final NullabilityQualifier d(Set<? extends NullabilityQualifier> set, NullabilityQualifier nullabilityQualifier, boolean z) {
        r.e(set, "<this>");
        NullabilityQualifier nullabilityQualifier2 = NullabilityQualifier.FORCE_FLEXIBILITY;
        return nullabilityQualifier == nullabilityQualifier2 ? nullabilityQualifier2 : (NullabilityQualifier) c(set, NullabilityQualifier.NOT_NULL, NullabilityQualifier.NULLABLE, nullabilityQualifier, z);
    }
}
