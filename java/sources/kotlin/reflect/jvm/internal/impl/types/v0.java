package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public abstract class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v0 f15717a = new a();

    public static final class a extends v0 {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public /* bridge */ /* synthetic */ s0 e(a0 a0Var) {
            return (s0) i(a0Var);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public boolean f() {
            return true;
        }

        public Void i(a0 key) {
            kotlin.jvm.internal.r.e(key, "key");
            return null;
        }

        public String toString() {
            return "Empty TypeSubstitution";
        }
    }

    public static final class b extends v0 {
        b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public boolean a() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public boolean b() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e d(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations) {
            kotlin.jvm.internal.r.e(annotations, "annotations");
            return v0.this.d(annotations);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public s0 e(a0 key) {
            kotlin.jvm.internal.r.e(key, "key");
            return v0.this.e(key);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public boolean f() {
            return v0.this.f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.v0
        public a0 g(a0 topLevelType, Variance position) {
            kotlin.jvm.internal.r.e(topLevelType, "topLevelType");
            kotlin.jvm.internal.r.e(position, "position");
            return v0.this.g(topLevelType, position);
        }
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return false;
    }

    public final TypeSubstitutor c() {
        TypeSubstitutor typeSubstitutorG = TypeSubstitutor.g(this);
        kotlin.jvm.internal.r.d(typeSubstitutorG, "create(this)");
        return typeSubstitutorG;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e d(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations) {
        kotlin.jvm.internal.r.e(annotations, "annotations");
        return annotations;
    }

    public abstract s0 e(a0 a0Var);

    public boolean f() {
        return false;
    }

    public a0 g(a0 topLevelType, Variance position) {
        kotlin.jvm.internal.r.e(topLevelType, "topLevelType");
        kotlin.jvm.internal.r.e(position, "position");
        return topLevelType;
    }

    public final v0 h() {
        return new b();
    }
}
