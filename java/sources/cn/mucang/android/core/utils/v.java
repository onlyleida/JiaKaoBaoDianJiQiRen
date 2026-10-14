package cn.mucang.android.core.utils;

import cn.mucang.android.core.config.MucangConfig;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<String, a> f2674a = new ConcurrentHashMap();

    public static class a {
        private ReferenceQueue c = new ReferenceQueue();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AtomicInteger f2675a = new AtomicInteger(0);
        private AtomicInteger b = new AtomicInteger(0);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<PhantomReference> f2676d = new ArrayList();

        void a(Object obj) {
            this.f2676d.add(new PhantomReference(obj, this.c));
            this.f2675a.incrementAndGet();
        }

        void b() {
            Reference referencePoll = this.c.poll();
            while (referencePoll != null) {
                this.f2676d.remove(referencePoll);
                this.b.incrementAndGet();
                referencePoll = this.c.poll();
            }
        }

        public int c() {
            return this.f2675a.get();
        }

        public int d() {
            return this.b.get();
        }

        public int e() {
            b();
            return this.f2675a.get() - this.b.get();
        }
    }

    public static String a() {
        if (!MucangConfig.v()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, a> entry : f2674a.entrySet()) {
            a value = entry.getValue();
            value.b();
            sb.append("className:");
            sb.append(entry.getKey());
            sb.append(",leakCount=");
            sb.append(value.e());
            sb.append(",createCount=");
            sb.append(value.c());
            sb.append(",destroyedCount=");
            sb.append(value.d());
            sb.append("\n=============================");
            sb.append("\n");
        }
        return sb.toString();
    }

    public static void b(Object obj) {
        if (MucangConfig.v()) {
            String name = obj.getClass().getName();
            a aVar = f2674a.get(name);
            if (aVar == null) {
                aVar = new a();
                f2674a.put(name, aVar);
            }
            aVar.a(obj);
        }
    }
}
