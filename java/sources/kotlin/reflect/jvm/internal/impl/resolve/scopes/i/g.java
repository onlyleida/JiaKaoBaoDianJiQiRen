package kotlin.reflect.jvm.internal.impl.resolve.scopes.i;

import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public class g extends a {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g(a0 a0Var) {
        this(a0Var, null);
        if (a0Var != null) {
        } else {
            b(0);
            throw null;
        }
    }

    private static /* synthetic */ void b(int i) {
        Object[] objArr = new Object[3];
        if (i != 2) {
            objArr[0] = "type";
        } else {
            objArr[0] = "newType";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/TransientReceiver";
        if (i != 2) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "replaceType";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public String toString() {
        return "{Transient} : " + getType();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private g(a0 a0Var, d dVar) {
        super(a0Var, dVar);
        if (a0Var != null) {
        } else {
            b(1);
            throw null;
        }
    }
}
