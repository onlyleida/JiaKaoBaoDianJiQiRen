package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.u;
import kotlin.collections.u0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f14799a = new h();
    public static final kotlin.reflect.jvm.internal.impl.name.f b;
    public static final kotlin.reflect.jvm.internal.impl.name.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.c f14800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.c f14801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.c f14802f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.c f14803g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.c f14804h;
    public static final kotlin.reflect.jvm.internal.impl.name.c i;
    public static final List<String> j;
    public static final kotlin.reflect.jvm.internal.impl.name.f k;
    public static final kotlin.reflect.jvm.internal.impl.name.c l;
    public static final kotlin.reflect.jvm.internal.impl.name.c m;
    public static final kotlin.reflect.jvm.internal.impl.name.c n;
    public static final kotlin.reflect.jvm.internal.impl.name.c o;
    public static final Set<kotlin.reflect.jvm.internal.impl.name.c> p;

    public static final class a {
        public static final kotlin.reflect.jvm.internal.impl.name.c A;
        public static final kotlin.reflect.jvm.internal.impl.name.c B;
        public static final kotlin.reflect.jvm.internal.impl.name.c C;
        public static final kotlin.reflect.jvm.internal.impl.name.c D;
        public static final kotlin.reflect.jvm.internal.impl.name.c E;
        public static final kotlin.reflect.jvm.internal.impl.name.c F;
        public static final kotlin.reflect.jvm.internal.impl.name.c G;
        public static final kotlin.reflect.jvm.internal.impl.name.c H;
        public static final kotlin.reflect.jvm.internal.impl.name.c I;
        public static final kotlin.reflect.jvm.internal.impl.name.c J;
        public static final kotlin.reflect.jvm.internal.impl.name.c K;
        public static final kotlin.reflect.jvm.internal.impl.name.c L;
        public static final kotlin.reflect.jvm.internal.impl.name.c M;
        public static final kotlin.reflect.jvm.internal.impl.name.c N;
        public static final kotlin.reflect.jvm.internal.impl.name.c O;
        public static final kotlin.reflect.jvm.internal.impl.name.c P;
        public static final kotlin.reflect.jvm.internal.impl.name.d Q;
        public static final kotlin.reflect.jvm.internal.impl.name.d R;
        public static final kotlin.reflect.jvm.internal.impl.name.b S;
        public static final kotlin.reflect.jvm.internal.impl.name.c T;
        public static final kotlin.reflect.jvm.internal.impl.name.c U;
        public static final kotlin.reflect.jvm.internal.impl.name.c V;
        public static final kotlin.reflect.jvm.internal.impl.name.c W;
        public static final kotlin.reflect.jvm.internal.impl.name.b X;
        public static final kotlin.reflect.jvm.internal.impl.name.b Y;
        public static final kotlin.reflect.jvm.internal.impl.name.b Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f14805a;
        public static final kotlin.reflect.jvm.internal.impl.name.b a0;
        public static final kotlin.reflect.jvm.internal.impl.name.d b;
        public static final kotlin.reflect.jvm.internal.impl.name.c b0;
        public static final kotlin.reflect.jvm.internal.impl.name.d c;
        public static final kotlin.reflect.jvm.internal.impl.name.c c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final kotlin.reflect.jvm.internal.impl.name.d f14806d;
        public static final kotlin.reflect.jvm.internal.impl.name.c d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final kotlin.reflect.jvm.internal.impl.name.d f14807e;
        public static final kotlin.reflect.jvm.internal.impl.name.c e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final kotlin.reflect.jvm.internal.impl.name.d f14808f;
        public static final Set<kotlin.reflect.jvm.internal.impl.name.f> f0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final kotlin.reflect.jvm.internal.impl.name.d f14809g;
        public static final Set<kotlin.reflect.jvm.internal.impl.name.f> g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final kotlin.reflect.jvm.internal.impl.name.d f14810h;
        public static final Map<kotlin.reflect.jvm.internal.impl.name.d, PrimitiveType> h0;
        public static final kotlin.reflect.jvm.internal.impl.name.d i;
        public static final Map<kotlin.reflect.jvm.internal.impl.name.d, PrimitiveType> i0;
        public static final kotlin.reflect.jvm.internal.impl.name.d j;
        public static final kotlin.reflect.jvm.internal.impl.name.d k;
        public static final kotlin.reflect.jvm.internal.impl.name.c l;
        public static final kotlin.reflect.jvm.internal.impl.name.c m;
        public static final kotlin.reflect.jvm.internal.impl.name.c n;
        public static final kotlin.reflect.jvm.internal.impl.name.c o;
        public static final kotlin.reflect.jvm.internal.impl.name.c p;
        public static final kotlin.reflect.jvm.internal.impl.name.c q;
        public static final kotlin.reflect.jvm.internal.impl.name.c r;
        public static final kotlin.reflect.jvm.internal.impl.name.c s;
        public static final kotlin.reflect.jvm.internal.impl.name.c t;
        public static final kotlin.reflect.jvm.internal.impl.name.c u;
        public static final kotlin.reflect.jvm.internal.impl.name.c v;
        public static final kotlin.reflect.jvm.internal.impl.name.c w;
        public static final kotlin.reflect.jvm.internal.impl.name.c x;
        public static final kotlin.reflect.jvm.internal.impl.name.c y;
        public static final kotlin.reflect.jvm.internal.impl.name.c z;

        static {
            a aVar = new a();
            f14805a = aVar;
            b = aVar.d("Any");
            c = aVar.d("Nothing");
            f14806d = aVar.d("Cloneable");
            aVar.c("Suppress");
            f14807e = aVar.d("Unit");
            f14808f = aVar.d("CharSequence");
            f14809g = aVar.d("String");
            f14810h = aVar.d("Array");
            i = aVar.d("Boolean");
            aVar.d("Char");
            aVar.d("Byte");
            aVar.d("Short");
            aVar.d("Int");
            aVar.d("Long");
            aVar.d("Float");
            aVar.d("Double");
            j = aVar.d("Number");
            k = aVar.d("Enum");
            aVar.d("Function");
            l = aVar.c("Throwable");
            m = aVar.c("Comparable");
            aVar.e("IntRange");
            aVar.e("LongRange");
            n = aVar.c("Deprecated");
            aVar.c("DeprecatedSinceKotlin");
            o = aVar.c("DeprecationLevel");
            p = aVar.c("ReplaceWith");
            q = aVar.c("ExtensionFunctionType");
            r = aVar.c("ParameterName");
            s = aVar.c("Annotation");
            t = aVar.a("Target");
            u = aVar.a("AnnotationTarget");
            v = aVar.a("AnnotationRetention");
            w = aVar.a("Retention");
            x = aVar.a("Repeatable");
            y = aVar.a("MustBeDocumented");
            z = aVar.c("UnsafeVariance");
            aVar.c("PublishedApi");
            A = aVar.b("Iterator");
            B = aVar.b("Iterable");
            C = aVar.b("Collection");
            D = aVar.b("List");
            E = aVar.b("ListIterator");
            F = aVar.b("Set");
            kotlin.reflect.jvm.internal.impl.name.c cVarB = aVar.b("Map");
            G = cVarB;
            kotlin.reflect.jvm.internal.impl.name.c cVarC = cVarB.c(kotlin.reflect.jvm.internal.impl.name.f.g("Entry"));
            r.d(cVarC, "map.child(Name.identifier(\"Entry\"))");
            H = cVarC;
            I = aVar.b("MutableIterator");
            J = aVar.b("MutableIterable");
            K = aVar.b("MutableCollection");
            L = aVar.b("MutableList");
            a aVar2 = f14805a;
            M = aVar2.b("MutableListIterator");
            N = aVar2.b("MutableSet");
            kotlin.reflect.jvm.internal.impl.name.c cVarB2 = aVar2.b("MutableMap");
            O = cVarB2;
            kotlin.reflect.jvm.internal.impl.name.c cVarC2 = cVarB2.c(kotlin.reflect.jvm.internal.impl.name.f.g("MutableEntry"));
            r.d(cVarC2, "mutableMap.child(Name.identifier(\"MutableEntry\"))");
            P = cVarC2;
            Q = f("KClass");
            f("KCallable");
            f("KProperty0");
            f("KProperty1");
            f("KProperty2");
            f("KMutableProperty0");
            f("KMutableProperty1");
            f("KMutableProperty2");
            kotlin.reflect.jvm.internal.impl.name.d dVarF = f("KProperty");
            R = dVarF;
            f("KMutableProperty");
            kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(dVarF.l());
            r.d(bVarM, "topLevel(kPropertyFqName.toSafe())");
            S = bVarM;
            f("KDeclarationContainer");
            kotlin.reflect.jvm.internal.impl.name.c cVarC3 = aVar2.c("UByte");
            T = cVarC3;
            kotlin.reflect.jvm.internal.impl.name.c cVarC4 = aVar2.c("UShort");
            U = cVarC4;
            kotlin.reflect.jvm.internal.impl.name.c cVarC5 = aVar2.c("UInt");
            V = cVarC5;
            kotlin.reflect.jvm.internal.impl.name.c cVarC6 = aVar2.c("ULong");
            W = cVarC6;
            kotlin.reflect.jvm.internal.impl.name.b bVarM2 = kotlin.reflect.jvm.internal.impl.name.b.m(cVarC3);
            r.d(bVarM2, "topLevel(uByteFqName)");
            X = bVarM2;
            kotlin.reflect.jvm.internal.impl.name.b bVarM3 = kotlin.reflect.jvm.internal.impl.name.b.m(cVarC4);
            r.d(bVarM3, "topLevel(uShortFqName)");
            Y = bVarM3;
            kotlin.reflect.jvm.internal.impl.name.b bVarM4 = kotlin.reflect.jvm.internal.impl.name.b.m(cVarC5);
            r.d(bVarM4, "topLevel(uIntFqName)");
            Z = bVarM4;
            kotlin.reflect.jvm.internal.impl.name.b bVarM5 = kotlin.reflect.jvm.internal.impl.name.b.m(cVarC6);
            r.d(bVarM5, "topLevel(uLongFqName)");
            a0 = bVarM5;
            b0 = aVar2.c("UByteArray");
            c0 = aVar2.c("UShortArray");
            d0 = aVar2.c("UIntArray");
            e0 = aVar2.c("ULongArray");
            HashSet hashSetF = kotlin.reflect.jvm.internal.impl.utils.a.f(PrimitiveType.values().length);
            int i2 = 0;
            for (PrimitiveType primitiveType : PrimitiveType.values()) {
                hashSetF.add(primitiveType.getTypeName());
            }
            f0 = hashSetF;
            HashSet hashSetF2 = kotlin.reflect.jvm.internal.impl.utils.a.f(PrimitiveType.values().length);
            for (PrimitiveType primitiveType2 : PrimitiveType.values()) {
                hashSetF2.add(primitiveType2.getArrayTypeName());
            }
            g0 = hashSetF2;
            HashMap mapE = kotlin.reflect.jvm.internal.impl.utils.a.e(PrimitiveType.values().length);
            PrimitiveType[] primitiveTypeArrValues = PrimitiveType.values();
            int length = primitiveTypeArrValues.length;
            int i3 = 0;
            while (i3 < length) {
                PrimitiveType primitiveType3 = primitiveTypeArrValues[i3];
                i3++;
                a aVar3 = f14805a;
                String strB = primitiveType3.getTypeName().b();
                r.d(strB, "primitiveType.typeName.asString()");
                mapE.put(aVar3.d(strB), primitiveType3);
            }
            h0 = mapE;
            HashMap mapE2 = kotlin.reflect.jvm.internal.impl.utils.a.e(PrimitiveType.values().length);
            PrimitiveType[] primitiveTypeArrValues2 = PrimitiveType.values();
            int length2 = primitiveTypeArrValues2.length;
            while (i2 < length2) {
                PrimitiveType primitiveType4 = primitiveTypeArrValues2[i2];
                i2++;
                a aVar4 = f14805a;
                String strB2 = primitiveType4.getArrayTypeName().b();
                r.d(strB2, "primitiveType.arrayTypeName.asString()");
                mapE2.put(aVar4.d(strB2), primitiveType4);
            }
            i0 = mapE2;
        }

        private a() {
        }

        private final kotlin.reflect.jvm.internal.impl.name.c a(String str) {
            kotlin.reflect.jvm.internal.impl.name.c cVarC = h.m.c(kotlin.reflect.jvm.internal.impl.name.f.g(str));
            r.d(cVarC, "ANNOTATION_PACKAGE_FQ_NA…e.identifier(simpleName))");
            return cVarC;
        }

        private final kotlin.reflect.jvm.internal.impl.name.c b(String str) {
            kotlin.reflect.jvm.internal.impl.name.c cVarC = h.n.c(kotlin.reflect.jvm.internal.impl.name.f.g(str));
            r.d(cVarC, "COLLECTIONS_PACKAGE_FQ_N…e.identifier(simpleName))");
            return cVarC;
        }

        private final kotlin.reflect.jvm.internal.impl.name.c c(String str) {
            kotlin.reflect.jvm.internal.impl.name.c cVarC = h.l.c(kotlin.reflect.jvm.internal.impl.name.f.g(str));
            r.d(cVarC, "BUILT_INS_PACKAGE_FQ_NAM…e.identifier(simpleName))");
            return cVarC;
        }

        private final kotlin.reflect.jvm.internal.impl.name.d d(String str) {
            kotlin.reflect.jvm.internal.impl.name.d dVarJ = c(str).j();
            r.d(dVarJ, "fqName(simpleName).toUnsafe()");
            return dVarJ;
        }

        private final kotlin.reflect.jvm.internal.impl.name.d e(String str) {
            kotlin.reflect.jvm.internal.impl.name.d dVarJ = h.o.c(kotlin.reflect.jvm.internal.impl.name.f.g(str)).j();
            r.d(dVarJ, "RANGES_PACKAGE_FQ_NAME.c…r(simpleName)).toUnsafe()");
            return dVarJ;
        }

        public static final kotlin.reflect.jvm.internal.impl.name.d f(String simpleName) {
            r.e(simpleName, "simpleName");
            kotlin.reflect.jvm.internal.impl.name.d dVarJ = h.i.c(kotlin.reflect.jvm.internal.impl.name.f.g(simpleName)).j();
            r.d(dVarJ, "KOTLIN_REFLECT_FQ_NAME.c…r(simpleName)).toUnsafe()");
            return dVarJ;
        }
    }

    static {
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g("values");
        r.d(fVarG, "identifier(\"values\")");
        b = fVarG;
        kotlin.reflect.jvm.internal.impl.name.f fVarG2 = kotlin.reflect.jvm.internal.impl.name.f.g("valueOf");
        r.d(fVarG2, "identifier(\"valueOf\")");
        c = fVarG2;
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("code"), "identifier(\"code\")");
        kotlin.reflect.jvm.internal.impl.name.c cVar = new kotlin.reflect.jvm.internal.impl.name.c("kotlin.coroutines");
        f14800d = cVar;
        kotlin.reflect.jvm.internal.impl.name.c cVarC = cVar.c(kotlin.reflect.jvm.internal.impl.name.f.g("experimental"));
        r.d(cVarC, "COROUTINES_PACKAGE_FQ_NA…entifier(\"experimental\"))");
        f14801e = cVarC;
        r.d(cVarC.c(kotlin.reflect.jvm.internal.impl.name.f.g("intrinsics")), "COROUTINES_PACKAGE_FQ_NA…identifier(\"intrinsics\"))");
        kotlin.reflect.jvm.internal.impl.name.c cVarC2 = cVarC.c(kotlin.reflect.jvm.internal.impl.name.f.g("Continuation"));
        r.d(cVarC2, "COROUTINES_PACKAGE_FQ_NA…entifier(\"Continuation\"))");
        f14802f = cVarC2;
        kotlin.reflect.jvm.internal.impl.name.c cVarC3 = cVar.c(kotlin.reflect.jvm.internal.impl.name.f.g("Continuation"));
        r.d(cVarC3, "COROUTINES_PACKAGE_FQ_NA…entifier(\"Continuation\"))");
        f14803g = cVarC3;
        f14804h = new kotlin.reflect.jvm.internal.impl.name.c("kotlin.Result");
        kotlin.reflect.jvm.internal.impl.name.c cVar2 = new kotlin.reflect.jvm.internal.impl.name.c("kotlin.reflect");
        i = cVar2;
        j = u.m("KProperty", "KMutableProperty", "KFunction", "KSuspendFunction");
        kotlin.reflect.jvm.internal.impl.name.f fVarG3 = kotlin.reflect.jvm.internal.impl.name.f.g("kotlin");
        r.d(fVarG3, "identifier(\"kotlin\")");
        k = fVarG3;
        kotlin.reflect.jvm.internal.impl.name.c cVarK = kotlin.reflect.jvm.internal.impl.name.c.k(fVarG3);
        r.d(cVarK, "topLevel(BUILT_INS_PACKAGE_NAME)");
        l = cVarK;
        kotlin.reflect.jvm.internal.impl.name.c cVarC4 = cVarK.c(kotlin.reflect.jvm.internal.impl.name.f.g("annotation"));
        r.d(cVarC4, "BUILT_INS_PACKAGE_FQ_NAM…identifier(\"annotation\"))");
        m = cVarC4;
        kotlin.reflect.jvm.internal.impl.name.c cVarC5 = cVarK.c(kotlin.reflect.jvm.internal.impl.name.f.g("collections"));
        r.d(cVarC5, "BUILT_INS_PACKAGE_FQ_NAM…dentifier(\"collections\"))");
        n = cVarC5;
        kotlin.reflect.jvm.internal.impl.name.c cVarC6 = cVarK.c(kotlin.reflect.jvm.internal.impl.name.f.g("ranges"));
        r.d(cVarC6, "BUILT_INS_PACKAGE_FQ_NAM…ame.identifier(\"ranges\"))");
        o = cVarC6;
        r.d(cVarK.c(kotlin.reflect.jvm.internal.impl.name.f.g("text")), "BUILT_INS_PACKAGE_FQ_NAM…(Name.identifier(\"text\"))");
        kotlin.reflect.jvm.internal.impl.name.c cVarC7 = cVarK.c(kotlin.reflect.jvm.internal.impl.name.f.g("internal"));
        r.d(cVarC7, "BUILT_INS_PACKAGE_FQ_NAM…e.identifier(\"internal\"))");
        p = u0.f(cVarK, cVarC5, cVarC6, cVarC4, cVar2, cVarC7, cVar);
    }

    private h() {
    }

    public static final kotlin.reflect.jvm.internal.impl.name.b a(int i2) {
        return new kotlin.reflect.jvm.internal.impl.name.b(l, kotlin.reflect.jvm.internal.impl.name.f.g(b(i2)));
    }

    public static final String b(int i2) {
        return r.m("Function", Integer.valueOf(i2));
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c c(PrimitiveType primitiveType) {
        r.e(primitiveType, "primitiveType");
        kotlin.reflect.jvm.internal.impl.name.c cVarC = l.c(primitiveType.getTypeName());
        r.d(cVarC, "BUILT_INS_PACKAGE_FQ_NAM…d(primitiveType.typeName)");
        return cVarC;
    }

    public static final String d(int i2) {
        return r.m(FunctionClassKind.SuspendFunction.getClassNamePrefix(), Integer.valueOf(i2));
    }

    public static final boolean e(kotlin.reflect.jvm.internal.impl.name.d arrayFqName) {
        r.e(arrayFqName, "arrayFqName");
        return a.i0.get(arrayFqName) != null;
    }
}
