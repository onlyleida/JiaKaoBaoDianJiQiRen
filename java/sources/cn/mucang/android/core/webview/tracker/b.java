package cn.mucang.android.core.webview.tracker;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f2892a;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.webview.tracker.http.model.a f2893a;

        a(b bVar, cn.mucang.android.core.webview.tracker.http.model.a aVar) {
            this.f2893a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            new cn.mucang.android.core.webview.tracker.d.b().b(this.f2893a);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.tracker.b$b, reason: collision with other inner class name */
    class RunnableC0091b implements Runnable {
        RunnableC0091b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f2892a = new cn.mucang.android.core.webview.tracker.d.a().b();
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f2895a = new b(null);
    }

    /* synthetic */ b(a aVar) {
        this();
    }

    public static b c() {
        return c.f2895a;
    }

    private void d() {
        MucangConfig.f(new RunnableC0091b());
    }

    public boolean b(String str) {
        if (n0.e(str) || g.b(this.f2892a)) {
            return false;
        }
        Iterator<String> it = this.f2892a.iterator();
        while (it.hasNext()) {
            if (str.matches(it.next())) {
                return true;
            }
        }
        return false;
    }

    public void e(String str, String str2, String str3, String str4) {
        if (n0.e(str) || n0.e(str2) || n0.e(str3)) {
            return;
        }
        cn.mucang.android.core.webview.tracker.http.model.a aVar = new cn.mucang.android.core.webview.tracker.http.model.a(str4, str3, str, str2);
        t.a("WebViewOverrideTracker", "override track -->" + aVar.toString());
        MucangConfig.f(new a(this, aVar));
    }

    private b() {
        d();
    }
}
