package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.o0;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.r0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class g {
    public static final r0 a(kotlin.reflect.jvm.internal.impl.descriptors.d from, kotlin.reflect.jvm.internal.impl.descriptors.d to) {
        r.e(from, "from");
        r.e(to, "to");
        from.p().size();
        to.p().size();
        r0.a aVar = r0.b;
        List<t0> listP = from.p();
        r.d(listP, "from.declaredTypeParameters");
        ArrayList arrayList = new ArrayList(v.u(listP, 10));
        Iterator<T> it = listP.iterator();
        while (it.hasNext()) {
            arrayList.add(((t0) it.next()).i());
        }
        List<t0> listP2 = to.p();
        r.d(listP2, "to.declaredTypeParameters");
        ArrayList arrayList2 = new ArrayList(v.u(listP2, 10));
        Iterator<T> it2 = listP2.iterator();
        while (it2.hasNext()) {
            f0 f0VarN = ((t0) it2.next()).n();
            r.d(f0VarN, "it.defaultType");
            arrayList2.add(TypeUtilsKt.a(f0VarN));
        }
        return r0.a.e(aVar, o0.q(CollectionsKt___CollectionsKt.T0(arrayList, arrayList2)), false, 2, null);
    }
}
