package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.u;
import kotlin.collections.v0;
import kotlin.collections.z;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f14847a;
    private static final Set<String> b;
    private static final Set<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<String> f14848d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Set<String> f14849e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<String> f14850f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set<String> f14851g;

    static {
        f fVar = new f();
        f14847a = fVar;
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.f15194a;
        b = v0.i(signatureBuildingComponents.f("Collection", "toArray()[Ljava/lang/Object;", "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"), "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;");
        c = v0.h(v0.h(v0.h(v0.h(v0.h(v0.h(fVar.b(), signatureBuildingComponents.f("List", "sort(Ljava/util/Comparator;)V")), signatureBuildingComponents.e("String", "codePointAt(I)I", "codePointBefore(I)I", "codePointCount(II)I", "compareToIgnoreCase(Ljava/lang/String;)I", "concat(Ljava/lang/String;)Ljava/lang/String;", "contains(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/StringBuffer;)Z", "endsWith(Ljava/lang/String;)Z", "equalsIgnoreCase(Ljava/lang/String;)Z", "getBytes()[B", "getBytes(II[BI)V", "getBytes(Ljava/lang/String;)[B", "getBytes(Ljava/nio/charset/Charset;)[B", "getChars(II[CI)V", "indexOf(I)I", "indexOf(II)I", "indexOf(Ljava/lang/String;)I", "indexOf(Ljava/lang/String;I)I", "intern()Ljava/lang/String;", "isEmpty()Z", "lastIndexOf(I)I", "lastIndexOf(II)I", "lastIndexOf(Ljava/lang/String;)I", "lastIndexOf(Ljava/lang/String;I)I", "matches(Ljava/lang/String;)Z", "offsetByCodePoints(II)I", "regionMatches(ILjava/lang/String;II)Z", "regionMatches(ZILjava/lang/String;II)Z", "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(CC)Ljava/lang/String;", "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", "split(Ljava/lang/String;I)[Ljava/lang/String;", "split(Ljava/lang/String;)[Ljava/lang/String;", "startsWith(Ljava/lang/String;I)Z", "startsWith(Ljava/lang/String;)Z", "substring(II)Ljava/lang/String;", "substring(I)Ljava/lang/String;", "toCharArray()[C", "toLowerCase()Ljava/lang/String;", "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;", "toUpperCase()Ljava/lang/String;", "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;", "trim()Ljava/lang/String;", "isBlank()Z", "lines()Ljava/util/stream/Stream;", "repeat(I)Ljava/lang/String;")), signatureBuildingComponents.e("Double", "isInfinite()Z", "isNaN()Z")), signatureBuildingComponents.e("Float", "isInfinite()Z", "isNaN()Z")), signatureBuildingComponents.e("Enum", "getDeclaringClass()Ljava/lang/Class;", "finalize()V")), signatureBuildingComponents.e("CharSequence", "isEmpty()Z"));
        f14848d = v0.h(v0.h(v0.h(v0.h(v0.h(v0.h(signatureBuildingComponents.e("CharSequence", "codePoints()Ljava/util/stream/IntStream;", "chars()Ljava/util/stream/IntStream;"), signatureBuildingComponents.f("Iterator", "forEachRemaining(Ljava/util/function/Consumer;)V")), signatureBuildingComponents.e("Iterable", "forEach(Ljava/util/function/Consumer;)V", "spliterator()Ljava/util/Spliterator;")), signatureBuildingComponents.e("Throwable", "setStackTrace([Ljava/lang/StackTraceElement;)V", "fillInStackTrace()Ljava/lang/Throwable;", "getLocalizedMessage()Ljava/lang/String;", "printStackTrace()V", "printStackTrace(Ljava/io/PrintStream;)V", "printStackTrace(Ljava/io/PrintWriter;)V", "getStackTrace()[Ljava/lang/StackTraceElement;", "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "getSuppressed()[Ljava/lang/Throwable;", "addSuppressed(Ljava/lang/Throwable;)V")), signatureBuildingComponents.f("Collection", "spliterator()Ljava/util/Spliterator;", "parallelStream()Ljava/util/stream/Stream;", "stream()Ljava/util/stream/Stream;", "removeIf(Ljava/util/function/Predicate;)Z")), signatureBuildingComponents.f("List", "replaceAll(Ljava/util/function/UnaryOperator;)V")), signatureBuildingComponents.f("Map", "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "forEach(Ljava/util/function/BiConsumer;)V", "replaceAll(Ljava/util/function/BiFunction;)V", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"));
        f14849e = v0.h(v0.h(signatureBuildingComponents.f("Collection", "removeIf(Ljava/util/function/Predicate;)Z"), signatureBuildingComponents.f("List", "replaceAll(Ljava/util/function/UnaryOperator;)V", "sort(Ljava/util/Comparator;)V")), signatureBuildingComponents.f("Map", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove(Ljava/lang/Object;Ljava/lang/Object;)Z", "replaceAll(Ljava/util/function/BiFunction;)V", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"));
        Set<String> setA = fVar.a();
        String[] strArrB = signatureBuildingComponents.b("D");
        Set setH = v0.h(setA, signatureBuildingComponents.e("Float", (String[]) Arrays.copyOf(strArrB, strArrB.length)));
        String[] strArrB2 = signatureBuildingComponents.b("[C", "[CII", "[III", "[BIILjava/lang/String;", "[BIILjava/nio/charset/Charset;", "[BLjava/lang/String;", "[BLjava/nio/charset/Charset;", "[BII", "[B", "Ljava/lang/StringBuffer;", "Ljava/lang/StringBuilder;");
        f14850f = v0.h(setH, signatureBuildingComponents.e("String", (String[]) Arrays.copyOf(strArrB2, strArrB2.length)));
        String[] strArrB3 = signatureBuildingComponents.b("Ljava/lang/String;Ljava/lang/Throwable;ZZ");
        f14851g = signatureBuildingComponents.e("Throwable", (String[]) Arrays.copyOf(strArrB3, strArrB3.length));
    }

    private f() {
    }

    private final Set<String> a() {
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.f15194a;
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.BYTE;
        List listM = u.m(JvmPrimitiveType.BOOLEAN, jvmPrimitiveType, JvmPrimitiveType.DOUBLE, JvmPrimitiveType.FLOAT, jvmPrimitiveType, JvmPrimitiveType.INT, JvmPrimitiveType.LONG, JvmPrimitiveType.SHORT);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listM.iterator();
        while (it.hasNext()) {
            String strB = ((JvmPrimitiveType) it.next()).getWrapperFqName().g().b();
            r.d(strB, "it.wrapperFqName.shortName().asString()");
            String[] strArrB = signatureBuildingComponents.b("Ljava/lang/String;");
            z.B(linkedHashSet, signatureBuildingComponents.e(strB, (String[]) Arrays.copyOf(strArrB, strArrB.length)));
        }
        return linkedHashSet;
    }

    private final Set<String> b() {
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.f15194a;
        List<JvmPrimitiveType> listM = u.m(JvmPrimitiveType.BOOLEAN, JvmPrimitiveType.CHAR);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (JvmPrimitiveType jvmPrimitiveType : listM) {
            String strB = jvmPrimitiveType.getWrapperFqName().g().b();
            r.d(strB, "it.wrapperFqName.shortName().asString()");
            z.B(linkedHashSet, signatureBuildingComponents.e(strB, jvmPrimitiveType.getJavaKeywordName() + "Value()" + jvmPrimitiveType.getDesc()));
        }
        return linkedHashSet;
    }

    public final Set<String> c() {
        return b;
    }

    public final Set<String> d() {
        return f14850f;
    }

    public final Set<String> e() {
        return c;
    }

    public final Set<String> f() {
        return f14849e;
    }

    public final Set<String> g() {
        return f14851g;
    }

    public final Set<String> h() {
        return f14848d;
    }

    public final boolean i(kotlin.reflect.jvm.internal.impl.name.d fqName) {
        r.e(fqName, "fqName");
        return r.a(fqName, h.a.f14810h) || h.e(fqName);
    }

    public final boolean j(kotlin.reflect.jvm.internal.impl.name.d fqName) {
        r.e(fqName, "fqName");
        if (i(fqName)) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.name.b bVarO = c.f14839a.o(fqName);
        if (bVarO == null) {
            return false;
        }
        try {
            return Serializable.class.isAssignableFrom(Class.forName(bVarO.b().b()));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
