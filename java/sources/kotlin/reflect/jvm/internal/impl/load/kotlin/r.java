package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class r {
    private static final void a(StringBuilder sb, a0 a0Var) {
        sb.append(g(a0Var));
    }

    public static final String b(kotlin.reflect.jvm.internal.impl.descriptors.u uVar, boolean z, boolean z2) {
        String strB;
        kotlin.jvm.internal.r.e(uVar, "<this>");
        StringBuilder sb = new StringBuilder();
        if (z2) {
            if (uVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.j) {
                strB = "<init>";
            } else {
                strB = uVar.getName().b();
                kotlin.jvm.internal.r.d(strB, "name.asString()");
            }
            sb.append(strB);
        }
        sb.append("(");
        m0 m0VarO = uVar.O();
        if (m0VarO != null) {
            a0 type = m0VarO.getType();
            kotlin.jvm.internal.r.d(type, "it.type");
            a(sb, type);
        }
        Iterator<v0> it = uVar.f().iterator();
        while (it.hasNext()) {
            a0 type2 = it.next().getType();
            kotlin.jvm.internal.r.d(type2, "parameter.type");
            a(sb, type2);
        }
        sb.append(")");
        if (z) {
            if (b.c(uVar)) {
                sb.append(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            } else {
                a0 returnType = uVar.getReturnType();
                kotlin.jvm.internal.r.c(returnType);
                kotlin.jvm.internal.r.d(returnType, "returnType!!");
                a(sb, returnType);
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static /* synthetic */ String c(kotlin.reflect.jvm.internal.impl.descriptors.u uVar, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return b(uVar, z, z2);
    }

    public static final String d(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        kotlin.jvm.internal.r.e(aVar, "<this>");
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.f15194a;
        if (kotlin.reflect.jvm.internal.impl.resolve.c.E(aVar)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = aVar.b();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB : null;
        if (dVar == null || dVar.getName().h()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarA = aVar.a();
        n0 n0Var = aVarA instanceof n0 ? (n0) aVarA : null;
        if (n0Var == null) {
            return null;
        }
        return q.a(signatureBuildingComponents, dVar, c(n0Var, false, false, 3, null));
    }

    public static final boolean e(kotlin.reflect.jvm.internal.impl.descriptors.a f2) {
        kotlin.reflect.jvm.internal.impl.descriptors.u uVarK;
        kotlin.jvm.internal.r.e(f2, "f");
        if (!(f2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.u)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.u uVar = (kotlin.reflect.jvm.internal.impl.descriptors.u) f2;
        if (!kotlin.jvm.internal.r.a(uVar.getName().b(), "remove") || uVar.f().size() != 1 || SpecialBuiltinMembers.h((CallableMemberDescriptor) f2)) {
            return false;
        }
        List<v0> listF = uVar.a().f();
        kotlin.jvm.internal.r.d(listF, "f.original.valueParameters");
        a0 type = ((v0) kotlin.collections.s.C0(listF)).getType();
        kotlin.jvm.internal.r.d(type, "f.original.valueParameters.single().type");
        h hVarG = g(type);
        h.d dVar = hVarG instanceof h.d ? (h.d) hVarG : null;
        if ((dVar != null ? dVar.i() : null) != JvmPrimitiveType.INT || (uVarK = BuiltinMethodsWithSpecialGenericSignature.k(uVar)) == null) {
            return false;
        }
        List<v0> listF2 = uVarK.a().f();
        kotlin.jvm.internal.r.d(listF2, "overridden.original.valueParameters");
        a0 type2 = ((v0) kotlin.collections.s.C0(listF2)).getType();
        kotlin.jvm.internal.r.d(type2, "overridden.original.valueParameters.single().type");
        h hVarG2 = g(type2);
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = uVarK.b();
        kotlin.jvm.internal.r.d(kVarB, "overridden.containingDeclaration");
        return kotlin.jvm.internal.r.a(DescriptorUtilsKt.j(kVarB), kotlin.reflect.jvm.internal.impl.builtins.h.a.K.j()) && (hVarG2 instanceof h.c) && kotlin.jvm.internal.r.a(((h.c) hVarG2).i(), "java/lang/Object");
    }

    public static final String f(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        kotlin.jvm.internal.r.e(dVar, "<this>");
        kotlin.reflect.jvm.internal.impl.builtins.jvm.c cVar = kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a;
        kotlin.reflect.jvm.internal.impl.name.d dVarJ = DescriptorUtilsKt.i(dVar).j();
        kotlin.jvm.internal.r.d(dVarJ, "fqNameSafe.toUnsafe()");
        kotlin.reflect.jvm.internal.impl.name.b bVarO = cVar.o(dVarJ);
        if (bVarO == null) {
            return b.b(dVar, null, 2, null);
        }
        String strF = kotlin.reflect.jvm.internal.impl.resolve.jvm.d.b(bVarO).f();
        kotlin.jvm.internal.r.d(strF, "byClassId(it).internalName");
        return strF;
    }

    public static final h g(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        return (h) b.e(a0Var, j.f15232a, v.m, u.f15238a, null, null, 32, null);
    }
}
