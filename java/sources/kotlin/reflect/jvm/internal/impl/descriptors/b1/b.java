package kotlin.reflect.jvm.internal.impl.descriptors.b1;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.y0;
import kotlin.reflect.jvm.internal.impl.descriptors.z0;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends z0 {
    public static final b c = new b();

    private b() {
        super("protected_and_package", true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z0
    public Integer a(z0 visibility) {
        r.e(visibility, "visibility");
        if (r.a(this, visibility)) {
            return 0;
        }
        if (visibility == y0.b.c) {
            return null;
        }
        return Integer.valueOf(y0.f15001a.b(visibility) ? 1 : -1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z0
    public String b() {
        return "protected/*protected and package*/";
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z0
    public z0 d() {
        return y0.g.c;
    }
}
