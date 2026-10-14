package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class g {
    public static final e a(e first, e second) {
        r.e(first, "first");
        r.e(second, "second");
        if (first.isEmpty()) {
            return second;
        }
        return second.isEmpty() ? first : new CompositeAnnotations(first, second);
    }
}
