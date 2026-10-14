package cn.mucang.android.jiakaoyi.signal.handle.gps;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f5727a = false;
    private static final Map<Integer, LinkedList<a>> b = new HashMap();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f5728a;
        public int b;
        public long c;

        public a(String str, int i, long j) {
            this.f5728a = str;
            this.b = i;
            this.c = j;
        }
    }

    public static void a(String str) {
        d(str, 3);
    }

    public static void b(String str) {
        d(str, 1);
    }

    public static List<a> c(int i) {
        Map<Integer, LinkedList<a>> map = b;
        synchronized (map) {
            LinkedList<a> linkedList = map.get(Integer.valueOf(i));
            if (linkedList == null) {
                return null;
            }
            return new ArrayList(linkedList);
        }
    }

    private static void d(String str, int i) {
        Map<Integer, LinkedList<a>> map = b;
        synchronized (map) {
            LinkedList<a> linkedList = map.get(Integer.valueOf(i));
            if (linkedList == null) {
                linkedList = new LinkedList<>();
                map.put(Integer.valueOf(i), linkedList);
            }
            a aVar = new a(str, i, System.currentTimeMillis());
            linkedList.addFirst(aVar);
            if (linkedList.size() > 100) {
                linkedList.removeLast();
            }
            if (f5727a) {
                LiveBus.d(a.class).l(aVar);
            }
        }
    }

    public static void e(boolean z) {
        f5727a = z;
    }

    public static void f(String str) {
        d(str, 4);
    }

    public static void g(String str) {
        d(str, 2);
    }
}
