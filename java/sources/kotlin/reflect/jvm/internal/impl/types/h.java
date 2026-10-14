package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class h extends b implements q0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.d f15687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<kotlin.reflect.jvm.internal.impl.descriptors.t0> f15688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Collection<a0> f15689f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, List<? extends kotlin.reflect.jvm.internal.impl.descriptors.t0> list, Collection<a0> collection, kotlin.reflect.jvm.internal.impl.storage.m mVar) {
        super(mVar);
        if (dVar == null) {
            t(0);
            throw null;
        }
        if (list == null) {
            t(1);
            throw null;
        }
        if (collection == null) {
            t(2);
            throw null;
        }
        if (mVar == null) {
            t(3);
            throw null;
        }
        this.f15687d = dVar;
        this.f15688e = Collections.unmodifiableList(new ArrayList(list));
        this.f15689f = Collections.unmodifiableCollection(collection);
    }

    private static /* synthetic */ void t(int i) {
        String str = (i == 4 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5 || i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "parameters";
                break;
            case 2:
                objArr[0] = "supertypes";
                break;
            case 3:
                objArr[0] = "storageManager";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
                break;
            default:
                objArr[0] = "classDescriptor";
                break;
        }
        if (i == 4) {
            objArr[1] = "getParameters";
        } else if (i == 5) {
            objArr[1] = "getDeclarationDescriptor";
        } else if (i == 6) {
            objArr[1] = "computeSupertypes";
        } else if (i != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
        } else {
            objArr[1] = "getSupertypeLoopChecker";
        }
        if (i != 4 && i != 5 && i != 6 && i != 7) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5 && i != 6 && i != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public boolean d() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public List<kotlin.reflect.jvm.internal.impl.descriptors.t0> getParameters() {
        List<kotlin.reflect.jvm.internal.impl.descriptors.t0> list = this.f15688e;
        if (list != null) {
            return list;
        }
        t(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected Collection<a0> j() {
        Collection<a0> collection = this.f15689f;
        if (collection != null) {
            return collection;
        }
        t(6);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected kotlin.reflect.jvm.internal.impl.descriptors.r0 o() {
        kotlin.reflect.jvm.internal.impl.descriptors.r0.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.r0.a.f14979a;
        if (aVar != null) {
            return aVar;
        }
        t(7);
        throw null;
    }

    public String toString() {
        return kotlin.reflect.jvm.internal.impl.resolve.c.m(this.f15687d).b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.b
    public kotlin.reflect.jvm.internal.impl.descriptors.d u() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.f15687d;
        if (dVar != null) {
            return dVar;
        }
        t(5);
        throw null;
    }
}
