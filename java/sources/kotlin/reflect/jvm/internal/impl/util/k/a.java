package kotlin.reflect.jvm.internal.impl.util.k;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.utils.d;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Collection<T> a(Collection<? extends T> collection, Collection<? extends T> collection2) {
        r.e(collection2, "collection");
        if (collection2.isEmpty()) {
            return collection;
        }
        if (collection == 0) {
            return collection2;
        }
        if (collection instanceof LinkedHashSet) {
            ((LinkedHashSet) collection).addAll(collection2);
            return collection;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        linkedHashSet.addAll(collection2);
        return linkedHashSet;
    }

    public static final d<MemberScope> b(Iterable<? extends MemberScope> scopes) {
        r.e(scopes, "scopes");
        d<MemberScope> dVar = new d<>();
        for (MemberScope memberScope : scopes) {
            MemberScope memberScope2 = memberScope;
            if ((memberScope2 == null || memberScope2 == MemberScope.a.b) ? false : true) {
                dVar.add(memberScope);
            }
        }
        return dVar;
    }
}
