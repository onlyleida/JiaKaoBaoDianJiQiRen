package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.functions.Function3;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.y0;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    public static final String a(kotlin.reflect.jvm.internal.impl.descriptors.d klass, t<?> typeMappingConfiguration) {
        kotlin.jvm.internal.r.e(klass, "klass");
        kotlin.jvm.internal.r.e(typeMappingConfiguration, "typeMappingConfiguration");
        String strB = typeMappingConfiguration.b(klass);
        if (strB != null) {
            return strB;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = klass.b();
        kotlin.jvm.internal.r.d(kVarB, "klass.containingDeclaration");
        String strD = kotlin.reflect.jvm.internal.impl.name.h.c(klass.getName()).d();
        kotlin.jvm.internal.r.d(strD, "safeIdentifier(klass.name).identifier");
        if (kVarB instanceof b0) {
            kotlin.reflect.jvm.internal.impl.name.c cVarE = ((b0) kVarB).e();
            if (cVarE.d()) {
                return strD;
            }
            StringBuilder sb = new StringBuilder();
            String strB2 = cVarE.b();
            kotlin.jvm.internal.r.d(strB2, "fqName.asString()");
            sb.append(kotlin.text.t.w(strB2, '.', '/', false, 4, null));
            sb.append('/');
            sb.append(strD);
            return sb.toString();
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB : null;
        if (dVar == null) {
            throw new IllegalArgumentException("Unexpected container: " + kVarB + " for " + klass);
        }
        String strC = typeMappingConfiguration.c(dVar);
        if (strC == null) {
            strC = a(dVar, typeMappingConfiguration);
        }
        return strC + '$' + strD;
    }

    public static /* synthetic */ String b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, t tVar, int i, Object obj) {
        if ((i & 2) != 0) {
            tVar = u.f15238a;
        }
        return a(dVar, tVar);
    }

    public static final boolean c(kotlin.reflect.jvm.internal.impl.descriptors.a descriptor) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        if (descriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.j) {
            return true;
        }
        a0 returnType = descriptor.getReturnType();
        kotlin.jvm.internal.r.c(returnType);
        if (kotlin.reflect.jvm.internal.impl.builtins.g.A0(returnType)) {
            a0 returnType2 = descriptor.getReturnType();
            kotlin.jvm.internal.r.c(returnType2);
            if (!y0.m(returnType2) && !(descriptor instanceof k0)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [T, java.lang.Object] */
    public static final <T> T d(a0 kotlinType, i<T> factory, v mode, t<? extends T> typeMappingConfiguration, f<T> fVar, Function3<? super a0, ? super T, ? super v, kotlin.v> writeGenericType) {
        T t;
        a0 a0Var;
        Object objD;
        kotlin.jvm.internal.r.e(kotlinType, "kotlinType");
        kotlin.jvm.internal.r.e(factory, "factory");
        kotlin.jvm.internal.r.e(mode, "mode");
        kotlin.jvm.internal.r.e(typeMappingConfiguration, "typeMappingConfiguration");
        kotlin.jvm.internal.r.e(writeGenericType, "writeGenericType");
        a0 a0VarD = typeMappingConfiguration.d(kotlinType);
        if (a0VarD != null) {
            return (T) d(a0VarD, factory, mode, typeMappingConfiguration, fVar, writeGenericType);
        }
        if (kotlin.reflect.jvm.internal.impl.builtins.f.o(kotlinType)) {
            return (T) d(kotlin.reflect.jvm.internal.impl.builtins.i.b(kotlinType, typeMappingConfiguration.e()), factory, mode, typeMappingConfiguration, fVar, writeGenericType);
        }
        kotlin.reflect.jvm.internal.impl.types.checker.p pVar = kotlin.reflect.jvm.internal.impl.types.checker.p.f15676a;
        Object objB = w.b(pVar, kotlinType, factory, mode);
        if (objB != null) {
            ?? r11 = (Object) w.a(factory, objB, mode.d());
            writeGenericType.invoke(kotlinType, r11, mode);
            return r11;
        }
        q0 q0VarI0 = kotlinType.I0();
        if (q0VarI0 instanceof IntersectionTypeConstructor) {
            IntersectionTypeConstructor intersectionTypeConstructor = (IntersectionTypeConstructor) q0VarI0;
            a0 a0VarG = intersectionTypeConstructor.g();
            if (a0VarG == null) {
                a0VarG = typeMappingConfiguration.g(intersectionTypeConstructor.a());
            }
            return (T) d(TypeUtilsKt.t(a0VarG), factory, mode, typeMappingConfiguration, fVar, writeGenericType);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = q0VarI0.u();
        if (fVarC == null) {
            throw new UnsupportedOperationException(kotlin.jvm.internal.r.m("no descriptor for type constructor of ", kotlinType));
        }
        if (kotlin.reflect.jvm.internal.impl.types.t.r(fVarC)) {
            T t2 = (T) factory.e("error/NonExistentClass");
            typeMappingConfiguration.f(kotlinType, (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
            if (fVar == null) {
                return t2;
            }
            fVar.c(t2);
            throw null;
        }
        boolean z = fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d;
        if (z && kotlin.reflect.jvm.internal.impl.builtins.g.c0(kotlinType)) {
            if (kotlinType.H0().size() != 1) {
                throw new UnsupportedOperationException("arrays must have one type argument");
            }
            s0 s0Var = kotlinType.H0().get(0);
            a0 type = s0Var.getType();
            kotlin.jvm.internal.r.d(type, "memberProjection.type");
            if (s0Var.c() == Variance.IN_VARIANCE) {
                objD = factory.e("java/lang/Object");
                if (fVar != null) {
                    fVar.b();
                    throw null;
                }
            } else {
                if (fVar != null) {
                    fVar.b();
                    throw null;
                }
                Variance varianceC = s0Var.c();
                kotlin.jvm.internal.r.d(varianceC, "memberProjection.projectionKind");
                objD = d(type, factory, mode.f(varianceC, true), typeMappingConfiguration, fVar, writeGenericType);
                if (fVar != null) {
                    fVar.a();
                    throw null;
                }
            }
            return (T) factory.a(kotlin.jvm.internal.r.m("[", factory.d(objD)));
        }
        if (!z) {
            if (!(fVarC instanceof t0)) {
                if ((fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.s0) && mode.b()) {
                    return (T) d(((kotlin.reflect.jvm.internal.impl.descriptors.s0) fVarC).F(), factory, mode, typeMappingConfiguration, fVar, writeGenericType);
                }
                throw new UnsupportedOperationException(kotlin.jvm.internal.r.m("Unknown type ", kotlinType));
            }
            T t3 = (T) d(TypeUtilsKt.i((t0) fVarC), factory, mode, typeMappingConfiguration, null, FunctionsKt.b());
            if (fVar == null) {
                return t3;
            }
            kotlin.reflect.jvm.internal.impl.name.f name = fVarC.getName();
            kotlin.jvm.internal.r.d(name, "descriptor.getName()");
            fVar.d(name, t3);
            throw null;
        }
        if (kotlin.reflect.jvm.internal.impl.resolve.d.b(fVarC) && !mode.c() && (a0Var = (a0) kotlin.reflect.jvm.internal.impl.types.u.a(pVar, kotlinType)) != null) {
            return (T) d(a0Var, factory, mode.g(), typeMappingConfiguration, fVar, writeGenericType);
        }
        if (mode.e() && kotlin.reflect.jvm.internal.impl.builtins.g.j0((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC)) {
            t = (Object) factory.f();
        } else {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = dVar.a();
            kotlin.jvm.internal.r.d(dVarA, "descriptor.original");
            T tA = typeMappingConfiguration.a(dVarA);
            if (tA == null) {
                if (dVar.g() == ClassKind.ENUM_ENTRY) {
                    dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) dVar.b();
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarA2 = dVar.a();
                kotlin.jvm.internal.r.d(dVarA2, "enumClassIfEnumEntry.original");
                t = (Object) factory.e(a(dVarA2, typeMappingConfiguration));
            } else {
                t = (Object) tA;
            }
        }
        writeGenericType.invoke(kotlinType, t, mode);
        return t;
    }

    public static /* synthetic */ Object e(a0 a0Var, i iVar, v vVar, t tVar, f fVar, Function3 function3, int i, Object obj) {
        if ((i & 32) != 0) {
            function3 = FunctionsKt.b();
        }
        return d(a0Var, iVar, vVar, tVar, fVar, function3);
    }
}
