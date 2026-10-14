package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f15167e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final e f15168f = new e(null, null, false, false, 8, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NullabilityQualifier f15169a;
    private final MutabilityQualifier b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15170d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final e a() {
            return e.f15168f;
        }
    }

    public e(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2) {
        this.f15169a = nullabilityQualifier;
        this.b = mutabilityQualifier;
        this.c = z;
        this.f15170d = z2;
    }

    public final MutabilityQualifier b() {
        return this.b;
    }

    public final NullabilityQualifier c() {
        return this.f15169a;
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean e() {
        return this.f15170d;
    }

    public /* synthetic */ e(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        this(nullabilityQualifier, mutabilityQualifier, z, (i & 8) != 0 ? false : z2);
    }
}
