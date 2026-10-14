package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public interface e extends Iterable<c>, KMappedMarker {
    public static final a O = a.f14873a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f14873a = new a();
        private static final e b = new C0323a();

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.annotations.e$a$a, reason: collision with other inner class name */
        public static final class C0323a implements e {
            C0323a() {
            }

            public Void a(kotlin.reflect.jvm.internal.impl.name.c fqName) {
                r.e(fqName, "fqName");
                return null;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
            public /* bridge */ /* synthetic */ c d(kotlin.reflect.jvm.internal.impl.name.c cVar) {
                return (c) a(cVar);
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
            public boolean h(kotlin.reflect.jvm.internal.impl.name.c cVar) {
                return b.b(this, cVar);
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
            public boolean isEmpty() {
                return true;
            }

            @Override // java.lang.Iterable
            public Iterator<c> iterator() {
                return u.j().iterator();
            }

            public String toString() {
                return "EMPTY";
            }
        }

        private a() {
        }

        public final e a(List<? extends c> annotations) {
            r.e(annotations, "annotations");
            return annotations.isEmpty() ? b : new f(annotations);
        }

        public final e b() {
            return b;
        }
    }

    public static final class b {
        public static c a(e eVar, kotlin.reflect.jvm.internal.impl.name.c fqName) {
            c next;
            r.e(eVar, "this");
            r.e(fqName, "fqName");
            Iterator<c> it = eVar.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (r.a(next.e(), fqName)) {
                    return next;
                }
            }
            next = null;
            return next;
        }

        public static boolean b(e eVar, kotlin.reflect.jvm.internal.impl.name.c fqName) {
            r.e(eVar, "this");
            r.e(fqName, "fqName");
            return eVar.d(fqName) != null;
        }
    }

    c d(kotlin.reflect.jvm.internal.impl.name.c cVar);

    boolean h(kotlin.reflect.jvm.internal.impl.name.c cVar);

    boolean isEmpty();
}
