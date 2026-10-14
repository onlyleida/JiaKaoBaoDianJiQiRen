package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.s;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f14839a;
    private static final String b;
    private static final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f14840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f14841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.b f14842f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.c f14843g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.b f14844h;
    private static final HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.b> i;
    private static final HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.b> j;
    private static final HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.c> k;
    private static final HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.c> l;
    private static final List<a> m;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.name.b f14845a;
        private final kotlin.reflect.jvm.internal.impl.name.b b;
        private final kotlin.reflect.jvm.internal.impl.name.b c;

        public a(kotlin.reflect.jvm.internal.impl.name.b javaClass, kotlin.reflect.jvm.internal.impl.name.b kotlinReadOnly, kotlin.reflect.jvm.internal.impl.name.b kotlinMutable) {
            r.e(javaClass, "javaClass");
            r.e(kotlinReadOnly, "kotlinReadOnly");
            r.e(kotlinMutable, "kotlinMutable");
            this.f14845a = javaClass;
            this.b = kotlinReadOnly;
            this.c = kotlinMutable;
        }

        public final kotlin.reflect.jvm.internal.impl.name.b a() {
            return this.f14845a;
        }

        public final kotlin.reflect.jvm.internal.impl.name.b b() {
            return this.b;
        }

        public final kotlin.reflect.jvm.internal.impl.name.b c() {
            return this.c;
        }

        public final kotlin.reflect.jvm.internal.impl.name.b d() {
            return this.f14845a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return r.a(this.f14845a, aVar.f14845a) && r.a(this.b, aVar.b) && r.a(this.c, aVar.c);
        }

        public int hashCode() {
            return (((this.f14845a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
        }

        public String toString() {
            return "PlatformMutabilityMapping(javaClass=" + this.f14845a + ", kotlinReadOnly=" + this.b + ", kotlinMutable=" + this.c + ')';
        }
    }

    static {
        c cVar = new c();
        f14839a = cVar;
        StringBuilder sb = new StringBuilder();
        FunctionClassKind functionClassKind = FunctionClassKind.Function;
        sb.append(functionClassKind.getPackageFqName().toString());
        sb.append('.');
        sb.append(functionClassKind.getClassNamePrefix());
        b = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        FunctionClassKind functionClassKind2 = FunctionClassKind.KFunction;
        sb2.append(functionClassKind2.getPackageFqName().toString());
        sb2.append('.');
        sb2.append(functionClassKind2.getClassNamePrefix());
        c = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        FunctionClassKind functionClassKind3 = FunctionClassKind.SuspendFunction;
        sb3.append(functionClassKind3.getPackageFqName().toString());
        sb3.append('.');
        sb3.append(functionClassKind3.getClassNamePrefix());
        f14840d = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        FunctionClassKind functionClassKind4 = FunctionClassKind.KSuspendFunction;
        sb4.append(functionClassKind4.getPackageFqName().toString());
        sb4.append('.');
        sb4.append(functionClassKind4.getClassNamePrefix());
        f14841e = sb4.toString();
        kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.functions.FunctionN"));
        r.d(bVarM, "topLevel(FqName(\"kotlin.jvm.functions.FunctionN\"))");
        f14842f = bVarM;
        kotlin.reflect.jvm.internal.impl.name.c cVarB = bVarM.b();
        r.d(cVarB, "FUNCTION_N_CLASS_ID.asSingleFqName()");
        f14843g = cVarB;
        kotlin.reflect.jvm.internal.impl.name.b bVarM2 = kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.reflect.KFunction"));
        r.d(bVarM2, "topLevel(FqName(\"kotlin.reflect.KFunction\"))");
        f14844h = bVarM2;
        r.d(kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.reflect.KClass")), "topLevel(FqName(\"kotlin.reflect.KClass\"))");
        cVar.h(Class.class);
        i = new HashMap<>();
        j = new HashMap<>();
        k = new HashMap<>();
        l = new HashMap<>();
        kotlin.reflect.jvm.internal.impl.name.b bVarM3 = kotlin.reflect.jvm.internal.impl.name.b.m(h.a.B);
        r.d(bVarM3, "topLevel(FqNames.iterable)");
        kotlin.reflect.jvm.internal.impl.name.c cVar2 = h.a.J;
        kotlin.reflect.jvm.internal.impl.name.c cVarH = bVarM3.h();
        kotlin.reflect.jvm.internal.impl.name.c cVarH2 = bVarM3.h();
        r.d(cVarH2, "kotlinReadOnly.packageFqName");
        kotlin.reflect.jvm.internal.impl.name.c cVarG = kotlin.reflect.jvm.internal.impl.name.e.g(cVar2, cVarH2);
        int i2 = 0;
        kotlin.reflect.jvm.internal.impl.name.b bVar = new kotlin.reflect.jvm.internal.impl.name.b(cVarH, cVarG, false);
        kotlin.reflect.jvm.internal.impl.name.b bVarM4 = kotlin.reflect.jvm.internal.impl.name.b.m(h.a.A);
        r.d(bVarM4, "topLevel(FqNames.iterator)");
        kotlin.reflect.jvm.internal.impl.name.c cVar3 = h.a.I;
        kotlin.reflect.jvm.internal.impl.name.c cVarH3 = bVarM4.h();
        kotlin.reflect.jvm.internal.impl.name.c cVarH4 = bVarM4.h();
        r.d(cVarH4, "kotlinReadOnly.packageFqName");
        kotlin.reflect.jvm.internal.impl.name.b bVar2 = new kotlin.reflect.jvm.internal.impl.name.b(cVarH3, kotlin.reflect.jvm.internal.impl.name.e.g(cVar3, cVarH4), false);
        kotlin.reflect.jvm.internal.impl.name.b bVarM5 = kotlin.reflect.jvm.internal.impl.name.b.m(h.a.C);
        r.d(bVarM5, "topLevel(FqNames.collection)");
        kotlin.reflect.jvm.internal.impl.name.c cVar4 = h.a.K;
        kotlin.reflect.jvm.internal.impl.name.c cVarH5 = bVarM5.h();
        kotlin.reflect.jvm.internal.impl.name.c cVarH6 = bVarM5.h();
        r.d(cVarH6, "kotlinReadOnly.packageFqName");
        kotlin.reflect.jvm.internal.impl.name.b bVar3 = new kotlin.reflect.jvm.internal.impl.name.b(cVarH5, kotlin.reflect.jvm.internal.impl.name.e.g(cVar4, cVarH6), false);
        kotlin.reflect.jvm.internal.impl.name.b bVarM6 = kotlin.reflect.jvm.internal.impl.name.b.m(h.a.D);
        r.d(bVarM6, "topLevel(FqNames.list)");
        kotlin.reflect.jvm.internal.impl.name.c cVar5 = h.a.L;
        kotlin.reflect.jvm.internal.impl.name.c cVarH7 = bVarM6.h();
        kotlin.reflect.jvm.internal.impl.name.c cVarH8 = bVarM6.h();
        r.d(cVarH8, "kotlinReadOnly.packageFqName");
        kotlin.reflect.jvm.internal.impl.name.b bVar4 = new kotlin.reflect.jvm.internal.impl.name.b(cVarH7, kotlin.reflect.jvm.internal.impl.name.e.g(cVar5, cVarH8), false);
        kotlin.reflect.jvm.internal.impl.name.b bVarM7 = kotlin.reflect.jvm.internal.impl.name.b.m(h.a.F);
        r.d(bVarM7, "topLevel(FqNames.set)");
        kotlin.reflect.jvm.internal.impl.name.c cVar6 = h.a.N;
        kotlin.reflect.jvm.internal.impl.name.c cVarH9 = bVarM7.h();
        kotlin.reflect.jvm.internal.impl.name.c cVarH10 = bVarM7.h();
        r.d(cVarH10, "kotlinReadOnly.packageFqName");
        kotlin.reflect.jvm.internal.impl.name.b bVar5 = new kotlin.reflect.jvm.internal.impl.name.b(cVarH9, kotlin.reflect.jvm.internal.impl.name.e.g(cVar6, cVarH10), false);
        kotlin.reflect.jvm.internal.impl.name.b bVarM8 = kotlin.reflect.jvm.internal.impl.name.b.m(h.a.E);
        r.d(bVarM8, "topLevel(FqNames.listIterator)");
        kotlin.reflect.jvm.internal.impl.name.c cVar7 = h.a.M;
        kotlin.reflect.jvm.internal.impl.name.c cVarH11 = bVarM8.h();
        kotlin.reflect.jvm.internal.impl.name.c cVarH12 = bVarM8.h();
        r.d(cVarH12, "kotlinReadOnly.packageFqName");
        kotlin.reflect.jvm.internal.impl.name.b bVar6 = new kotlin.reflect.jvm.internal.impl.name.b(cVarH11, kotlin.reflect.jvm.internal.impl.name.e.g(cVar7, cVarH12), false);
        kotlin.reflect.jvm.internal.impl.name.c cVar8 = h.a.G;
        kotlin.reflect.jvm.internal.impl.name.b bVarM9 = kotlin.reflect.jvm.internal.impl.name.b.m(cVar8);
        r.d(bVarM9, "topLevel(FqNames.map)");
        kotlin.reflect.jvm.internal.impl.name.c cVar9 = h.a.O;
        kotlin.reflect.jvm.internal.impl.name.c cVarH13 = bVarM9.h();
        kotlin.reflect.jvm.internal.impl.name.c cVarH14 = bVarM9.h();
        r.d(cVarH14, "kotlinReadOnly.packageFqName");
        kotlin.reflect.jvm.internal.impl.name.b bVar7 = new kotlin.reflect.jvm.internal.impl.name.b(cVarH13, kotlin.reflect.jvm.internal.impl.name.e.g(cVar9, cVarH14), false);
        kotlin.reflect.jvm.internal.impl.name.b bVarD = kotlin.reflect.jvm.internal.impl.name.b.m(cVar8).d(h.a.H.g());
        r.d(bVarD, "topLevel(FqNames.map).cr…mes.mapEntry.shortName())");
        kotlin.reflect.jvm.internal.impl.name.c cVar10 = h.a.P;
        kotlin.reflect.jvm.internal.impl.name.c cVarH15 = bVarD.h();
        kotlin.reflect.jvm.internal.impl.name.c cVarH16 = bVarD.h();
        r.d(cVarH16, "kotlinReadOnly.packageFqName");
        List<a> listM = u.m(new a(cVar.h(Iterable.class), bVarM3, bVar), new a(cVar.h(Iterator.class), bVarM4, bVar2), new a(cVar.h(Collection.class), bVarM5, bVar3), new a(cVar.h(List.class), bVarM6, bVar4), new a(cVar.h(Set.class), bVarM7, bVar5), new a(cVar.h(ListIterator.class), bVarM8, bVar6), new a(cVar.h(Map.class), bVarM9, bVar7), new a(cVar.h(Map.Entry.class), bVarD, new kotlin.reflect.jvm.internal.impl.name.b(cVarH15, kotlin.reflect.jvm.internal.impl.name.e.g(cVar10, cVarH16), false)));
        m = listM;
        cVar.g(Object.class, h.a.b);
        cVar.g(String.class, h.a.f14809g);
        cVar.g(CharSequence.class, h.a.f14808f);
        cVar.f(Throwable.class, h.a.l);
        cVar.g(Cloneable.class, h.a.f14806d);
        cVar.g(Number.class, h.a.j);
        cVar.f(Comparable.class, h.a.m);
        cVar.g(Enum.class, h.a.k);
        cVar.f(Annotation.class, h.a.s);
        Iterator<a> it = listM.iterator();
        while (it.hasNext()) {
            f14839a.e(it.next());
        }
        JvmPrimitiveType[] jvmPrimitiveTypeArrValues = JvmPrimitiveType.values();
        int length = jvmPrimitiveTypeArrValues.length;
        int i3 = 0;
        while (i3 < length) {
            JvmPrimitiveType jvmPrimitiveType = jvmPrimitiveTypeArrValues[i3];
            i3++;
            c cVar11 = f14839a;
            kotlin.reflect.jvm.internal.impl.name.b bVarM10 = kotlin.reflect.jvm.internal.impl.name.b.m(jvmPrimitiveType.getWrapperFqName());
            r.d(bVarM10, "topLevel(jvmType.wrapperFqName)");
            PrimitiveType primitiveType = jvmPrimitiveType.getPrimitiveType();
            r.d(primitiveType, "jvmType.primitiveType");
            kotlin.reflect.jvm.internal.impl.name.b bVarM11 = kotlin.reflect.jvm.internal.impl.name.b.m(h.c(primitiveType));
            r.d(bVarM11, "topLevel(StandardNames.g…e(jvmType.primitiveType))");
            cVar11.b(bVarM10, bVarM11);
        }
        for (kotlin.reflect.jvm.internal.impl.name.b bVar8 : kotlin.reflect.jvm.internal.impl.builtins.b.f14779a.a()) {
            c cVar12 = f14839a;
            kotlin.reflect.jvm.internal.impl.name.b bVarM12 = kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.internal." + bVar8.j().b() + "CompanionObject"));
            r.d(bVarM12, "topLevel(FqName(\"kotlin.…g() + \"CompanionObject\"))");
            kotlin.reflect.jvm.internal.impl.name.b bVarD2 = bVar8.d(kotlin.reflect.jvm.internal.impl.name.h.b);
            r.d(bVarD2, "classId.createNestedClas…AME_FOR_COMPANION_OBJECT)");
            cVar12.b(bVarM12, bVarD2);
        }
        int i4 = 0;
        while (true) {
            int i5 = i4 + 1;
            c cVar13 = f14839a;
            kotlin.reflect.jvm.internal.impl.name.b bVarM13 = kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c(r.m("kotlin.jvm.functions.Function", Integer.valueOf(i4))));
            r.d(bVarM13, "topLevel(FqName(\"kotlin.…m.functions.Function$i\"))");
            cVar13.b(bVarM13, h.a(i4));
            cVar13.d(new kotlin.reflect.jvm.internal.impl.name.c(r.m(c, Integer.valueOf(i4))), f14844h);
            if (i5 >= 23) {
                break;
            } else {
                i4 = i5;
            }
        }
        while (true) {
            int i6 = i2 + 1;
            FunctionClassKind functionClassKind5 = FunctionClassKind.KSuspendFunction;
            String str = functionClassKind5.getPackageFqName().toString() + '.' + functionClassKind5.getClassNamePrefix();
            c cVar14 = f14839a;
            cVar14.d(new kotlin.reflect.jvm.internal.impl.name.c(r.m(str, Integer.valueOf(i2))), f14844h);
            if (i6 >= 22) {
                kotlin.reflect.jvm.internal.impl.name.c cVarL = h.a.c.l();
                r.d(cVarL, "nothing.toSafe()");
                cVar14.d(cVarL, cVar14.h(Void.class));
                return;
            }
            i2 = i6;
        }
    }

    private c() {
    }

    private final void b(kotlin.reflect.jvm.internal.impl.name.b bVar, kotlin.reflect.jvm.internal.impl.name.b bVar2) {
        c(bVar, bVar2);
        kotlin.reflect.jvm.internal.impl.name.c cVarB = bVar2.b();
        r.d(cVarB, "kotlinClassId.asSingleFqName()");
        d(cVarB, bVar);
    }

    private final void c(kotlin.reflect.jvm.internal.impl.name.b bVar, kotlin.reflect.jvm.internal.impl.name.b bVar2) {
        HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.b> map = i;
        kotlin.reflect.jvm.internal.impl.name.d dVarJ = bVar.b().j();
        r.d(dVarJ, "javaClassId.asSingleFqName().toUnsafe()");
        map.put(dVarJ, bVar2);
    }

    private final void d(kotlin.reflect.jvm.internal.impl.name.c cVar, kotlin.reflect.jvm.internal.impl.name.b bVar) {
        HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.b> map = j;
        kotlin.reflect.jvm.internal.impl.name.d dVarJ = cVar.j();
        r.d(dVarJ, "kotlinFqNameUnsafe.toUnsafe()");
        map.put(dVarJ, bVar);
    }

    private final void e(a aVar) {
        kotlin.reflect.jvm.internal.impl.name.b bVarA = aVar.a();
        kotlin.reflect.jvm.internal.impl.name.b bVarB = aVar.b();
        kotlin.reflect.jvm.internal.impl.name.b bVarC = aVar.c();
        b(bVarA, bVarB);
        kotlin.reflect.jvm.internal.impl.name.c cVarB = bVarC.b();
        r.d(cVarB, "mutableClassId.asSingleFqName()");
        d(cVarB, bVarA);
        kotlin.reflect.jvm.internal.impl.name.c cVarB2 = bVarB.b();
        r.d(cVarB2, "readOnlyClassId.asSingleFqName()");
        kotlin.reflect.jvm.internal.impl.name.c cVarB3 = bVarC.b();
        r.d(cVarB3, "mutableClassId.asSingleFqName()");
        HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.c> map = k;
        kotlin.reflect.jvm.internal.impl.name.d dVarJ = bVarC.b().j();
        r.d(dVarJ, "mutableClassId.asSingleFqName().toUnsafe()");
        map.put(dVarJ, cVarB2);
        HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.c> map2 = l;
        kotlin.reflect.jvm.internal.impl.name.d dVarJ2 = cVarB2.j();
        r.d(dVarJ2, "readOnlyFqName.toUnsafe()");
        map2.put(dVarJ2, cVarB3);
    }

    private final void f(Class<?> cls, kotlin.reflect.jvm.internal.impl.name.c cVar) {
        kotlin.reflect.jvm.internal.impl.name.b bVarH = h(cls);
        kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(cVar);
        r.d(bVarM, "topLevel(kotlinFqName)");
        b(bVarH, bVarM);
    }

    private final void g(Class<?> cls, kotlin.reflect.jvm.internal.impl.name.d dVar) {
        kotlin.reflect.jvm.internal.impl.name.c cVarL = dVar.l();
        r.d(cVarL, "kotlinFqName.toSafe()");
        f(cls, cVarL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.name.b h(Class<?> cls) {
        if (!cls.isPrimitive()) {
            cls.isArray();
        }
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c(cls.getCanonicalName()));
            r.d(bVarM, "topLevel(FqName(clazz.canonicalName))");
            return bVarM;
        }
        kotlin.reflect.jvm.internal.impl.name.b bVarD = h(declaringClass).d(kotlin.reflect.jvm.internal.impl.name.f.g(cls.getSimpleName()));
        r.d(bVarD, "classId(outer).createNes…tifier(clazz.simpleName))");
        return bVarD;
    }

    private final boolean k(kotlin.reflect.jvm.internal.impl.name.d dVar, String str) {
        Integer numJ;
        String strB = dVar.b();
        r.d(strB, "kotlinFqName.asString()");
        String strY0 = StringsKt__StringsKt.y0(strB, str, "");
        return (strY0.length() > 0) && !StringsKt__StringsKt.u0(strY0, '0', false, 2, null) && (numJ = s.j(strY0)) != null && numJ.intValue() >= 23;
    }

    public final kotlin.reflect.jvm.internal.impl.name.c i() {
        return f14843g;
    }

    public final List<a> j() {
        return m;
    }

    public final boolean l(kotlin.reflect.jvm.internal.impl.name.d dVar) {
        HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.c> map = k;
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        return map.containsKey(dVar);
    }

    public final boolean m(kotlin.reflect.jvm.internal.impl.name.d dVar) {
        HashMap<kotlin.reflect.jvm.internal.impl.name.d, kotlin.reflect.jvm.internal.impl.name.c> map = l;
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        return map.containsKey(dVar);
    }

    public final kotlin.reflect.jvm.internal.impl.name.b n(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        return i.get(fqName.j());
    }

    public final kotlin.reflect.jvm.internal.impl.name.b o(kotlin.reflect.jvm.internal.impl.name.d kotlinFqName) {
        r.e(kotlinFqName, "kotlinFqName");
        if (!k(kotlinFqName, b) && !k(kotlinFqName, f14840d)) {
            if (!k(kotlinFqName, c) && !k(kotlinFqName, f14841e)) {
                return j.get(kotlinFqName);
            }
            return f14844h;
        }
        return f14842f;
    }

    public final kotlin.reflect.jvm.internal.impl.name.c p(kotlin.reflect.jvm.internal.impl.name.d dVar) {
        return k.get(dVar);
    }

    public final kotlin.reflect.jvm.internal.impl.name.c q(kotlin.reflect.jvm.internal.impl.name.d dVar) {
        return l.get(dVar);
    }
}
