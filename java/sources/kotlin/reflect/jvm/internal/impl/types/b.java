package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b extends AbstractTypeConstructor implements q0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(kotlin.reflect.jvm.internal.impl.storage.m mVar) {
        super(mVar);
        if (mVar != null) {
        } else {
            t(0);
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    private static /* synthetic */ void t(int i) {
        String str = (i == 1 || i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 3 || i == 4) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        } else if (i == 2) {
            objArr[0] = "classifier";
        } else if (i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        } else {
            objArr[0] = "storageManager";
        }
        if (i == 1) {
            objArr[1] = "getBuiltIns";
        } else if (i == 3 || i == 4) {
            objArr[1] = "getAdditionalNeighboursInSupertypeGraph";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        }
        if (i != 1) {
            if (i == 2) {
                objArr[2] = "isSameClassifier";
            } else if (i != 3 && i != 4) {
                objArr[2] = "<init>";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 3 && i != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.i
    protected boolean g(kotlin.reflect.jvm.internal.impl.descriptors.f fVar) {
        if (fVar != null) {
            return (fVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && e(u(), fVar);
        }
        t(2);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public kotlin.reflect.jvm.internal.impl.builtins.g k() {
        kotlin.reflect.jvm.internal.impl.builtins.g gVarG = DescriptorUtilsKt.g(u());
        if (gVarG != null) {
            return gVarG;
        }
        t(1);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected a0 l() {
        if (kotlin.reflect.jvm.internal.impl.builtins.g.s0(u())) {
            return null;
        }
        return k().i();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected Collection<a0> m(boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = u().b();
        if (!(kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            List listEmptyList = Collections.emptyList();
            if (listEmptyList != null) {
                return listEmptyList;
            }
            t(3);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.utils.d dVar = new kotlin.reflect.jvm.internal.impl.utils.d();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB;
        dVar.add(dVar2.n());
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarL0 = dVar2.l0();
        if (z && dVarL0 != null) {
            dVar.add(dVarL0.n());
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.i, kotlin.reflect.jvm.internal.impl.types.q0
    public abstract kotlin.reflect.jvm.internal.impl.descriptors.d u();
}
