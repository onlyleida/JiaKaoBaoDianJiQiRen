package kotlin.reflect.jvm.internal.impl.resolve.scopes.i;

import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final a0 f15533a;
    private final d b;

    public a(a0 a0Var, d dVar) {
        if (a0Var == null) {
            b(0);
            throw null;
        }
        this.f15533a = a0Var;
        this.b = dVar == null ? this : dVar;
    }

    private static /* synthetic */ void b(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[0] = "receiverType";
        }
        if (i == 1) {
            objArr[1] = "getType";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 1 && i != 2) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d
    public a0 getType() {
        a0 a0Var = this.f15533a;
        if (a0Var != null) {
            return a0Var;
        }
        b(1);
        throw null;
    }
}
