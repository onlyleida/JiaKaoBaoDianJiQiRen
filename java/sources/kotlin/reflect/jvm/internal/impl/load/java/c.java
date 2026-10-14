package kotlin.reflect.jvm.internal.impl.load.java;

import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.n0;
import kotlin.collections.o0;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f15028a = new c();
    private static final Map<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.name.f> b;
    private static final Map<kotlin.reflect.jvm.internal.impl.name.f, List<kotlin.reflect.jvm.internal.impl.name.f>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.name.c> f15029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.name.f> f15030e;

    static {
        kotlin.reflect.jvm.internal.impl.name.d dVar = kotlin.reflect.jvm.internal.impl.builtins.h.a.k;
        kotlin.reflect.jvm.internal.impl.name.c cVar = kotlin.reflect.jvm.internal.impl.builtins.h.a.G;
        Map<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.name.f> mapK = o0.k(kotlin.l.a(d.d(dVar, Constant.PROTOCOL_WEBVIEW_NAME), kotlin.reflect.jvm.internal.impl.name.f.g(Constant.PROTOCOL_WEBVIEW_NAME)), kotlin.l.a(d.d(dVar, "ordinal"), kotlin.reflect.jvm.internal.impl.name.f.g("ordinal")), kotlin.l.a(d.c(kotlin.reflect.jvm.internal.impl.builtins.h.a.C, "size"), kotlin.reflect.jvm.internal.impl.name.f.g("size")), kotlin.l.a(d.c(cVar, "size"), kotlin.reflect.jvm.internal.impl.name.f.g("size")), kotlin.l.a(d.d(kotlin.reflect.jvm.internal.impl.builtins.h.a.f14808f, "length"), kotlin.reflect.jvm.internal.impl.name.f.g("length")), kotlin.l.a(d.c(cVar, "keys"), kotlin.reflect.jvm.internal.impl.name.f.g("keySet")), kotlin.l.a(d.c(cVar, "values"), kotlin.reflect.jvm.internal.impl.name.f.g("values")), kotlin.l.a(d.c(cVar, "entries"), kotlin.reflect.jvm.internal.impl.name.f.g("entrySet")));
        b = mapK;
        Set<Map.Entry<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.name.f>> setEntrySet = mapK.entrySet();
        ArrayList<Pair> arrayList = new ArrayList(kotlin.collections.v.u(setEntrySet, 10));
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            arrayList.add(new Pair(((kotlin.reflect.jvm.internal.impl.name.c) entry.getKey()).g(), entry.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Pair pair : arrayList) {
            kotlin.reflect.jvm.internal.impl.name.f fVar = (kotlin.reflect.jvm.internal.impl.name.f) pair.getSecond();
            Object arrayList2 = linkedHashMap.get(fVar);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(fVar, arrayList2);
            }
            ((List) arrayList2).add((kotlin.reflect.jvm.internal.impl.name.f) pair.getFirst());
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(n0.d(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry2.getKey(), CollectionsKt___CollectionsKt.T((Iterable) entry2.getValue()));
        }
        c = linkedHashMap2;
        Set<kotlin.reflect.jvm.internal.impl.name.c> setKeySet = b.keySet();
        f15029d = setKeySet;
        ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(setKeySet, 10));
        Iterator<T> it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((kotlin.reflect.jvm.internal.impl.name.c) it2.next()).g());
        }
        f15030e = CollectionsKt___CollectionsKt.Q0(arrayList3);
    }

    private c() {
    }

    public final Map<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.name.f> a() {
        return b;
    }

    public final List<kotlin.reflect.jvm.internal.impl.name.f> b(kotlin.reflect.jvm.internal.impl.name.f name1) {
        kotlin.jvm.internal.r.e(name1, "name1");
        List<kotlin.reflect.jvm.internal.impl.name.f> list = c.get(name1);
        return list == null ? kotlin.collections.u.j() : list;
    }

    public final Set<kotlin.reflect.jvm.internal.impl.name.c> c() {
        return f15029d;
    }

    public final Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
        return f15030e;
    }
}
