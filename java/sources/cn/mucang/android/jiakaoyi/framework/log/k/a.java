package cn.mucang.android.jiakaoyi.framework.log.k;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f3473a = Executors.newSingleThreadExecutor();

    public static void a(Runnable runnable) {
        f3473a.execute(runnable);
    }
}
