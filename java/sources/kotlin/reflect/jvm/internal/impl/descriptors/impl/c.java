package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c extends i implements m0 {
    private static final kotlin.reflect.jvm.internal.impl.name.f c = kotlin.reflect.jvm.internal.impl.name.f.n("<this>");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        super(eVar, c);
        if (eVar != null) {
        } else {
            w(0);
            throw null;
        }
    }

    private static /* synthetic */ void w(int i) {
        String str;
        int i2;
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "substitutor";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        switch (i) {
            case 2:
                objArr[1] = "getTypeParameters";
                break;
            case 3:
                objArr[1] = "getType";
                break;
            case 4:
                objArr[1] = "getValueParameters";
                break;
            case 5:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 6:
                objArr[1] = "getVisibility";
                break;
            case 7:
                objArr[1] = "getOriginal";
                break;
            case 8:
                objArr[1] = "getSource";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "substitute";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 K() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 O() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.k
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a a() {
        h0();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.a> d() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        w(5);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean d0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<v0> f() {
        List<v0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        w(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.j
    public kotlin.reflect.jvm.internal.impl.types.a0 getReturnType() {
        return getType();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u0
    public kotlin.reflect.jvm.internal.impl.types.a0 getType() {
        kotlin.reflect.jvm.internal.impl.types.a0 type = getValue().getType();
        if (type != null) {
            return type;
        }
        w(3);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<t0> getTypeParameters() {
        List<t0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        w(2);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = kotlin.reflect.jvm.internal.impl.descriptors.r.f14976f;
        if (sVar != null) {
            return sVar;
        }
        w(6);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.g0 h0() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public o0 o() {
        o0 o0Var = o0.f14970a;
        if (o0Var != null) {
            return o0Var;
        }
        w(8);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.l(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.k
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.k a() {
        h0();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q0
    public m0 c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            w(1);
            throw null;
        }
        if (typeSubstitutor.k()) {
            return this;
        }
        kotlin.reflect.jvm.internal.impl.types.a0 a0VarP = b() instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? typeSubstitutor.p(getType(), Variance.OUT_VARIANCE) : typeSubstitutor.p(getType(), Variance.INVARIANT);
        if (a0VarP == null) {
            return null;
        }
        return a0VarP == getType() ? this : new c0(b(), new kotlin.reflect.jvm.internal.impl.resolve.scopes.i.g(a0VarP), getAnnotations());
    }
}
