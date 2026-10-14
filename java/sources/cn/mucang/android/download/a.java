package cn.mucang.android.download;

import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes.dex */
public class a extends cn.mucang.android.core.db.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f2944g;

    /* JADX INFO: renamed from: cn.mucang.android.download.a$a, reason: collision with other inner class name */
    class RunnableC0094a implements Runnable {
        RunnableC0094a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.G();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static a f2945a = new a();
    }

    public a() {
        super("downloadmanager", 3);
    }

    public static synchronized a G() {
        return b.f2945a;
    }

    public static synchronized void H() {
        if (f2944g) {
            return;
        }
        f2944g = true;
        MucangConfig.f(new RunnableC0094a());
    }
}
