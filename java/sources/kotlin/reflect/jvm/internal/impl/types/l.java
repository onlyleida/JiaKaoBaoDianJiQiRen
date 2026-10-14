package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public class l extends v0 {
    private final v0 b;

    public l(v0 substitution) {
        kotlin.jvm.internal.r.e(substitution, "substitution");
        this.b = substitution;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public boolean a() {
        return this.b.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e d(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations) {
        kotlin.jvm.internal.r.e(annotations, "annotations");
        return this.b.d(annotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public s0 e(a0 key) {
        kotlin.jvm.internal.r.e(key, "key");
        return this.b.e(key);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public boolean f() {
        return this.b.f();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public a0 g(a0 topLevelType, Variance position) {
        kotlin.jvm.internal.r.e(topLevelType, "topLevelType");
        kotlin.jvm.internal.r.e(position, "position");
        return this.b.g(topLevelType, position);
    }
}
