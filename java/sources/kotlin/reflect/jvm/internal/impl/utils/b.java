package kotlin.reflect.jvm.internal.impl.utils;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: Add missing generic type declarations: [N] */
    static class a<N> extends AbstractC0361b<N, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1 f15748a;
        final /* synthetic */ boolean[] b;

        a(Function1 function1, boolean[] zArr) {
            this.f15748a = function1;
            this.b = zArr;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        public boolean c(N n) {
            if (((Boolean) this.f15748a.invoke(n)).booleanValue()) {
                this.b[0] = true;
            }
            return !this.b[0];
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Boolean a() {
            return Boolean.valueOf(this.b[0]);
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.utils.b$b, reason: collision with other inner class name */
    public static abstract class AbstractC0361b<N, R> implements d<N, R> {
        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        public void b(N n) {
        }
    }

    public interface c<N> {
        Iterable<? extends N> a(N n);
    }

    public interface d<N, R> {
        R a();

        void b(N n);

        boolean c(N n);
    }

    public interface e<N> {
        boolean a(N n);
    }

    public static class f<N> implements e<N> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set<N> f15749a;

        public f() {
            this(new HashSet());
        }

        private static /* synthetic */ void b(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "visited", "kotlin/reflect/jvm/internal/impl/utils/DFS$VisitedWithSet", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.e
        public boolean a(N n) {
            return this.f15749a.add(n);
        }

        public f(Set<N> set) {
            if (set != null) {
                this.f15749a = set;
            } else {
                b(0);
                throw null;
            }
        }
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        switch (i) {
            case 1:
            case 5:
            case 8:
            case 11:
            case 15:
            case 18:
            case 21:
            case 23:
                objArr[0] = "neighbors";
                break;
            case 2:
            case 12:
            case 16:
            case 19:
            case 24:
                objArr[0] = "visited";
                break;
            case 3:
            case 6:
            case 13:
            case 25:
                objArr[0] = "handler";
                break;
            case 4:
            case 7:
            case 17:
            case 20:
            default:
                objArr[0] = "nodes";
                break;
            case 9:
                objArr[0] = "predicate";
                break;
            case 10:
            case 14:
                objArr[0] = "node";
                break;
            case 22:
                objArr[0] = "current";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS";
        switch (i) {
            case 7:
            case 8:
            case 9:
                objArr[2] = "ifAny";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "dfsFromNode";
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                objArr[2] = "topologicalOrder";
                break;
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "doDfs";
                break;
            default:
                objArr[2] = "dfs";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static <N, R> R b(Collection<N> collection, c<N> cVar, d<N, R> dVar) {
        if (collection == null) {
            a(4);
            throw null;
        }
        if (cVar == null) {
            a(5);
            throw null;
        }
        if (dVar != null) {
            return (R) c(collection, cVar, new f(), dVar);
        }
        a(6);
        throw null;
    }

    public static <N, R> R c(Collection<N> collection, c<N> cVar, e<N> eVar, d<N, R> dVar) {
        if (collection == null) {
            a(0);
            throw null;
        }
        if (cVar == null) {
            a(1);
            throw null;
        }
        if (eVar == null) {
            a(2);
            throw null;
        }
        if (dVar == null) {
            a(3);
            throw null;
        }
        Iterator<N> it = collection.iterator();
        while (it.hasNext()) {
            d(it.next(), cVar, eVar, dVar);
        }
        return dVar.a();
    }

    public static <N> void d(N n, c<N> cVar, e<N> eVar, d<N, ?> dVar) {
        if (n == null) {
            a(22);
            throw null;
        }
        if (cVar == null) {
            a(23);
            throw null;
        }
        if (eVar == null) {
            a(24);
            throw null;
        }
        if (dVar == null) {
            a(25);
            throw null;
        }
        if (eVar.a(n) && dVar.c(n)) {
            Iterator<? extends N> it = cVar.a(n).iterator();
            while (it.hasNext()) {
                d(it.next(), cVar, eVar, dVar);
            }
            dVar.b(n);
        }
    }

    public static <N> Boolean e(Collection<N> collection, c<N> cVar, Function1<N, Boolean> function1) {
        if (collection == null) {
            a(7);
            throw null;
        }
        if (cVar == null) {
            a(8);
            throw null;
        }
        if (function1 != null) {
            return (Boolean) b(collection, cVar, new a(function1, new boolean[1]));
        }
        a(9);
        throw null;
    }
}
