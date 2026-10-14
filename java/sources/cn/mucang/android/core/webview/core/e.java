package cn.mucang.android.core.webview.core;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<WeakReference<o>> f2721a = new ArrayList();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static e f2722a = new e();
    }

    public static e a() {
        return a.f2722a;
    }

    void b(String str) {
        if (this.f2721a.isEmpty()) {
            return;
        }
        synchronized (this.f2721a) {
            Iterator<WeakReference<o>> it = this.f2721a.iterator();
            while (it.hasNext()) {
                o oVar = it.next().get();
                if (oVar != null) {
                    oVar.b(str);
                } else {
                    it.remove();
                }
            }
        }
    }

    void c(String str) {
        if (this.f2721a.isEmpty()) {
            return;
        }
        synchronized (this.f2721a) {
            Iterator<WeakReference<o>> it = this.f2721a.iterator();
            while (it.hasNext()) {
                o oVar = it.next().get();
                if (oVar != null) {
                    oVar.a(str);
                } else {
                    it.remove();
                }
            }
        }
    }
}
