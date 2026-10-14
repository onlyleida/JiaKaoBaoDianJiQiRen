package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.k;

/* JADX INFO: loaded from: classes6.dex */
public interface h {

    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Collection a(h hVar, d dVar, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContributedDescriptors");
            }
            if ((i & 1) != 0) {
                dVar = d.o;
            }
            if ((i & 2) != 0) {
                function1 = MemberScope.f15518a.a();
            }
            return hVar.g(dVar, function1);
        }
    }

    kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

    Collection<k> g(d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1);
}
