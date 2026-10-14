package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final y<o<g>> f15666a = new y<>("KotlinTypeRefiner");

    public static final y<o<g>> a() {
        return f15666a;
    }

    public static final List<a0> b(g gVar, Iterable<? extends a0> types) {
        kotlin.jvm.internal.r.e(gVar, "<this>");
        kotlin.jvm.internal.r.e(types, "types");
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(types, 10));
        Iterator<? extends a0> it = types.iterator();
        while (it.hasNext()) {
            arrayList.add(gVar.g(it.next()));
        }
        return arrayList;
    }
}
