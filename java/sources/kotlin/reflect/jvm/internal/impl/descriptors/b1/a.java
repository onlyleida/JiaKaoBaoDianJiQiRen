package kotlin.reflect.jvm.internal.impl.descriptors.b1;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.y0;
import kotlin.reflect.jvm.internal.impl.descriptors.z0;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends z0 {
    public static final a c = new a();

    private a() {
        super("package", false);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z0
    public Integer a(z0 visibility) {
        r.e(visibility, "visibility");
        if (this == visibility) {
            return 0;
        }
        return y0.f15001a.b(visibility) ? 1 : -1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z0
    public String b() {
        return "public/*package*/";
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.z0
    public z0 d() {
        return y0.g.c;
    }
}
