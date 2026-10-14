package kotlinx.coroutines.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class k<E> {
    public static Object a(Object obj) {
        return obj;
    }

    public static /* synthetic */ Object b(Object obj, int i, kotlin.jvm.internal.o oVar) {
        if ((i & 1) != 0) {
            obj = null;
        }
        a(obj);
        return obj;
    }

    public static final Object c(Object obj, E e2) {
        if (l0.a() && !(!(e2 instanceof List))) {
            throw new AssertionError();
        }
        if (obj == null) {
            a(e2);
            return e2;
        }
        if (obj instanceof ArrayList) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
            ((ArrayList) obj).add(e2);
            a(obj);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(e2);
        a(arrayList);
        return arrayList;
    }
}
