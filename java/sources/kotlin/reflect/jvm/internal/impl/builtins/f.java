package kotlin.reflect.jvm.internal.impl.builtins;

import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.n0;
import kotlin.collections.o0;
import kotlin.collections.s;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.constants.t;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    public static final f0 a(g builtIns, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, a0 a0Var, List<? extends a0> parameterTypes, List<kotlin.reflect.jvm.internal.impl.name.f> list, a0 returnType, boolean z) {
        r.e(builtIns, "builtIns");
        r.e(annotations, "annotations");
        r.e(parameterTypes, "parameterTypes");
        r.e(returnType, "returnType");
        List<s0> listE = e(a0Var, parameterTypes, list, returnType, builtIns);
        int size = parameterTypes.size();
        if (a0Var != null) {
            size++;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarD = d(builtIns, size, z);
        if (a0Var != null) {
            annotations = q(annotations, builtIns);
        }
        return KotlinTypeFactory.g(annotations, dVarD, listE);
    }

    public static final kotlin.reflect.jvm.internal.impl.name.f c(a0 a0Var) {
        String strB;
        r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarD = a0Var.getAnnotations().d(h.a.r);
        if (cVarD == null) {
            return null;
        }
        Object objD0 = s.D0(cVarD.a().values());
        t tVar = objD0 instanceof t ? (t) objD0 : null;
        if (tVar == null || (strB = tVar.b()) == null || !kotlin.reflect.jvm.internal.impl.name.f.k(strB)) {
            strB = null;
        }
        if (strB == null) {
            return null;
        }
        return kotlin.reflect.jvm.internal.impl.name.f.g(strB);
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d d(g builtIns, int i, boolean z) {
        r.e(builtIns, "builtIns");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarX = z ? builtIns.X(i) : builtIns.C(i);
        r.d(dVarX, "if (isSuspendFunction) b…tFunction(parameterCount)");
        return dVarX;
    }

    public static final List<s0> e(a0 a0Var, List<? extends a0> parameterTypes, List<kotlin.reflect.jvm.internal.impl.name.f> list, a0 returnType, g builtIns) {
        kotlin.reflect.jvm.internal.impl.name.f fVar;
        r.e(parameterTypes, "parameterTypes");
        r.e(returnType, "returnType");
        r.e(builtIns, "builtIns");
        int i = 0;
        ArrayList arrayList = new ArrayList(parameterTypes.size() + (a0Var != null ? 1 : 0) + 1);
        kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList, a0Var == null ? null : TypeUtilsKt.a(a0Var));
        for (Object obj : parameterTypes) {
            int i2 = i + 1;
            if (i < 0) {
                s.t();
                throw null;
            }
            a0 a0VarR = (a0) obj;
            if (list == null || (fVar = list.get(i)) == null || fVar.h()) {
                fVar = null;
            }
            if (fVar != null) {
                kotlin.reflect.jvm.internal.impl.name.c cVar = h.a.r;
                kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(Constant.PROTOCOL_WEBVIEW_NAME);
                String strB = fVar.b();
                r.d(strB, "name.asString()");
                a0VarR = TypeUtilsKt.r(a0VarR, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.a(CollectionsKt___CollectionsKt.w0(a0VarR.getAnnotations(), new BuiltInAnnotationDescriptor(builtIns, cVar, n0.e(l.a(fVarG, new t(strB)))))));
            }
            arrayList.add(TypeUtilsKt.a(a0VarR));
            i = i2;
        }
        arrayList.add(TypeUtilsKt.a(returnType));
        return arrayList;
    }

    public static final FunctionClassKind f(k kVar) {
        r.e(kVar, "<this>");
        if ((kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && g.z0(kVar)) {
            return g(DescriptorUtilsKt.j(kVar));
        }
        return null;
    }

    private static final FunctionClassKind g(kotlin.reflect.jvm.internal.impl.name.d dVar) {
        if (!dVar.f() || dVar.e()) {
            return null;
        }
        FunctionClassKind.a aVar = FunctionClassKind.Companion;
        String strB = dVar.i().b();
        r.d(strB, "shortName().asString()");
        kotlin.reflect.jvm.internal.impl.name.c cVarE = dVar.l().e();
        r.d(cVarE, "toSafe().parent()");
        return aVar.b(strB, cVarE);
    }

    public static final a0 h(a0 a0Var) {
        r.e(a0Var, "<this>");
        m(a0Var);
        if (p(a0Var)) {
            return ((s0) s.c0(a0Var.H0())).getType();
        }
        return null;
    }

    public static final a0 i(a0 a0Var) {
        r.e(a0Var, "<this>");
        m(a0Var);
        a0 type = ((s0) s.o0(a0Var.H0())).getType();
        r.d(type, "arguments.last().type");
        return type;
    }

    public static final List<s0> j(a0 a0Var) {
        r.e(a0Var, "<this>");
        m(a0Var);
        List<s0> listH0 = a0Var.H0();
        return listH0.subList(k(a0Var) ? 1 : 0, listH0.size() - 1);
    }

    public static final boolean k(a0 a0Var) {
        r.e(a0Var, "<this>");
        return m(a0Var) && p(a0Var);
    }

    public static final boolean l(k kVar) {
        r.e(kVar, "<this>");
        FunctionClassKind functionClassKindF = f(kVar);
        return functionClassKindF == FunctionClassKind.Function || functionClassKindF == FunctionClassKind.SuspendFunction;
    }

    public static final boolean m(a0 a0Var) {
        r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = a0Var.I0().u();
        return fVarU != null && l(fVarU);
    }

    public static final boolean n(a0 a0Var) {
        r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = a0Var.I0().u();
        return (fVarU == null ? null : f(fVarU)) == FunctionClassKind.Function;
    }

    public static final boolean o(a0 a0Var) {
        r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = a0Var.I0().u();
        return (fVarU == null ? null : f(fVarU)) == FunctionClassKind.SuspendFunction;
    }

    private static final boolean p(a0 a0Var) {
        return a0Var.getAnnotations().d(h.a.q) != null;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e q(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, g builtIns) {
        r.e(eVar, "<this>");
        r.e(builtIns, "builtIns");
        kotlin.reflect.jvm.internal.impl.name.c cVar = h.a.q;
        return eVar.h(cVar) ? eVar : kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.a(CollectionsKt___CollectionsKt.w0(eVar, new BuiltInAnnotationDescriptor(builtIns, cVar, o0.h())));
    }
}
