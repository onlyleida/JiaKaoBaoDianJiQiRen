package kotlin.reflect.jvm.internal.impl.descriptors.a1;

import java.util.Collection;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a1.a$a, reason: collision with other inner class name */
    public static final class C0322a implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0322a f14860a = new C0322a();

        private C0322a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.a
        public Collection<n0> a(f name, kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
            r.e(name, "name");
            r.e(classDescriptor, "classDescriptor");
            return u.j();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.a
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> c(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
            r.e(classDescriptor, "classDescriptor");
            return u.j();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.a
        public Collection<a0> d(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
            r.e(classDescriptor, "classDescriptor");
            return u.j();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.a
        public Collection<f> e(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
            r.e(classDescriptor, "classDescriptor");
            return u.j();
        }
    }

    Collection<n0> a(f fVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> c(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    Collection<a0> d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    Collection<f> e(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);
}
