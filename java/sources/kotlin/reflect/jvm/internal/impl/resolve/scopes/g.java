package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.z;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class g {
    public static final Set<kotlin.reflect.jvm.internal.impl.name.f> a(Iterable<? extends MemberScope> iterable) {
        r.e(iterable, "<this>");
        HashSet hashSet = new HashSet();
        Iterator<? extends MemberScope> it = iterable.iterator();
        while (it.hasNext()) {
            Set<kotlin.reflect.jvm.internal.impl.name.f> setE = it.next().e();
            if (setE == null) {
                return null;
            }
            z.B(hashSet, setE);
        }
        return hashSet;
    }
}
