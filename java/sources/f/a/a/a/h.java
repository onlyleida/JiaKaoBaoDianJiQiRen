package f.a.a.a;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<cn.mucang.android.core.config.your.b> f14441a;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final h f14442a = new h();
    }

    public static h b() {
        return b.f14442a;
    }

    public void a(cn.mucang.android.core.config.your.b bVar) {
        this.f14441a.add(bVar);
    }

    public List<cn.mucang.android.core.config.your.b> c() {
        return new LinkedList(this.f14441a);
    }

    private h() {
        this.f14441a = new LinkedList();
    }
}
