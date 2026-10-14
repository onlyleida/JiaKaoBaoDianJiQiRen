package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.w0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.q;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0000\u001a6\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\n0\t\"\n\b\u0000\u0010\n*\u0004\u0018\u00010\u000b*\b\u0012\u0004\u0012\u0002H\n0\t2\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0007\u001a\u00020\u0002H\u0000\u001a\u0018\u0010\u0011\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0007\u001a\u00020\u0002H\u0000\u001a\f\u0010\u0012\u001a\u00020\r*\u00020\u0002H\u0002\u001a\u0014\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010*\u0004\u0018\u00010\u0014H\u0000\u001a\u0012\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010*\u00020\u0001H\u0000\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0015"}, d2 = {"expectedReceiverType", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "getExpectedReceiverType", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;)Lorg/jetbrains/kotlin/types/KotlinType;", "coerceToExpectedReceiverType", "", "descriptor", "createInlineClassAwareCallerIfNeeded", "Lkotlin/reflect/jvm/internal/calls/Caller;", "M", "Ljava/lang/reflect/Member;", "isDefault", "", "getBoxMethod", "Ljava/lang/reflect/Method;", "Ljava/lang/Class;", "getUnboxMethod", "hasInlineClassReceiver", "toInlineClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class f {
    public static final Object a(Object obj, CallableMemberDescriptor descriptor) {
        a0 a0VarE;
        Class<?> clsI;
        Method methodF;
        r.e(descriptor, "descriptor");
        return (((descriptor instanceof j0) && kotlin.reflect.jvm.internal.impl.resolve.d.d((w0) descriptor)) || (a0VarE = e(descriptor)) == null || (clsI = i(a0VarE)) == null || (methodF = f(clsI, descriptor)) == null) ? obj : methodF.invoke(obj, new Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0064  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends Member> Caller<M> b(Caller<? extends M> createInlineClassAwareCallerIfNeeded, CallableMemberDescriptor descriptor, boolean z) {
        boolean z2;
        a0 returnType;
        r.e(createInlineClassAwareCallerIfNeeded, "$this$createInlineClassAwareCallerIfNeeded");
        r.e(descriptor, "descriptor");
        boolean z3 = false;
        if (kotlin.reflect.jvm.internal.impl.resolve.d.a(descriptor)) {
            z3 = true;
        } else {
            List<v0> listF = descriptor.f();
            r.d(listF, "descriptor.valueParameters");
            if (!(listF instanceof Collection) || !listF.isEmpty()) {
                Iterator<T> it = listF.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z2 = false;
                        break;
                    }
                    v0 it2 = (v0) it.next();
                    r.d(it2, "it");
                    a0 type = it2.getType();
                    r.d(type, "it.type");
                    if (kotlin.reflect.jvm.internal.impl.resolve.d.c(type)) {
                        z2 = true;
                        break;
                    }
                }
            } else {
                z2 = false;
                break;
            }
            if (z2 || (((returnType = descriptor.getReturnType()) != null && kotlin.reflect.jvm.internal.impl.resolve.d.c(returnType)) || (!(createInlineClassAwareCallerIfNeeded instanceof BoundCaller) && g(descriptor)))) {
                z3 = true;
            }
        }
        return z3 ? new InlineClassAwareCaller(descriptor, createInlineClassAwareCallerIfNeeded, z) : createInlineClassAwareCallerIfNeeded;
    }

    public static /* synthetic */ Caller c(Caller caller, CallableMemberDescriptor callableMemberDescriptor, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return b(caller, callableMemberDescriptor, z);
    }

    public static final Method d(Class<?> getBoxMethod, CallableMemberDescriptor descriptor) {
        r.e(getBoxMethod, "$this$getBoxMethod");
        r.e(descriptor, "descriptor");
        try {
            Method declaredMethod = getBoxMethod.getDeclaredMethod("box-impl", f(getBoxMethod, descriptor).getReturnType());
            r.d(declaredMethod, "getDeclaredMethod(\"box\" …d(descriptor).returnType)");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new KotlinReflectionInternalError("No box method found in inline class: " + getBoxMethod + " (calling " + descriptor + ')');
        }
    }

    private static final a0 e(CallableMemberDescriptor callableMemberDescriptor) {
        m0 m0VarO = callableMemberDescriptor.O();
        m0 m0VarK = callableMemberDescriptor.K();
        if (m0VarO != null) {
            return m0VarO.getType();
        }
        if (m0VarK == null) {
            return null;
        }
        if (callableMemberDescriptor instanceof j) {
            return m0VarK.getType();
        }
        k kVarB = callableMemberDescriptor.b();
        if (!(kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            kVarB = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB;
        if (dVar != null) {
            return dVar.n();
        }
        return null;
    }

    public static final Method f(Class<?> getUnboxMethod, CallableMemberDescriptor descriptor) {
        r.e(getUnboxMethod, "$this$getUnboxMethod");
        r.e(descriptor, "descriptor");
        try {
            Method declaredMethod = getUnboxMethod.getDeclaredMethod("unbox-impl", new Class[0]);
            r.d(declaredMethod, "getDeclaredMethod(\"unbox…FOR_INLINE_CLASS_MEMBERS)");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new KotlinReflectionInternalError("No unbox method found in inline class: " + getUnboxMethod + " (calling " + descriptor + ')');
        }
    }

    private static final boolean g(CallableMemberDescriptor callableMemberDescriptor) {
        a0 a0VarE = e(callableMemberDescriptor);
        return a0VarE != null && kotlin.reflect.jvm.internal.impl.resolve.d.c(a0VarE);
    }

    public static final Class<?> h(k kVar) {
        if (!(kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) || !kotlin.reflect.jvm.internal.impl.resolve.d.b(kVar)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) kVar;
        Class<?> clsP = q.p(dVar);
        if (clsP != null) {
            return clsP;
        }
        throw new KotlinReflectionInternalError("Class object for the class " + dVar.getName() + " cannot be found (classId=" + DescriptorUtilsKt.h((kotlin.reflect.jvm.internal.impl.descriptors.f) kVar) + ')');
    }

    public static final Class<?> i(a0 toInlineClass) {
        r.e(toInlineClass, "$this$toInlineClass");
        return h(toInlineClass.I0().u());
    }
}
