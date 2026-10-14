package cn.mucang.android.core.webview.core;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.protocol.bridge.k0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<Class<? extends k0>> f2734a = new ArrayList();
    private Map<String, d.a> b = new ConcurrentHashMap();
    private List<d> c = new ArrayList(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<d> f2735d = new ArrayList(10);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<WeakReference<b>> f2736e = new ArrayList();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static l f2737a = new l();
    }

    public interface b {
        void a();
    }

    public static l d() {
        return a.f2737a;
    }

    public void a(Class<? extends k0> cls) {
        if (this.f2734a.contains(cls)) {
            return;
        }
        this.f2734a.add(cls);
    }

    public List<d> b() {
        return this.f2735d;
    }

    List<d> c() {
        return this.c;
    }

    Map<String, d.a> e() {
        return this.b;
    }

    List<Class<? extends k0>> f() {
        return this.f2734a;
    }

    void g() {
        synchronized (this.f2736e) {
            Iterator<WeakReference<b>> it = this.f2736e.iterator();
            while (it.hasNext()) {
                b bVar = it.next().get();
                if (bVar != null) {
                    bVar.a();
                } else {
                    it.remove();
                }
            }
        }
    }

    public void h(d dVar) {
        if (dVar == null) {
            return;
        }
        this.c.add(dVar);
    }

    public void i(String str, d.a aVar) {
        if (n0.e(str)) {
            t.a("ThirdJsBridgeManager", "path must not be null or empty.");
        } else {
            this.b.put(str, aVar);
        }
    }
}
