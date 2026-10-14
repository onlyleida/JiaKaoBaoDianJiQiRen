package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f14886a;
    private final List<kotlin.reflect.jvm.internal.impl.types.s0> b;
    private final h0 c;

    /* JADX WARN: Multi-variable type inference failed */
    public h0(g classifierDescriptor, List<? extends kotlin.reflect.jvm.internal.impl.types.s0> arguments, h0 h0Var) {
        kotlin.jvm.internal.r.e(classifierDescriptor, "classifierDescriptor");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        this.f14886a = classifierDescriptor;
        this.b = arguments;
        this.c = h0Var;
    }

    public final List<kotlin.reflect.jvm.internal.impl.types.s0> a() {
        return this.b;
    }

    public final g b() {
        return this.f14886a;
    }

    public final h0 c() {
        return this.c;
    }
}
