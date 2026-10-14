package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public interface r0 {

    public static final class a implements r0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f14979a = new a();

        private a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.r0
        public Collection<kotlin.reflect.jvm.internal.impl.types.a0> a(kotlin.reflect.jvm.internal.impl.types.q0 currentTypeConstructor, Collection<? extends kotlin.reflect.jvm.internal.impl.types.a0> superTypes, Function1<? super kotlin.reflect.jvm.internal.impl.types.q0, ? extends Iterable<? extends kotlin.reflect.jvm.internal.impl.types.a0>> neighbors, Function1<? super kotlin.reflect.jvm.internal.impl.types.a0, kotlin.v> reportLoop) {
            kotlin.jvm.internal.r.e(currentTypeConstructor, "currentTypeConstructor");
            kotlin.jvm.internal.r.e(superTypes, "superTypes");
            kotlin.jvm.internal.r.e(neighbors, "neighbors");
            kotlin.jvm.internal.r.e(reportLoop, "reportLoop");
            return superTypes;
        }
    }

    Collection<kotlin.reflect.jvm.internal.impl.types.a0> a(kotlin.reflect.jvm.internal.impl.types.q0 q0Var, Collection<? extends kotlin.reflect.jvm.internal.impl.types.a0> collection, Function1<? super kotlin.reflect.jvm.internal.impl.types.q0, ? extends Iterable<? extends kotlin.reflect.jvm.internal.impl.types.a0>> function1, Function1<? super kotlin.reflect.jvm.internal.impl.types.a0, kotlin.v> function2);
}
