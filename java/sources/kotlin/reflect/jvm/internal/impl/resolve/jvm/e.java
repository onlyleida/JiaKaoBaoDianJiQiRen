package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.Collection;
import java.util.List;
import kotlin.collections.u;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.name.f;

/* JADX INFO: loaded from: classes6.dex */
public interface e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15512a = a.f15513a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f15513a = new a();
        private static final kotlin.reflect.jvm.internal.impl.resolve.jvm.a b = new kotlin.reflect.jvm.internal.impl.resolve.jvm.a(u.j());

        private a() {
        }

        public final kotlin.reflect.jvm.internal.impl.resolve.jvm.a a() {
            return b;
        }
    }

    List<f> a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    void b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, List<kotlin.reflect.jvm.internal.impl.descriptors.c> list);

    void c(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, f fVar, Collection<n0> collection);

    void d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, f fVar, Collection<n0> collection);

    List<f> e(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);
}
