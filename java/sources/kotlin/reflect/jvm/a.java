package kotlin.reflect.jvm;

import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u001c\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\"\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0003\u0010\b¨\u0006\t"}, d2 = {"jvmErasure", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/KClassifier;", "getJvmErasure", "(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KClass;", "Lkotlin/reflect/KType;", "getJvmErasure$annotations", "(Lkotlin/reflect/KType;)V", "(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class a {
    public static final KClass<?> a(KClassifier jvmErasure) {
        Object obj;
        KClass<?> kClassB;
        r.e(jvmErasure, "$this$jvmErasure");
        if (jvmErasure instanceof KClass) {
            return (KClass) jvmErasure;
        }
        if (!(jvmErasure instanceof KTypeParameter)) {
            throw new KotlinReflectionInternalError("Cannot calculate JVM erasure for type: " + jvmErasure);
        }
        List<KType> upperBounds = ((KTypeParameter) jvmErasure).getUpperBounds();
        Iterator<T> it = upperBounds.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            KType kType = (KType) next;
            Objects.requireNonNull(kType, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
            f fVarC = ((KTypeImpl) kType).getF14730d().I0().u();
            d dVar = (d) (fVarC instanceof d ? fVarC : null);
            if ((dVar == null || dVar.g() == ClassKind.INTERFACE || dVar.g() == ClassKind.ANNOTATION_CLASS) ? false : true) {
                obj = next;
                break;
            }
        }
        KType kType2 = (KType) obj;
        if (kType2 == null) {
            kType2 = (KType) s.e0(upperBounds);
        }
        return (kType2 == null || (kClassB = b(kType2)) == null) ? v.b(Object.class) : kClassB;
    }

    public static final KClass<?> b(KType jvmErasure) {
        KClass<?> kClassA;
        r.e(jvmErasure, "$this$jvmErasure");
        KClassifier f14650a = jvmErasure.getF14650a();
        if (f14650a != null && (kClassA = a(f14650a)) != null) {
            return kClassA;
        }
        throw new KotlinReflectionInternalError("Cannot calculate JVM erasure for type: " + jvmErasure);
    }
}
