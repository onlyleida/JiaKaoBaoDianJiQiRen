package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public abstract class w implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f8507a = Executors.newSingleThreadExecutor();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public abstract void b(e eVar);

    public void d() {
        e();
        d.m.b(this);
    }

    public void e() {
        d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(final e eVar) {
        if (cn.mucang.android.jiakaoyi.unity.c.d.r()) {
            f8507a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8451a.b(eVar);
                }
            });
        }
    }
}
