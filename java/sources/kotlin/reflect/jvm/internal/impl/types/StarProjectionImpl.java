package kotlin.reflect.jvm.internal.impl.types;

import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public final class StarProjectionImpl extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.t0 f15648a;
    private final Lazy b;

    public StarProjectionImpl(kotlin.reflect.jvm.internal.impl.descriptors.t0 typeParameter) {
        kotlin.jvm.internal.r.e(typeParameter, "typeParameter");
        this.f15648a = typeParameter;
        this.b = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<a0>() { // from class: kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl$_type$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final a0 invoke() {
                return k0.b(this.this$0.f15648a);
            }
        });
    }

    private final a0 e() {
        return (a0) this.b.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s0
    public boolean a() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s0
    public s0 b(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s0
    public Variance c() {
        return Variance.OUT_VARIANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s0
    public a0 getType() {
        return e();
    }
}
