package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public final class p extends v0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15701d = new a(null);
    private final v0 b;
    private final v0 c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final v0 a(v0 first, v0 second) {
            kotlin.jvm.internal.r.e(first, "first");
            kotlin.jvm.internal.r.e(second, "second");
            if (first.f()) {
                return second;
            }
            return second.f() ? first : new p(first, second, null);
        }
    }

    private p(v0 v0Var, v0 v0Var2) {
        this.b = v0Var;
        this.c = v0Var2;
    }

    public /* synthetic */ p(v0 v0Var, v0 v0Var2, kotlin.jvm.internal.o oVar) {
        this(v0Var, v0Var2);
    }

    public static final v0 i(v0 v0Var, v0 v0Var2) {
        return f15701d.a(v0Var, v0Var2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public boolean a() {
        return this.b.a() || this.c.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public boolean b() {
        return this.b.b() || this.c.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e d(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations) {
        kotlin.jvm.internal.r.e(annotations, "annotations");
        return this.c.d(this.b.d(annotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public s0 e(a0 key) {
        kotlin.jvm.internal.r.e(key, "key");
        s0 s0VarE = this.b.e(key);
        return s0VarE == null ? this.c.e(key) : s0VarE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public boolean f() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public a0 g(a0 topLevelType, Variance position) {
        kotlin.jvm.internal.r.e(topLevelType, "topLevelType");
        kotlin.jvm.internal.r.e(position, "position");
        return this.c.g(this.b.g(topLevelType, position), position);
    }
}
