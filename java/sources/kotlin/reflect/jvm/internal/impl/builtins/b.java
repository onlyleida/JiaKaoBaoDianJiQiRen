package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f14779a = new b();
    private static final Set<kotlin.reflect.jvm.internal.impl.name.b> b;

    static {
        Set<PrimitiveType> set = PrimitiveType.NUMBER_TYPES;
        ArrayList arrayList = new ArrayList(v.u(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(h.c((PrimitiveType) it.next()));
        }
        kotlin.reflect.jvm.internal.impl.name.c cVarL = h.a.f14809g.l();
        r.d(cVarL, "string.toSafe()");
        List listY0 = CollectionsKt___CollectionsKt.y0(arrayList, cVarL);
        kotlin.reflect.jvm.internal.impl.name.c cVarL2 = h.a.i.l();
        r.d(cVarL2, "_boolean.toSafe()");
        List listY1 = CollectionsKt___CollectionsKt.y0(listY0, cVarL2);
        kotlin.reflect.jvm.internal.impl.name.c cVarL3 = h.a.k.l();
        r.d(cVarL3, "_enum.toSafe()");
        List listY2 = CollectionsKt___CollectionsKt.y0(listY1, cVarL3);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it2 = listY2.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(kotlin.reflect.jvm.internal.impl.name.b.m((kotlin.reflect.jvm.internal.impl.name.c) it2.next()));
        }
        b = linkedHashSet;
    }

    private b() {
    }

    public final Set<kotlin.reflect.jvm.internal.impl.name.b> a() {
        return b;
    }

    public final Set<kotlin.reflect.jvm.internal.impl.name.b> b() {
        return b;
    }
}
