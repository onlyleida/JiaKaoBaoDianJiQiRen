package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public final class j0 extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0 f15691a;

    public j0(kotlin.reflect.jvm.internal.impl.builtins.g kotlinBuiltIns) {
        kotlin.jvm.internal.r.e(kotlinBuiltIns, "kotlinBuiltIns");
        f0 f0VarI = kotlinBuiltIns.I();
        kotlin.jvm.internal.r.d(f0VarI, "kotlinBuiltIns.nullableAnyType");
        this.f15691a = f0VarI;
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
        return this.f15691a;
    }
}
