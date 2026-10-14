package kotlin.jvm.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0017\u001a\u00020\u0013H\u0002J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\f\u0010\u0017\u001a\u00020\u0013*\u00020\u0006H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0011R\u001c\u0010\u0012\u001a\u00020\u0013*\u0006\u0012\u0002\b\u00030\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, d2 = {"Lkotlin/jvm/internal/TypeReference;", "Lkotlin/reflect/KType;", "classifier", "Lkotlin/reflect/KClassifier;", "arguments", "", "Lkotlin/reflect/KTypeProjection;", "isMarkedNullable", "", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "annotations", "", "getAnnotations", "()Ljava/util/List;", "getArguments", "getClassifier", "()Lkotlin/reflect/KClassifier;", "()Z", "arrayClassName", "", "Ljava/lang/Class;", "getArrayClassName", "(Ljava/lang/Class;)Ljava/lang/String;", "asString", "equals", "other", "", "hashCode", "", "toString", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
public final class TypeReference implements KType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KClassifier f14650a;
    private final List<KTypeProjection> b;
    private final boolean c;

    private final String f() {
        String strM;
        KClassifier f14650a = getF14650a();
        if (!(f14650a instanceof KClass)) {
            f14650a = null;
        }
        KClass kClass = (KClass) f14650a;
        Class<?> clsB = kClass != null ? kotlin.jvm.a.b(kClass) : null;
        if (clsB == null) {
            strM = getF14650a().toString();
        } else {
            strM = clsB.isArray() ? m(clsB) : clsB.getName();
        }
        return strM + (i().isEmpty() ? "" : CollectionsKt___CollectionsKt.m0(i(), ", ", "<", ">", 0, null, new Function1<KTypeProjection, CharSequence>() { // from class: kotlin.jvm.internal.TypeReference$asString$args$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(KTypeProjection it) {
                r.e(it, "it");
                return this.this$0.k(it);
            }
        }, 24, null)) + (getC() ? "?" : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String k(KTypeProjection kTypeProjection) {
        String strValueOf;
        if (kTypeProjection.d() == null) {
            return Marker.ANY_MARKER;
        }
        KType kTypeC = kTypeProjection.c();
        if (!(kTypeC instanceof TypeReference)) {
            kTypeC = null;
        }
        TypeReference typeReference = (TypeReference) kTypeC;
        if (typeReference == null || (strValueOf = typeReference.f()) == null) {
            strValueOf = String.valueOf(kTypeProjection.c());
        }
        KVariance kVarianceD = kTypeProjection.d();
        if (kVarianceD != null) {
            int i = c0.f14656a[kVarianceD.ordinal()];
            if (i == 1) {
                return strValueOf;
            }
            if (i == 2) {
                return "in " + strValueOf;
            }
            if (i == 3) {
                return "out " + strValueOf;
            }
        }
        throw new NoWhenBranchMatchedException();
    }

    private final String m(Class<?> cls) {
        if (r.a(cls, boolean[].class)) {
            return "kotlin.BooleanArray";
        }
        if (r.a(cls, char[].class)) {
            return "kotlin.CharArray";
        }
        if (r.a(cls, byte[].class)) {
            return "kotlin.ByteArray";
        }
        if (r.a(cls, short[].class)) {
            return "kotlin.ShortArray";
        }
        if (r.a(cls, int[].class)) {
            return "kotlin.IntArray";
        }
        if (r.a(cls, float[].class)) {
            return "kotlin.FloatArray";
        }
        if (r.a(cls, long[].class)) {
            return "kotlin.LongArray";
        }
        return r.a(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: c, reason: from getter */
    public KClassifier getF14650a() {
        return this.f14650a;
    }

    public boolean equals(Object other) {
        if (other instanceof TypeReference) {
            TypeReference typeReference = (TypeReference) other;
            if (r.a(getF14650a(), typeReference.getF14650a()) && r.a(i(), typeReference.i()) && getC() == typeReference.getC()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((getF14650a().hashCode() * 31) + i().hashCode()) * 31) + Boolean.valueOf(getC()).hashCode();
    }

    @Override // kotlin.reflect.KType
    public List<KTypeProjection> i() {
        return this.b;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: j, reason: from getter */
    public boolean getC() {
        return this.c;
    }

    public String toString() {
        return f() + " (Kotlin reflection is not available)";
    }
}
