package kotlin.reflect.jvm.internal.impl.resolve.scopes.i;

import kotlin.reflect.jvm.internal.impl.types.a0;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes6.dex */
public class b extends a implements d {
    private final kotlin.reflect.jvm.internal.impl.descriptors.a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, a0 a0Var, d dVar) {
        super(a0Var, dVar);
        if (aVar == null) {
            b(0);
            throw null;
        }
        if (a0Var == null) {
            b(1);
            throw null;
        }
        this.c = aVar;
    }

    private static /* synthetic */ void b(int i) {
        String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 2 ? 3 : 2];
        if (i == 1) {
            objArr[0] = "receiverType";
        } else if (i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else if (i != 3) {
            objArr[0] = "callableDescriptor";
        } else {
            objArr[0] = "newType";
        }
        if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else {
            objArr[1] = "getDeclarationDescriptor";
        }
        if (i != 2) {
            if (i != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "replaceType";
            }
        }
        String str2 = String.format(str, objArr);
        if (i == 2) {
            throw new IllegalStateException(str2);
        }
    }

    public String toString() {
        return getType() + ": Ext {" + this.c + VectorFormat.DEFAULT_SUFFIX;
    }
}
