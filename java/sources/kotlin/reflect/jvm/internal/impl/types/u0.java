package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public class u0 extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Variance f15716a;
    private final a0 b;

    public u0(Variance variance, a0 a0Var) {
        if (variance == null) {
            d(0);
            throw null;
        }
        if (a0Var == null) {
            d(1);
            throw null;
        }
        this.f15716a = variance;
        this.b = a0Var;
    }

    private static /* synthetic */ void d(int i) {
        String str = (i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5) ? 2 : 3];
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "type";
                break;
            case 4:
            case 5:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
                break;
            case 6:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "projection";
                break;
        }
        if (i == 4) {
            objArr[1] = "getProjectionKind";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
        } else {
            objArr[1] = "getType";
        }
        if (i == 3) {
            objArr[2] = "replaceType";
        } else if (i != 4 && i != 5) {
            if (i != 6) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "refine";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s0
    public boolean a() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s0
    public s0 b(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        if (gVar != null) {
            return new u0(this.f15716a, gVar.g(this.b));
        }
        d(6);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s0
    public Variance c() {
        Variance variance = this.f15716a;
        if (variance != null) {
            return variance;
        }
        d(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s0
    public a0 getType() {
        a0 a0Var = this.b;
        if (a0Var != null) {
            return a0Var;
        }
        d(5);
        throw null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u0(a0 a0Var) {
        this(Variance.INVARIANT, a0Var);
        if (a0Var != null) {
        } else {
            d(2);
            throw null;
        }
    }
}
