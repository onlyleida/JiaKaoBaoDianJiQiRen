package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class g {
    public static final List<v0> a(Collection<h> newValueParametersTypes, Collection<? extends v0> oldValueParameters, kotlin.reflect.jvm.internal.impl.descriptors.a newOwner) {
        r.e(newValueParametersTypes, "newValueParametersTypes");
        r.e(oldValueParameters, "oldValueParameters");
        r.e(newOwner, "newOwner");
        newValueParametersTypes.size();
        oldValueParameters.size();
        List<Pair> listT0 = CollectionsKt___CollectionsKt.T0(newValueParametersTypes, oldValueParameters);
        ArrayList arrayList = new ArrayList(v.u(listT0, 10));
        for (Pair pair : listT0) {
            h hVar = (h) pair.component1();
            v0 v0Var = (v0) pair.component2();
            int iH = v0Var.h();
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = v0Var.getAnnotations();
            kotlin.reflect.jvm.internal.impl.name.f name = v0Var.getName();
            r.d(name, "oldParameter.name");
            a0 a0VarB = hVar.b();
            boolean zA = hVar.a();
            boolean zP0 = v0Var.p0();
            boolean zN0 = v0Var.n0();
            a0 a0VarK = v0Var.t0() != null ? DescriptorUtilsKt.l(newOwner).k().k(hVar.b()) : null;
            o0 o0VarO = v0Var.o();
            r.d(o0VarO, "oldParameter.source");
            arrayList.add(new ValueParameterDescriptorImpl(newOwner, null, iH, annotations, name, a0VarB, zA, zP0, zN0, a0VarK, o0VarO));
        }
        return arrayList;
    }

    public static final LazyJavaStaticClassScope b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        r.e(dVar, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarP = DescriptorUtilsKt.p(dVar);
        if (dVarP == null) {
            return null;
        }
        MemberScope memberScopeK0 = dVarP.k0();
        LazyJavaStaticClassScope lazyJavaStaticClassScope = memberScopeK0 instanceof LazyJavaStaticClassScope ? (LazyJavaStaticClassScope) memberScopeK0 : null;
        return lazyJavaStaticClassScope == null ? b(dVarP) : lazyJavaStaticClassScope;
    }
}
