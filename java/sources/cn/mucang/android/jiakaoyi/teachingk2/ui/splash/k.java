package cn.mucang.android.jiakaoyi.teachingk2.ui.splash;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final k f8341a;
    protected final BaseActivity b;
    protected final cn.mucang.android.jiakaoyi.framework.h.b<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final String f8342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f8343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8344f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f8345g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f8346h;

    public k(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, k kVar, String str) {
        this.f8341a = kVar;
        this.b = baseActivity;
        this.c = bVar;
        this.f8342d = str;
    }

    public void a() {
        if (this.f8344f) {
            return;
        }
        if (this.f8345g == 0) {
            this.f8345g = System.currentTimeMillis();
            cn.mucang.android.jiakaoyi.framework.log.f.o("开始执行" + this.f8342d + ":" + this.f8345g);
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o("重新执行" + this.f8342d + ":" + System.currentTimeMillis());
        }
        f();
    }

    public Object b() {
        return this.f8343e;
    }

    protected boolean c() {
        BaseActivity baseActivity = this.b;
        return baseActivity == null || baseActivity.isDestroyed() || this.b.isFinishing();
    }

    protected void d() {
    }

    public void e(Object obj) {
        this.f8343e = obj;
    }

    public abstract void f();

    public void g() {
        if (this.f8344f) {
            return;
        }
        this.f8344f = true;
        this.f8346h = System.currentTimeMillis();
        cn.mucang.android.jiakaoyi.framework.log.f.o("结束执行" + this.f8342d + ":" + this.f8346h);
        d();
        final k kVar = this.f8341a;
        if (kVar != null) {
            kVar.getClass();
            u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8274a.a();
                }
            }, 200L);
        }
    }
}
