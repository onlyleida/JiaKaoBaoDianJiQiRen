package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    public static final <T> void a(Collection<T> collection, T t) {
        r.e(collection, "<this>");
        if (t != null) {
            collection.add(t);
        }
    }

    private static final int b(int i) {
        if (i < 3) {
            return 3;
        }
        return i + (i / 3) + 1;
    }

    public static final <T> List<T> c(ArrayList<T> arrayList) {
        r.e(arrayList, "<this>");
        int size = arrayList.size();
        if (size == 0) {
            return u.j();
        }
        if (size == 1) {
            return t.d(s.c0(arrayList));
        }
        arrayList.trimToSize();
        return arrayList;
    }

    public static final <K> Map<K, Integer> d(Iterable<? extends K> iterable) {
        r.e(iterable, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<? extends K> it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            linkedHashMap.put(it.next(), Integer.valueOf(i));
            i++;
        }
        return linkedHashMap;
    }

    public static final <K, V> HashMap<K, V> e(int i) {
        return new HashMap<>(b(i));
    }

    public static final <E> HashSet<E> f(int i) {
        return new HashSet<>(b(i));
    }

    public static final <E> LinkedHashSet<E> g(int i) {
        return new LinkedHashSet<>(b(i));
    }
}
