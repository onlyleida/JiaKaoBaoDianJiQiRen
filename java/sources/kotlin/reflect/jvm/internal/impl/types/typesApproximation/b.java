package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.checker.f;

/* JADX INFO: loaded from: classes6.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t0 f15715a;
    private final a0 b;
    private final a0 c;

    public b(t0 typeParameter, a0 inProjection, a0 outProjection) {
        r.e(typeParameter, "typeParameter");
        r.e(inProjection, "inProjection");
        r.e(outProjection, "outProjection");
        this.f15715a = typeParameter;
        this.b = inProjection;
        this.c = outProjection;
    }

    public final a0 a() {
        return this.b;
    }

    public final a0 b() {
        return this.c;
    }

    public final t0 c() {
        return this.f15715a;
    }

    public final boolean d() {
        return f.f15664a.d(this.b, this.c);
    }
}
