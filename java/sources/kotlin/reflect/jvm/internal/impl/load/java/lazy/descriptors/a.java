package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.u;
import kotlin.collections.u0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.load.java.structure.n;
import kotlin.reflect.jvm.internal.impl.load.java.structure.w;
import kotlin.reflect.jvm.internal.impl.name.f;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a$a, reason: collision with other inner class name */
    public static final class C0332a implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0332a f15112a = new C0332a();

        private C0332a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        public Set<f> a() {
            return u0.b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        public Set<f> b() {
            return u0.b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        public Set<f> c() {
            return u0.b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        public w e(f name) {
            r.e(name, "name");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        public n f(f name) {
            r.e(name, "name");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public List<kotlin.reflect.jvm.internal.impl.load.java.structure.r> d(f name) {
            r.e(name, "name");
            return u.j();
        }
    }

    Set<f> a();

    Set<f> b();

    Set<f> c();

    Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.r> d(f fVar);

    w e(f fVar);

    n f(f fVar);
}
