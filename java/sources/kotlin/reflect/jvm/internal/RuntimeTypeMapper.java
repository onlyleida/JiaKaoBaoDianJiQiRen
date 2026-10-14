package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: renamed from: kotlin.reflect.jvm.internal.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u00042\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0006\u0012\u0002\b\u00030\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u001c"}, d2 = {"Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;", "", "()V", "JAVA_LANG_VOID", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "primitiveType", "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;", "Ljava/lang/Class;", "getPrimitiveType", "(Ljava/lang/Class;)Lorg/jetbrains/kotlin/builtins/PrimitiveType;", "isKnownBuiltInFunction", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "mapJvmClassToKotlinClassId", "klass", "mapJvmFunctionSignature", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;", "mapName", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "mapPropertySignature", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "possiblyOverriddenProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "mapSignature", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "possiblySubstitutedFunction", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class RuntimeTypeMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.b f15759a;
    public static final RuntimeTypeMapper b = new RuntimeTypeMapper();

    static {
        kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("java.lang.Void"));
        kotlin.jvm.internal.r.d(bVarM, "ClassId.topLevel(FqName(\"java.lang.Void\"))");
        f15759a = bVarM;
    }

    private RuntimeTypeMapper() {
    }

    private final PrimitiveType a(Class<?> cls) {
        if (!cls.isPrimitive()) {
            return null;
        }
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.get(cls.getSimpleName());
        kotlin.jvm.internal.r.d(jvmPrimitiveType, "JvmPrimitiveType.get(simpleName)");
        return jvmPrimitiveType.getPrimitiveType();
    }

    private final boolean b(u uVar) {
        if (kotlin.reflect.jvm.internal.impl.resolve.b.m(uVar) || kotlin.reflect.jvm.internal.impl.resolve.b.n(uVar)) {
            return true;
        }
        return kotlin.jvm.internal.r.a(uVar.getName(), kotlin.reflect.jvm.internal.impl.builtins.jvm.a.f14835e.a()) && uVar.f().isEmpty();
    }

    private final JvmFunctionSignature.c d(u uVar) {
        return new JvmFunctionSignature.c(new kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.b(e(uVar), kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(uVar, false, false, 1, null)));
    }

    private final String e(CallableMemberDescriptor callableMemberDescriptor) {
        String strB = SpecialBuiltinMembers.b(callableMemberDescriptor);
        if (strB != null) {
            return strB;
        }
        if (callableMemberDescriptor instanceof k0) {
            String strB2 = DescriptorUtilsKt.o(callableMemberDescriptor).getName().b();
            kotlin.jvm.internal.r.d(strB2, "descriptor.propertyIfAccessor.name.asString()");
            return kotlin.reflect.jvm.internal.impl.load.java.q.a(strB2);
        }
        if (callableMemberDescriptor instanceof l0) {
            String strB3 = DescriptorUtilsKt.o(callableMemberDescriptor).getName().b();
            kotlin.jvm.internal.r.d(strB3, "descriptor.propertyIfAccessor.name.asString()");
            return kotlin.reflect.jvm.internal.impl.load.java.q.d(strB3);
        }
        String strB4 = callableMemberDescriptor.getName().b();
        kotlin.jvm.internal.r.d(strB4, "descriptor.name.asString()");
        return strB4;
    }

    public final kotlin.reflect.jvm.internal.impl.name.b c(Class<?> klass) {
        kotlin.jvm.internal.r.e(klass, "klass");
        if (klass.isArray()) {
            Class<?> componentType = klass.getComponentType();
            kotlin.jvm.internal.r.d(componentType, "klass.componentType");
            PrimitiveType primitiveTypeA = a(componentType);
            if (primitiveTypeA != null) {
                return new kotlin.reflect.jvm.internal.impl.name.b(kotlin.reflect.jvm.internal.impl.builtins.h.l, primitiveTypeA.getArrayTypeName());
            }
            kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.builtins.h.a.f14810h.l());
            kotlin.jvm.internal.r.d(bVarM, "ClassId.topLevel(Standar…s.FqNames.array.toSafe())");
            return bVarM;
        }
        if (kotlin.jvm.internal.r.a(klass, Void.TYPE)) {
            return f15759a;
        }
        PrimitiveType primitiveTypeA2 = a(klass);
        if (primitiveTypeA2 != null) {
            return new kotlin.reflect.jvm.internal.impl.name.b(kotlin.reflect.jvm.internal.impl.builtins.h.l, primitiveTypeA2.getTypeName());
        }
        kotlin.reflect.jvm.internal.impl.name.b bVarA = ReflectClassUtilKt.a(klass);
        if (!bVarA.k()) {
            kotlin.reflect.jvm.internal.impl.builtins.jvm.c cVar = kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a;
            kotlin.reflect.jvm.internal.impl.name.c cVarB = bVarA.b();
            kotlin.jvm.internal.r.d(cVarB, "classId.asSingleFqName()");
            kotlin.reflect.jvm.internal.impl.name.b bVarN = cVar.n(cVarB);
            if (bVarN != null) {
                return bVarN;
            }
        }
        return bVarA;
    }

    public final JvmPropertySignature f(j0 possiblyOverriddenProperty) {
        kotlin.jvm.internal.r.e(possiblyOverriddenProperty, "possiblyOverriddenProperty");
        CallableMemberDescriptor callableMemberDescriptorL = kotlin.reflect.jvm.internal.impl.resolve.c.L(possiblyOverriddenProperty);
        kotlin.jvm.internal.r.d(callableMemberDescriptorL, "DescriptorUtils.unwrapFa…ssiblyOverriddenProperty)");
        j0 j0VarA = ((j0) callableMemberDescriptorL).a();
        kotlin.jvm.internal.r.d(j0VarA, "DescriptorUtils.unwrapFa…rriddenProperty).original");
        if (j0VarA instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f fVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f) j0VarA;
            ProtoBuf$Property protoBuf$PropertyX0 = fVar.c0();
            GeneratedMessageLite.e<ProtoBuf$Property, JvmProtoBuf.JvmPropertySignature> eVar = JvmProtoBuf.f15353d;
            kotlin.jvm.internal.r.d(eVar, "JvmProtoBuf.propertySignature");
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) kotlin.reflect.jvm.internal.impl.metadata.c.e.a(protoBuf$PropertyX0, eVar);
            if (jvmPropertySignature != null) {
                return new JvmPropertySignature.c(j0VarA, protoBuf$PropertyX0, jvmPropertySignature, fVar.H(), fVar.D());
            }
        } else if (j0VarA instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.e) {
            o0 o0VarO = ((kotlin.reflect.jvm.internal.impl.load.java.descriptors.e) j0VarA).o();
            if (!(o0VarO instanceof kotlin.reflect.jvm.internal.impl.load.java.w.a)) {
                o0VarO = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.w.a aVar = (kotlin.reflect.jvm.internal.impl.load.java.w.a) o0VarO;
            kotlin.reflect.jvm.internal.impl.load.java.structure.l lVarC = aVar != null ? aVar.c() : null;
            if (lVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.n) {
                return new JvmPropertySignature.a(((kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.n) lVarC).S());
            }
            if (!(lVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.q)) {
                throw new KotlinReflectionInternalError("Incorrect resolution sequence for Java field " + j0VarA + " (source = " + lVarC + ')');
            }
            Method methodS = ((kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.q) lVarC).S();
            l0 setter = j0VarA.getSetter();
            o0 o0VarO2 = setter != null ? setter.o() : null;
            if (!(o0VarO2 instanceof kotlin.reflect.jvm.internal.impl.load.java.w.a)) {
                o0VarO2 = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.w.a aVar2 = (kotlin.reflect.jvm.internal.impl.load.java.w.a) o0VarO2;
            kotlin.reflect.jvm.internal.impl.load.java.structure.l lVarC2 = aVar2 != null ? aVar2.c() : null;
            if (!(lVarC2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.q)) {
                lVarC2 = null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.q qVar = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.q) lVarC2;
            return new JvmPropertySignature.b(methodS, qVar != null ? qVar.S() : null);
        }
        k0 getter = j0VarA.getGetter();
        kotlin.jvm.internal.r.c(getter);
        JvmFunctionSignature.c cVarD = d(getter);
        l0 setter2 = j0VarA.getSetter();
        return new JvmPropertySignature.d(cVarD, setter2 != null ? d(setter2) : null);
    }

    public final JvmFunctionSignature g(u possiblySubstitutedFunction) {
        Method methodS;
        kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.b bVarB;
        kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.b bVarE;
        kotlin.jvm.internal.r.e(possiblySubstitutedFunction, "possiblySubstitutedFunction");
        CallableMemberDescriptor callableMemberDescriptorL = kotlin.reflect.jvm.internal.impl.resolve.c.L(possiblySubstitutedFunction);
        kotlin.jvm.internal.r.d(callableMemberDescriptorL, "DescriptorUtils.unwrapFa…siblySubstitutedFunction)");
        u uVarA = ((u) callableMemberDescriptorL).a();
        kotlin.jvm.internal.r.d(uVarA, "DescriptorUtils.unwrapFa…titutedFunction).original");
        if (uVarA instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b bVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b) uVarA;
            kotlin.reflect.jvm.internal.impl.protobuf.n nVarC0 = bVar.c0();
            if ((nVarC0 instanceof ProtoBuf$Function) && (bVarE = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f15380a.e((ProtoBuf$Function) nVarC0, bVar.H(), bVar.D())) != null) {
                return new JvmFunctionSignature.c(bVarE);
            }
            if (!(nVarC0 instanceof ProtoBuf$Constructor) || (bVarB = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f15380a.b((ProtoBuf$Constructor) nVarC0, bVar.H(), bVar.D())) == null) {
                return d(uVarA);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = possiblySubstitutedFunction.b();
            kotlin.jvm.internal.r.d(kVarB, "possiblySubstitutedFunction.containingDeclaration");
            return kotlin.reflect.jvm.internal.impl.resolve.d.b(kVarB) ? new JvmFunctionSignature.c(bVarB) : new JvmFunctionSignature.b(bVarB);
        }
        if (uVarA instanceof JavaMethodDescriptor) {
            o0 o0VarO = ((JavaMethodDescriptor) uVarA).o();
            if (!(o0VarO instanceof kotlin.reflect.jvm.internal.impl.load.java.w.a)) {
                o0VarO = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.w.a aVar = (kotlin.reflect.jvm.internal.impl.load.java.w.a) o0VarO;
            kotlin.reflect.jvm.internal.impl.load.java.structure.l lVarC = aVar != null ? aVar.c() : null;
            kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.q qVar = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.q) (lVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.q ? lVarC : null);
            if (qVar != null && (methodS = qVar.S()) != null) {
                return new JvmFunctionSignature.a(methodS);
            }
            throw new KotlinReflectionInternalError("Incorrect resolution sequence for Java method " + uVarA);
        }
        if (!(uVarA instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.b)) {
            if (b(uVarA)) {
                return d(uVarA);
            }
            throw new KotlinReflectionInternalError("Unknown origin of " + uVarA + " (" + uVarA.getClass() + ')');
        }
        o0 o0VarO2 = ((kotlin.reflect.jvm.internal.impl.load.java.descriptors.b) uVarA).o();
        if (!(o0VarO2 instanceof kotlin.reflect.jvm.internal.impl.load.java.w.a)) {
            o0VarO2 = null;
        }
        kotlin.reflect.jvm.internal.impl.load.java.w.a aVar2 = (kotlin.reflect.jvm.internal.impl.load.java.w.a) o0VarO2;
        kotlin.reflect.jvm.internal.impl.load.java.structure.l lVarC2 = aVar2 != null ? aVar2.c() : null;
        if (lVarC2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.k) {
            return new JvmFunctionSignature.JavaConstructor(((kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.k) lVarC2).S());
        }
        if (lVarC2 instanceof ReflectJavaClass) {
            ReflectJavaClass reflectJavaClass = (ReflectJavaClass) lVarC2;
            if (reflectJavaClass.o()) {
                return new JvmFunctionSignature.FakeJavaAnnotationConstructor(reflectJavaClass.getElement());
            }
        }
        throw new KotlinReflectionInternalError("Incorrect resolution sequence for Java constructor " + uVarA + " (" + lVarC2 + ')');
    }
}
