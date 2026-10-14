package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.checker.f;
import kotlin.reflect.jvm.internal.impl.types.checker.g;
import kotlin.reflect.jvm.internal.impl.types.e0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.v;
import kotlin.text.StringsKt__StringsKt;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
public final class RawTypeImpl extends v implements e0 {
    private RawTypeImpl(f0 f0Var, f0 f0Var2, boolean z) {
        super(f0Var, f0Var2);
        if (z) {
            return;
        }
        f.f15664a.d(f0Var, f0Var2);
    }

    private static final boolean V0(String str, String str2) {
        return r.a(str, StringsKt__StringsKt.i0(str2, "out ")) || r.a(str2, Marker.ANY_MARKER);
    }

    private static final List<String> W0(DescriptorRenderer descriptorRenderer, a0 a0Var) {
        List<s0> listH0 = a0Var.H0();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listH0, 10));
        Iterator<T> it = listH0.iterator();
        while (it.hasNext()) {
            arrayList.add(descriptorRenderer.x((s0) it.next()));
        }
        return arrayList;
    }

    private static final String X0(String str, String str2) {
        if (!StringsKt__StringsKt.F(str, '<', false, 2, null)) {
            return str;
        }
        return StringsKt__StringsKt.F0(str, '<', null, 2, null) + '<' + str2 + '>' + StringsKt__StringsKt.C0(str, '>', null, 2, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public f0 P0() {
        return Q0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public String S0(DescriptorRenderer renderer, kotlin.reflect.jvm.internal.impl.renderer.b options) {
        r.e(renderer, "renderer");
        r.e(options, "options");
        String strW = renderer.w(Q0());
        String strW2 = renderer.w(R0());
        if (options.i()) {
            return "raw (" + strW + ".." + strW2 + ')';
        }
        if (R0().H0().isEmpty()) {
            return renderer.t(strW, strW2, TypeUtilsKt.h(this));
        }
        List<String> listW0 = W0(renderer, Q0());
        List<String> listW1 = W0(renderer, R0());
        String strM0 = CollectionsKt___CollectionsKt.m0(listW0, ", ", null, null, 0, null, new Function1<String, CharSequence>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl$render$newArgs$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(String it) {
                r.e(it, "it");
                return r.m("(raw) ", it);
            }
        }, 30, null);
        List<Pair> listT0 = CollectionsKt___CollectionsKt.T0(listW0, listW1);
        boolean z = true;
        if (!(listT0 instanceof Collection) || !listT0.isEmpty()) {
            for (Pair pair : listT0) {
                if (!V0((String) pair.getFirst(), (String) pair.getSecond())) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            strW2 = X0(strW2, strM0);
        }
        String strX0 = X0(strW, strM0);
        return r.a(strX0, strW2) ? strX0 : renderer.t(strX0, strW2, TypeUtilsKt.h(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public RawTypeImpl M0(boolean z) {
        return new RawTypeImpl(Q0().M0(z), R0().M0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public v S0(g kotlinTypeRefiner) {
        r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new RawTypeImpl((f0) kotlinTypeRefiner.g(Q0()), (f0) kotlinTypeRefiner.g(R0()), true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public RawTypeImpl Q0(e newAnnotations) {
        r.e(newAnnotations, "newAnnotations");
        return new RawTypeImpl(Q0().Q0(newAnnotations), R0().Q0(newAnnotations));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.types.v, kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = I0().u();
        TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = null;
        Object[] objArr = 0;
        d dVar = fVarU instanceof d ? (d) fVarU : null;
        if (dVar == null) {
            throw new IllegalStateException(r.m("Incorrect classifier: ", I0().u()).toString());
        }
        MemberScope memberScopeO0 = dVar.o0(new RawSubstitution(typeParameterUpperBoundEraser, 1, objArr == true ? 1 : 0));
        r.d(memberScopeO0, "classDescriptor.getMemberScope(RawSubstitution())");
        return memberScopeO0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RawTypeImpl(f0 lowerBound, f0 upperBound) {
        this(lowerBound, upperBound, false);
        r.e(lowerBound, "lowerBound");
        r.e(upperBound, "upperBound");
    }
}
