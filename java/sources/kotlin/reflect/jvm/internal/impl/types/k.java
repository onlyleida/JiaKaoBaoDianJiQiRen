package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public final class k extends m implements j, kotlin.reflect.jvm.internal.impl.types.model.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15692d = new a(null);
    private final f0 b;
    private final boolean c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        private final boolean a(c1 c1Var) {
            return (c1Var.I0() instanceof kotlin.reflect.jvm.internal.impl.types.checker.m) || (c1Var.I0().u() instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0) || (c1Var instanceof kotlin.reflect.jvm.internal.impl.types.checker.i) || (c1Var instanceof l0);
        }

        public static /* synthetic */ k c(a aVar, c1 c1Var, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.b(c1Var, z);
        }

        private final boolean d(c1 c1Var, boolean z) {
            if (!a(c1Var)) {
                return false;
            }
            if (c1Var instanceof l0) {
                return y0.m(c1Var);
            }
            return (z && (c1Var.I0().u() instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0)) ? y0.m(c1Var) : !kotlin.reflect.jvm.internal.impl.types.checker.n.f15674a.a(c1Var);
        }

        public final k b(c1 type, boolean z) {
            kotlin.jvm.internal.r.e(type, "type");
            kotlin.jvm.internal.o oVar = null;
            if (type instanceof k) {
                return (k) type;
            }
            if (!d(type, z)) {
                return null;
            }
            if (type instanceof v) {
                v vVar = (v) type;
                kotlin.jvm.internal.r.a(vVar.Q0().I0(), vVar.R0().I0());
            }
            return new k(y.c(type), z, oVar);
        }
    }

    private k(f0 f0Var, boolean z) {
        this.b = f0Var;
        this.c = z;
    }

    public /* synthetic */ k(f0 f0Var, boolean z, kotlin.jvm.internal.o oVar) {
        this(f0Var, z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m, kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: P0 */
    public f0 M0(boolean z) {
        return z ? R0().M0(z) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    protected f0 R0() {
        return this.b;
    }

    public final f0 U0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public k Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return new k(R0().Q0(newAnnotations), this.c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    /* JADX INFO: renamed from: W0, reason: merged with bridge method [inline-methods] */
    public k T0(f0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        return new k(delegate, this.c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j
    public a0 h0(a0 replacement) {
        kotlin.jvm.internal.r.e(replacement, "replacement");
        return i0.e(replacement.L0(), this.c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public String toString() {
        return R0() + "!!";
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j
    public boolean w() {
        return (R0().I0() instanceof kotlin.reflect.jvm.internal.impl.types.checker.m) || (R0().I0().u() instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0);
    }
}
