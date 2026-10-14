package cn.mucang.android.core.config;

import android.app.Activity;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<Activity> f2476a;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final j f2477a = new j();
    }

    public static j b() {
        return b.f2477a;
    }

    public void a(Activity activity) {
        this.f2476a.add(activity);
    }

    public void c(Activity activity) {
        if (this.f2476a.contains(activity)) {
            this.f2476a.remove(activity);
        }
    }

    private j() {
        this.f2476a = new LinkedList();
    }
}
