package cn.mucang.android.core.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g {

    public interface a<T, R> {
        R transform(T t);
    }

    public static <T> List<T> a(List<T> list) {
        ArrayList arrayList = new ArrayList();
        if (b(list)) {
            return arrayList;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static <T> boolean b(Collection<T> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean c(Map<?, ?> map) {
        return map == null || map.isEmpty();
    }

    public static <T> boolean d(Collection<T> collection) {
        return !b(collection);
    }

    public static boolean e(Map<?, ?> map) {
        return !c(map);
    }

    public static <T, R> List<R> f(List<T> list, a<T, R> aVar) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(aVar.transform(it.next()));
        }
        return arrayList;
    }

    public static int g(Collection collection) {
        if (collection != null) {
            return collection.size();
        }
        return 0;
    }

    public static <T> List<T> h(List<? extends T> list) {
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }
}
