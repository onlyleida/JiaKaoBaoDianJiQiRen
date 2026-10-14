package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyWrappedType extends d1 {
    private final kotlin.reflect.jvm.internal.impl.storage.m b;
    private final Function0<a0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h<a0> f15647d;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyWrappedType(kotlin.reflect.jvm.internal.impl.storage.m storageManager, Function0<? extends a0> computation) {
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(computation, "computation");
        this.b = storageManager;
        this.c = computation;
        this.f15647d = storageManager.c(computation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.d1
    protected a0 M0() {
        return this.f15647d.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.d1
    public boolean N0() {
        return this.f15647d.k();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public LazyWrappedType S0(final kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new LazyWrappedType(this.b, new Function0<a0>() { // from class: kotlin.reflect.jvm.internal.impl.types.LazyWrappedType$refine$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final a0 invoke() {
                return kotlinTypeRefiner.g((a0) this.c.invoke());
            }
        });
    }
}
