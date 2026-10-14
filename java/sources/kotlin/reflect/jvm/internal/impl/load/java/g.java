package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f15057a;
    private static final HashMap<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.name.c> b;

    static {
        g gVar = new g();
        f15057a = gVar;
        b = new HashMap<>();
        gVar.c(kotlin.reflect.jvm.internal.impl.builtins.h.a.L, gVar.a("java.util.ArrayList", "java.util.LinkedList"));
        gVar.c(kotlin.reflect.jvm.internal.impl.builtins.h.a.N, gVar.a("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        gVar.c(kotlin.reflect.jvm.internal.impl.builtins.h.a.O, gVar.a("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        gVar.c(new kotlin.reflect.jvm.internal.impl.name.c("java.util.function.Function"), gVar.a("java.util.function.UnaryOperator"));
        gVar.c(new kotlin.reflect.jvm.internal.impl.name.c("java.util.function.BiFunction"), gVar.a("java.util.function.BinaryOperator"));
    }

    private g() {
    }

    private final List<kotlin.reflect.jvm.internal.impl.name.c> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(new kotlin.reflect.jvm.internal.impl.name.c(str));
        }
        return arrayList;
    }

    private final void c(kotlin.reflect.jvm.internal.impl.name.c cVar, List<kotlin.reflect.jvm.internal.impl.name.c> list) {
        HashMap<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.name.c> map = b;
        for (Object obj : list) {
            map.put((kotlin.reflect.jvm.internal.impl.name.c) obj, cVar);
        }
    }

    public final kotlin.reflect.jvm.internal.impl.name.c b(kotlin.reflect.jvm.internal.impl.name.c classFqName) {
        kotlin.jvm.internal.r.e(classFqName, "classFqName");
        return b.get(classFqName);
    }
}
