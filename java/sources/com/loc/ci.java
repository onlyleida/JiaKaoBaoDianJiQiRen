package com.loc;

import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class ci extends ck {
    private static ci c = new ci(new ch.a().a("amap-global-threadPool").a());

    private ci(ch chVar) {
        try {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(chVar.a(), chVar.b(), chVar.d(), TimeUnit.SECONDS, chVar.c(), chVar);
            this.f12681a = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Throwable th) {
            am.b(th, "TPool", "ThreadPool");
            th.printStackTrace();
        }
    }

    public static ci a() {
        return c;
    }
}
