package kotlin.reflect.jvm.internal.impl.load.java.components;

import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.load.java.structure.l;
import kotlin.reflect.jvm.internal.impl.load.java.structure.n;
import kotlin.reflect.jvm.internal.impl.load.java.structure.q;

/* JADX INFO: loaded from: classes6.dex */
public interface d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f15049a = new a();

    static class a implements d {
        a() {
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                    objArr[0] = "member";
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                    objArr[0] = "descriptor";
                    break;
                case 3:
                    objArr[0] = "element";
                    break;
                case 5:
                    objArr[0] = "field";
                    break;
                case 7:
                    objArr[0] = "javaClass";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1";
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "recordMethod";
                    break;
                case 3:
                case 4:
                    objArr[2] = "recordConstructor";
                    break;
                case 5:
                case 6:
                    objArr[2] = "recordField";
                    break;
                case 7:
                case 8:
                    objArr[2] = "recordClass";
                    break;
                default:
                    objArr[2] = "getClassResolvedFromSource";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.d
        public void a(l lVar, j jVar) {
            if (lVar == null) {
                f(3);
                throw null;
            }
            if (jVar != null) {
                return;
            }
            f(4);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.d
        public void b(n nVar, j0 j0Var) {
            if (nVar == null) {
                f(5);
                throw null;
            }
            if (j0Var != null) {
                return;
            }
            f(6);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.d
        public void c(q qVar, n0 n0Var) {
            if (qVar == null) {
                f(1);
                throw null;
            }
            if (n0Var != null) {
                return;
            }
            f(2);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.d
        public kotlin.reflect.jvm.internal.impl.descriptors.d d(kotlin.reflect.jvm.internal.impl.name.c cVar) {
            if (cVar != null) {
                return null;
            }
            f(0);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.d
        public void e(g gVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
            if (gVar == null) {
                f(7);
                throw null;
            }
            if (dVar != null) {
                return;
            }
            f(8);
            throw null;
        }
    }

    void a(l lVar, j jVar);

    void b(n nVar, j0 j0Var);

    void c(q qVar, n0 n0Var);

    kotlin.reflect.jvm.internal.impl.descriptors.d d(kotlin.reflect.jvm.internal.impl.name.c cVar);

    void e(g gVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar);
}
