package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;

/* JADX INFO: loaded from: classes6.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f14973a;
    public static final s b;
    public static final s c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final s f14974d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final s f14975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final s f14976f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final s f14977g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final s f14978h;
    public static final s i;
    private static final Map<s, Integer> j;
    public static final s k;
    private static final kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d l;
    public static final kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d m;

    @Deprecated
    public static final kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d n;
    private static final kotlin.reflect.jvm.internal.impl.util.f o;
    private static final Map<z0, s> p;

    static class a implements kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d
        public kotlin.reflect.jvm.internal.impl.types.a0 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    static class b implements kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d {
        b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d
        public kotlin.reflect.jvm.internal.impl.types.a0 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    static class c implements kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d {
        c() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d
        public kotlin.reflect.jvm.internal.impl.types.a0 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    static class d extends p {
        d(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "what";
            } else if (i != 2) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1";
            if (i == 1 || i == 2) {
                objArr[2] = "isVisible";
            } else {
                objArr[2] = "hasContainingSourceFile";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private boolean h(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (kVar != null) {
                return kotlin.reflect.jvm.internal.impl.resolve.c.j(kVar) != p0.f14972a;
            }
            g(0);
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == 0) {
                g(1);
                throw null;
            }
            if (kVar == null) {
                g(2);
                throw null;
            }
            if (kotlin.reflect.jvm.internal.impl.resolve.c.J(oVar) && h(kVar)) {
                return r.f(oVar, kVar);
            }
            if (oVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.j) {
                kotlin.reflect.jvm.internal.impl.descriptors.g gVarB = ((kotlin.reflect.jvm.internal.impl.descriptors.j) oVar).b();
                if (kotlin.reflect.jvm.internal.impl.resolve.c.G(gVarB) && kotlin.reflect.jvm.internal.impl.resolve.c.J(gVarB) && (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.j) && kotlin.reflect.jvm.internal.impl.resolve.c.J(kVar.b()) && r.f(oVar, kVar)) {
                    return true;
                }
            }
            while (oVar != 0) {
                oVar = oVar.b();
                if (((oVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && !kotlin.reflect.jvm.internal.impl.resolve.c.x(oVar)) || (oVar instanceof b0)) {
                    break;
                }
            }
            if (oVar == 0) {
                return false;
            }
            while (kVar != null) {
                if (oVar == kVar) {
                    return true;
                }
                if (kVar instanceof b0) {
                    return (oVar instanceof b0) && ((b0) oVar).e().equals(((b0) kVar).e()) && kotlin.reflect.jvm.internal.impl.resolve.c.b(kVar, oVar);
                }
                kVar = kVar.b();
            }
            return false;
        }
    }

    static class e extends p {
        e(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.k kVarQ;
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar == null) {
                g(1);
                throw null;
            }
            if (r.f14973a.e(dVar, oVar, kVar)) {
                if (dVar == r.m) {
                    return true;
                }
                if (dVar != r.l && (kVarQ = kotlin.reflect.jvm.internal.impl.resolve.c.q(oVar, kotlin.reflect.jvm.internal.impl.descriptors.d.class)) != null && (dVar instanceof kotlin.reflect.jvm.internal.impl.resolve.scopes.i.f)) {
                    return ((kotlin.reflect.jvm.internal.impl.resolve.scopes.i.f) dVar).r().a().equals(kVarQ.a());
                }
            }
            return false;
        }
    }

    static class f extends p {
        f(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "from";
            } else if (i == 2) {
                objArr[0] = "whatDeclaration";
            } else if (i != 3) {
                objArr[0] = "what";
            } else {
                objArr[0] = "fromClass";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3";
            if (i == 2 || i == 3) {
                objArr[2] = "doesReceiverFitForProtectedVisibility";
            } else {
                objArr[2] = "isVisible";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private boolean h(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
            if (oVar == null) {
                g(2);
                throw null;
            }
            if (dVar2 == null) {
                g(3);
                throw null;
            }
            if (dVar == r.n) {
                return false;
            }
            if (!(oVar instanceof CallableMemberDescriptor) || (oVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.j) || dVar == r.m) {
                return true;
            }
            if (dVar == r.l || dVar == null) {
                return false;
            }
            kotlin.reflect.jvm.internal.impl.types.a0 a0VarA = dVar instanceof kotlin.reflect.jvm.internal.impl.resolve.scopes.i.e ? ((kotlin.reflect.jvm.internal.impl.resolve.scopes.i.e) dVar).a() : dVar.getType();
            return kotlin.reflect.jvm.internal.impl.resolve.c.I(a0VarA, dVar2) || kotlin.reflect.jvm.internal.impl.types.r.a(a0VarA);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar2;
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar == null) {
                g(1);
                throw null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar3 = (kotlin.reflect.jvm.internal.impl.descriptors.d) kotlin.reflect.jvm.internal.impl.resolve.c.q(oVar, kotlin.reflect.jvm.internal.impl.descriptors.d.class);
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar4 = (kotlin.reflect.jvm.internal.impl.descriptors.d) kotlin.reflect.jvm.internal.impl.resolve.c.r(kVar, kotlin.reflect.jvm.internal.impl.descriptors.d.class, false);
            if (dVar4 == null) {
                return false;
            }
            if (dVar3 != null && kotlin.reflect.jvm.internal.impl.resolve.c.x(dVar3) && (dVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) kotlin.reflect.jvm.internal.impl.resolve.c.q(dVar3, kotlin.reflect.jvm.internal.impl.descriptors.d.class)) != null && kotlin.reflect.jvm.internal.impl.resolve.c.H(dVar4, dVar2)) {
                return true;
            }
            o oVarM = kotlin.reflect.jvm.internal.impl.resolve.c.M(oVar);
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar5 = (kotlin.reflect.jvm.internal.impl.descriptors.d) kotlin.reflect.jvm.internal.impl.resolve.c.q(oVarM, kotlin.reflect.jvm.internal.impl.descriptors.d.class);
            if (dVar5 == null) {
                return false;
            }
            if (kotlin.reflect.jvm.internal.impl.resolve.c.H(dVar4, dVar5) && h(dVar, oVarM, dVar4)) {
                return true;
            }
            return e(dVar, oVar, dVar4.b());
        }
    }

    static class g extends p {
        g(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar == null) {
                g(1);
                throw null;
            }
            if (kotlin.reflect.jvm.internal.impl.resolve.c.g(kVar).J(kotlin.reflect.jvm.internal.impl.resolve.c.g(oVar))) {
                return r.o.a(oVar, kVar);
            }
            return false;
        }
    }

    static class h extends p {
        h(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar != null) {
                return true;
            }
            g(1);
            throw null;
        }
    }

    static class i extends p {
        i(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar != null) {
                throw new IllegalStateException("This method shouldn't be invoked for LOCAL visibility");
            }
            g(1);
            throw null;
        }
    }

    static class j extends p {
        j(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar != null) {
                throw new IllegalStateException("Visibility is unknown yet");
            }
            g(1);
            throw null;
        }
    }

    static class k extends p {
        k(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar != null) {
                return false;
            }
            g(1);
            throw null;
        }
    }

    static class l extends p {
        l(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar != null) {
                return false;
            }
            g(1);
            throw null;
        }
    }

    static {
        d dVar = new d(y0.e.c);
        f14973a = dVar;
        e eVar = new e(y0.f.c);
        b = eVar;
        f fVar = new f(y0.g.c);
        c = fVar;
        g gVar = new g(y0.b.c);
        f14974d = gVar;
        h hVar = new h(y0.h.c);
        f14975e = hVar;
        i iVar = new i(y0.d.c);
        f14976f = iVar;
        j jVar = new j(y0.a.c);
        f14977g = jVar;
        k kVar = new k(y0.c.c);
        f14978h = kVar;
        l lVar = new l(y0.i.c);
        i = lVar;
        Collections.unmodifiableSet(kotlin.collections.u0.f(dVar, eVar, gVar, iVar));
        HashMap mapE = kotlin.reflect.jvm.internal.impl.utils.a.e(4);
        mapE.put(eVar, 0);
        mapE.put(dVar, 0);
        mapE.put(gVar, 1);
        mapE.put(fVar, 1);
        mapE.put(hVar, 2);
        j = Collections.unmodifiableMap(mapE);
        k = hVar;
        l = new a();
        m = new b();
        n = new c();
        Iterator it = ServiceLoader.load(kotlin.reflect.jvm.internal.impl.util.f.class, kotlin.reflect.jvm.internal.impl.util.f.class.getClassLoader()).iterator();
        o = it.hasNext() ? (kotlin.reflect.jvm.internal.impl.util.f) it.next() : kotlin.reflect.jvm.internal.impl.util.f.a.f15736a;
        p = new HashMap();
        i(dVar);
        i(eVar);
        i(fVar);
        i(gVar);
        i(hVar);
        i(iVar);
        i(jVar);
        i(kVar);
        i(lVar);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003a  */
    private static /* synthetic */ void a(int i2) {
        String str = i2 != 16 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i2 != 16 ? 3 : 2];
        if (i2 != 1 && i2 != 3 && i2 != 5 && i2 != 7) {
            switch (i2) {
                case 9:
                    objArr[0] = "from";
                    break;
                case 10:
                case 12:
                    objArr[0] = "first";
                    break;
                case 11:
                case 13:
                    objArr[0] = "second";
                    break;
                case 14:
                case 15:
                    objArr[0] = "visibility";
                    break;
                case 16:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities";
                    break;
                default:
                    objArr[0] = "what";
                    break;
            }
        } else {
            objArr[0] = "from";
        }
        if (i2 != 16) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities";
        } else {
            objArr[1] = "toDescriptorVisibility";
        }
        switch (i2) {
            case 2:
            case 3:
                objArr[2] = "isVisibleIgnoringReceiver";
                break;
            case 4:
            case 5:
                objArr[2] = "isVisibleWithAnyReceiver";
                break;
            case 6:
            case 7:
                objArr[2] = "inSameFile";
                break;
            case 8:
            case 9:
                objArr[2] = "findInvisibleMember";
                break;
            case 10:
            case 11:
                objArr[2] = "compareLocal";
                break;
            case 12:
            case 13:
                objArr[2] = "compare";
                break;
            case 14:
                objArr[2] = "isPrivate";
                break;
            case 15:
                objArr[2] = "toDescriptorVisibility";
                break;
            case 16:
                break;
            default:
                objArr[2] = "isVisible";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 == 16) {
            throw new IllegalStateException(str2);
        }
    }

    public static Integer d(s sVar, s sVar2) {
        if (sVar == null) {
            a(12);
            throw null;
        }
        if (sVar2 == null) {
            a(13);
            throw null;
        }
        Integer numA = sVar.a(sVar2);
        if (numA != null) {
            return numA;
        }
        Integer numA2 = sVar2.a(sVar);
        if (numA2 != null) {
            return Integer.valueOf(-numA2.intValue());
        }
        return null;
    }

    public static o e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        o oVarE;
        if (oVar == null) {
            a(8);
            throw null;
        }
        if (kVar == null) {
            a(9);
            throw null;
        }
        for (o oVar2 = (o) oVar.a(); oVar2 != null && oVar2.getVisibility() != f14976f; oVar2 = (o) kotlin.reflect.jvm.internal.impl.resolve.c.q(oVar2, o.class)) {
            if (!oVar2.getVisibility().e(dVar, oVar2, kVar)) {
                return oVar2;
            }
        }
        if (!(oVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.f0) || (oVarE = e(dVar, ((kotlin.reflect.jvm.internal.impl.descriptors.impl.f0) oVar).R(), kVar)) == null) {
            return null;
        }
        return oVarE;
    }

    public static boolean f(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2) {
        if (kVar == null) {
            a(6);
            throw null;
        }
        if (kVar2 == null) {
            a(7);
            throw null;
        }
        p0 p0VarJ = kotlin.reflect.jvm.internal.impl.resolve.c.j(kVar2);
        if (p0VarJ != p0.f14972a) {
            return p0VarJ.equals(kotlin.reflect.jvm.internal.impl.resolve.c.j(kVar));
        }
        return false;
    }

    public static boolean g(s sVar) {
        if (sVar != null) {
            return sVar == f14973a || sVar == b;
        }
        a(14);
        throw null;
    }

    public static boolean h(o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (oVar == null) {
            a(2);
            throw null;
        }
        if (kVar != null) {
            return e(m, oVar, kVar) == null;
        }
        a(3);
        throw null;
    }

    private static void i(s sVar) {
        p.put(sVar.b(), sVar);
    }

    public static s j(z0 z0Var) {
        if (z0Var == null) {
            a(15);
            throw null;
        }
        s sVar = p.get(z0Var);
        if (sVar != null) {
            if (sVar != null) {
                return sVar;
            }
            a(16);
            throw null;
        }
        throw new IllegalArgumentException("Inapplicable visibility: " + z0Var);
    }
}
