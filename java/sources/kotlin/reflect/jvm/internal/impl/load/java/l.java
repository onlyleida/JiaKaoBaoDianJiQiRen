package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.z0;

/* JADX INFO: loaded from: classes6.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.descriptors.s f15062a;
    public static final kotlin.reflect.jvm.internal.impl.descriptors.s b;
    public static final kotlin.reflect.jvm.internal.impl.descriptors.s c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<z0, kotlin.reflect.jvm.internal.impl.descriptors.s> f15063d;

    static class a extends kotlin.reflect.jvm.internal.impl.descriptors.p {
        a(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$1";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar != null) {
                return l.d(oVar, kVar);
            }
            g(1);
            throw null;
        }
    }

    static class b extends kotlin.reflect.jvm.internal.impl.descriptors.p {
        b(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$2";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar != null) {
                return l.e(dVar, oVar, kVar);
            }
            g(1);
            throw null;
        }
    }

    static class c extends kotlin.reflect.jvm.internal.impl.descriptors.p {
        c(z0 z0Var) {
            super(z0Var);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$3";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
        public boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (oVar == null) {
                g(0);
                throw null;
            }
            if (kVar != null) {
                return l.e(dVar, oVar, kVar);
            }
            g(1);
            throw null;
        }
    }

    static {
        a aVar = new a(kotlin.reflect.jvm.internal.impl.descriptors.b1.a.c);
        f15062a = aVar;
        b bVar = new b(kotlin.reflect.jvm.internal.impl.descriptors.b1.c.c);
        b = bVar;
        c cVar = new c(kotlin.reflect.jvm.internal.impl.descriptors.b1.b.c);
        c = cVar;
        f15063d = new HashMap();
        f(aVar);
        f(bVar);
        f(cVar);
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "from";
                break;
            case 2:
                objArr[0] = "first";
                break;
            case 3:
                objArr[0] = "second";
                break;
            case 4:
                objArr[0] = "visibility";
                break;
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
                break;
            default:
                objArr[0] = "what";
                break;
        }
        if (i == 5 || i == 6) {
            objArr[1] = "toDescriptorVisibility";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
        }
        if (i == 2 || i == 3) {
            objArr[2] = "areInSamePackage";
        } else if (i == 4) {
            objArr[2] = "toDescriptorVisibility";
        } else if (i != 5 && i != 6) {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        String str2 = String.format(str, objArr);
        if (i != 5 && i != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2) {
        if (kVar == null) {
            a(2);
            throw null;
        }
        if (kVar2 == null) {
            a(3);
            throw null;
        }
        b0 b0Var = (b0) kotlin.reflect.jvm.internal.impl.resolve.c.r(kVar, b0.class, false);
        b0 b0Var2 = (b0) kotlin.reflect.jvm.internal.impl.resolve.c.r(kVar2, b0.class, false);
        return (b0Var2 == null || b0Var == null || !b0Var.e().equals(b0Var2.e())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (oVar == null) {
            a(0);
            throw null;
        }
        if (kVar == null) {
            a(1);
            throw null;
        }
        if (d(kotlin.reflect.jvm.internal.impl.resolve.c.M(oVar), kVar)) {
            return true;
        }
        return kotlin.reflect.jvm.internal.impl.descriptors.r.c.e(dVar, oVar, kVar);
    }

    private static void f(kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
        f15063d.put(sVar.b(), sVar);
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.s g(z0 z0Var) {
        if (z0Var == null) {
            a(4);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = f15063d.get(z0Var);
        if (sVar != null) {
            if (sVar != null) {
                return sVar;
            }
            a(6);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.s sVarJ = kotlin.reflect.jvm.internal.impl.descriptors.r.j(z0Var);
        if (sVarJ != null) {
            return sVarJ;
        }
        a(5);
        throw null;
    }
}
