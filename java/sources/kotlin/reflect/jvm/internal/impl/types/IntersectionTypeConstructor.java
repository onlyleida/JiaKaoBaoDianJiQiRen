package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes6.dex */
public final class IntersectionTypeConstructor implements q0, kotlin.reflect.jvm.internal.impl.types.model.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a0 f15643a;
    private final LinkedHashSet<a0> b;
    private final int c;

    public static final class a<T> implements Comparator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1 f15644a;

        public a(Function1 function1) {
            this.f15644a = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            a0 it = (a0) t;
            Function1 function1 = this.f15644a;
            kotlin.jvm.internal.r.d(it, "it");
            String string = function1.invoke(it).toString();
            a0 it2 = (a0) t2;
            Function1 function2 = this.f15644a;
            kotlin.jvm.internal.r.d(it2, "it");
            return kotlin.x.b.c(string, function2.invoke(it2).toString());
        }
    }

    public IntersectionTypeConstructor(Collection<? extends a0> typesToIntersect) {
        kotlin.jvm.internal.r.e(typesToIntersect, "typesToIntersect");
        typesToIntersect.isEmpty();
        LinkedHashSet<a0> linkedHashSet = new LinkedHashSet<>(typesToIntersect);
        this.b = linkedHashSet;
        this.c = linkedHashSet.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String i(IntersectionTypeConstructor intersectionTypeConstructor, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<a0, String>() { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$makeDebugNameForIntersectionType$1
                @Override // kotlin.jvm.functions.Function1
                public final String invoke(a0 it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    return it.toString();
                }
            };
        }
        return intersectionTypeConstructor.h(function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public Collection<a0> a() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: c */
    public kotlin.reflect.jvm.internal.impl.descriptors.f u() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public boolean d() {
        return false;
    }

    public final MemberScope e() {
        return TypeIntersectionScope.c.a("member scope for intersection type", this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntersectionTypeConstructor) {
            return kotlin.jvm.internal.r.a(this.b, ((IntersectionTypeConstructor) obj).b);
        }
        return false;
    }

    public final f0 f() {
        return KotlinTypeFactory.k(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), this, kotlin.collections.u.j(), false, e(), new Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, f0>() { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$createType$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final f0 invoke(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
                kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
                return this.this$0.b(kotlinTypeRefiner).f();
            }
        });
    }

    public final a0 g() {
        return this.f15643a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public List<kotlin.reflect.jvm.internal.impl.descriptors.t0> getParameters() {
        return kotlin.collections.u.j();
    }

    public final String h(final Function1<? super a0, ? extends Object> getProperTypeRelatedToStringify) {
        kotlin.jvm.internal.r.e(getProperTypeRelatedToStringify, "getProperTypeRelatedToStringify");
        return CollectionsKt___CollectionsKt.m0(CollectionsKt___CollectionsKt.G0(this.b, new a(getProperTypeRelatedToStringify)), " & ", VectorFormat.DEFAULT_PREFIX, VectorFormat.DEFAULT_SUFFIX, 0, null, new Function1<a0, CharSequence>() { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$makeDebugNameForIntersectionType$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(a0 it) {
                Function1<a0, Object> function1 = getProperTypeRelatedToStringify;
                kotlin.jvm.internal.r.d(it, "it");
                return function1.invoke(it).toString();
            }
        }, 24, null);
    }

    public int hashCode() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public IntersectionTypeConstructor b(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        Collection<a0> collectionA = a();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collectionA, 10));
        Iterator<T> it = collectionA.iterator();
        boolean z = false;
        while (it.hasNext()) {
            arrayList.add(((a0) it.next()).S0(kotlinTypeRefiner));
            z = true;
        }
        IntersectionTypeConstructor intersectionTypeConstructorL = null;
        if (z) {
            a0 a0VarG = g();
            intersectionTypeConstructorL = new IntersectionTypeConstructor(arrayList).l(a0VarG != null ? a0VarG.S0(kotlinTypeRefiner) : null);
        }
        return intersectionTypeConstructorL == null ? this : intersectionTypeConstructorL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public kotlin.reflect.jvm.internal.impl.builtins.g k() {
        kotlin.reflect.jvm.internal.impl.builtins.g gVarK = this.b.iterator().next().I0().k();
        kotlin.jvm.internal.r.d(gVarK, "intersectedTypes.iterato…xt().constructor.builtIns");
        return gVarK;
    }

    public final IntersectionTypeConstructor l(a0 a0Var) {
        return new IntersectionTypeConstructor(this.b, a0Var);
    }

    public String toString() {
        return i(this, null, 1, null);
    }

    private IntersectionTypeConstructor(Collection<? extends a0> collection, a0 a0Var) {
        this(collection);
        this.f15643a = a0Var;
    }
}
