package cn.mucang.android.jiakaoyi.signal.com.x;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    private static final c b = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Integer, a<?>> f5360a = new ConcurrentHashMap();

    public static class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5361a;
        public final int b;
        public final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final cn.mucang.android.jiakaoyi.framework.h.b<String> f5362d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final cn.mucang.android.jiakaoyi.framework.h.a<Boolean, T> f5363e;
    }

    public static synchronized a<?> a(int i) {
        return b.f5360a.get(Integer.valueOf(i));
    }

    public static synchronized boolean b(int i) {
        return b.f5360a.containsKey(Integer.valueOf(i));
    }
}
