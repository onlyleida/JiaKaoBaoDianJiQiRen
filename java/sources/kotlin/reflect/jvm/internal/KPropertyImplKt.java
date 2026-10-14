package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerImpl;
import kotlin.reflect.jvm.internal.calls.InternalUnderlyingValOfInlineClass;
import kotlin.reflect.jvm.internal.calls.ThrowingCaller;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\t\u001a\u00020\b*\u00020\nH\u0002\"\"\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u000b"}, d2 = {"boundReceiver", "", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "getBoundReceiver", "(Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;)Ljava/lang/Object;", "computeCallerForAccessor", "Lkotlin/reflect/jvm/internal/calls/Caller;", "isGetter", "", "isJvmFieldPropertyInCompanionObject", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class KPropertyImplKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:13:0x004c  */
    public static final Caller<?> c(final KPropertyImpl.a<?, ?> aVar, final boolean z) {
        JvmFunctionSignature.c b;
        Method b2;
        Caller aVar2;
        JvmProtoBuf.JvmMethodSignature setter;
        Method methodF;
        if (KDeclarationContainerImpl.c.a().matches(aVar.x().getI())) {
            return ThrowingCaller.f14761a;
        }
        final KPropertyImplKt$computeCallerForAccessor$1 kPropertyImplKt$computeCallerForAccessor$1 = new KPropertyImplKt$computeCallerForAccessor$1(aVar);
        final KPropertyImplKt$computeCallerForAccessor$2 kPropertyImplKt$computeCallerForAccessor$2 = new KPropertyImplKt$computeCallerForAccessor$2(aVar);
        Function1<Field, CallerImpl<? extends Field>> function1 = new Function1<Field, CallerImpl<? extends Field>>() { // from class: kotlin.reflect.jvm.internal.KPropertyImplKt$computeCallerForAccessor$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CallerImpl<Field> invoke(Field field) {
                kotlin.jvm.internal.r.e(field, "field");
                if (KPropertyImplKt.e(aVar.x().w()) || !Modifier.isStatic(field.getModifiers())) {
                    if (z) {
                        return aVar.v() ? new CallerImpl.f.a(field, KPropertyImplKt.d(aVar)) : new CallerImpl.f.c(field);
                    }
                    return aVar.v() ? new CallerImpl.g.a(field, kPropertyImplKt$computeCallerForAccessor$2.invoke2(), KPropertyImplKt.d(aVar)) : new CallerImpl.g.c(field, kPropertyImplKt$computeCallerForAccessor$2.invoke2());
                }
                if (!kPropertyImplKt$computeCallerForAccessor$1.invoke2()) {
                    return z ? new CallerImpl.f.e(field) : new CallerImpl.g.e(field, kPropertyImplKt$computeCallerForAccessor$2.invoke2());
                }
                if (z) {
                    return aVar.v() ? new CallerImpl.f.b(field) : new CallerImpl.f.d(field);
                }
                return aVar.v() ? new CallerImpl.g.b(field, kPropertyImplKt$computeCallerForAccessor$2.invoke2()) : new CallerImpl.g.d(field, kPropertyImplKt$computeCallerForAccessor$2.invoke2());
            }
        };
        JvmPropertySignature jvmPropertySignatureF = RuntimeTypeMapper.b.f(aVar.x().w());
        if (jvmPropertySignatureF instanceof JvmPropertySignature.c) {
            JvmPropertySignature.c cVar = (JvmPropertySignature.c) jvmPropertySignatureF;
            JvmProtoBuf.JvmPropertySignature f14765d = cVar.getF14765d();
            if (z) {
                if (f14765d.hasGetter()) {
                    setter = f14765d.getGetter();
                } else {
                    setter = null;
                }
            } else if (f14765d.hasSetter()) {
                setter = f14765d.getSetter();
            } else {
                setter = null;
            }
            Method methodQ = setter != null ? aVar.x().getF14701h().q(cVar.getF14766e().getString(setter.getName()), cVar.getF14766e().getString(setter.getDesc())) : null;
            if (methodQ == null) {
                if (kotlin.reflect.jvm.internal.impl.resolve.d.d(aVar.x().w()) && kotlin.jvm.internal.r.a(aVar.x().w().getVisibility(), kotlin.reflect.jvm.internal.impl.descriptors.r.f14974d)) {
                    Class<?> clsH = kotlin.reflect.jvm.internal.calls.f.h(aVar.x().w().b());
                    if (clsH == null || (methodF = kotlin.reflect.jvm.internal.calls.f.f(clsH, aVar.x().w())) == null) {
                        throw new KotlinReflectionInternalError("Underlying property of inline class " + aVar.x() + " should have a field");
                    }
                    aVar2 = aVar.v() ? new InternalUnderlyingValOfInlineClass.a(methodF, d(aVar)) : new InternalUnderlyingValOfInlineClass.b(methodF);
                } else {
                    Field fieldB = aVar.x().B();
                    if (fieldB == null) {
                        throw new KotlinReflectionInternalError("No accessors or field is found for property " + aVar.x());
                    }
                    aVar2 = function1.invoke(fieldB);
                }
            } else if (!Modifier.isStatic(methodQ.getModifiers())) {
                aVar2 = aVar.v() ? new CallerImpl.h.a(methodQ, d(aVar)) : new CallerImpl.h.d(methodQ);
            } else if (kPropertyImplKt$computeCallerForAccessor$1.invoke2()) {
                aVar2 = aVar.v() ? new CallerImpl.h.b(methodQ) : new CallerImpl.h.e(methodQ);
            } else {
                aVar2 = aVar.v() ? new CallerImpl.h.c(methodQ, d(aVar)) : new CallerImpl.h.f(methodQ);
            }
        } else if (jvmPropertySignatureF instanceof JvmPropertySignature.a) {
            aVar2 = function1.invoke(((JvmPropertySignature.a) jvmPropertySignatureF).getF14762a());
        } else {
            if (!(jvmPropertySignatureF instanceof JvmPropertySignature.b)) {
                if (!(jvmPropertySignatureF instanceof JvmPropertySignature.d)) {
                    throw new NoWhenBranchMatchedException();
                }
                if (z) {
                    b = ((JvmPropertySignature.d) jvmPropertySignatureF).getF14768a();
                } else {
                    b = ((JvmPropertySignature.d) jvmPropertySignatureF).getB();
                    if (b == null) {
                        throw new KotlinReflectionInternalError("No setter found for property " + aVar.x());
                    }
                }
                Method methodQ2 = aVar.x().getF14701h().q(b.c(), b.b());
                if (methodQ2 != null) {
                    Modifier.isStatic(methodQ2.getModifiers());
                    return aVar.v() ? new CallerImpl.h.a(methodQ2, d(aVar)) : new CallerImpl.h.d(methodQ2);
                }
                throw new KotlinReflectionInternalError("No accessor found for property " + aVar.x());
            }
            if (z) {
                b2 = ((JvmPropertySignature.b) jvmPropertySignatureF).getF14763a();
            } else {
                JvmPropertySignature.b bVar = (JvmPropertySignature.b) jvmPropertySignatureF;
                b2 = bVar.getB();
                if (b2 == null) {
                    throw new KotlinReflectionInternalError("No source found for setter of Java method property: " + bVar.getF14763a());
                }
            }
            aVar2 = aVar.v() ? new CallerImpl.h.a(b2, d(aVar)) : new CallerImpl.h.d(b2);
        }
        return kotlin.reflect.jvm.internal.calls.f.c(aVar2, aVar.w(), false, 2, null);
    }

    public static final Object d(KPropertyImpl.a<?, ?> boundReceiver) {
        kotlin.jvm.internal.r.e(boundReceiver, "$this$boundReceiver");
        return boundReceiver.x().x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(j0 j0Var) {
        kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration = j0Var.b();
        kotlin.jvm.internal.r.d(containingDeclaration, "containingDeclaration");
        if (!kotlin.reflect.jvm.internal.impl.resolve.c.x(containingDeclaration)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = containingDeclaration.b();
        return !(kotlin.reflect.jvm.internal.impl.resolve.c.C(kVarB) || kotlin.reflect.jvm.internal.impl.resolve.c.t(kVarB)) || ((j0Var instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f) && kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f(((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f) j0Var).c0()));
    }
}
