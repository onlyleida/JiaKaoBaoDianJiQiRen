package f.a.a.a.o;

import android.app.Activity;
import android.content.Intent;
import cn.mucang.android.core.utils.t;
import f.a.a.a.e;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static String b = "f.a.a.a.o.b";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<c> f14477a;

    /* JADX INFO: renamed from: f.a.a.a.o.b$b, reason: collision with other inner class name */
    private static class C0298b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f14478a = new b();
    }

    public interface c {
        boolean a(Activity activity, Intent intent);
    }

    public static b c() {
        return C0298b.f14478a;
    }

    public void a(c cVar) {
        this.f14477a.add(cVar);
    }

    public void b(Activity activity, Intent intent) {
        Iterator<c> it = this.f14477a.iterator();
        while (it.hasNext()) {
            try {
                if (it.next().a(activity, intent)) {
                    return;
                }
            } catch (Exception e2) {
                t.d(b, e2.getMessage());
            }
        }
    }

    private b() {
        this.f14477a = new CopyOnWriteArraySet();
        a(new f.a.a.a.o.a());
        a(new e());
    }
}
