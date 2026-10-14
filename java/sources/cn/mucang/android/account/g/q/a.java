package cn.mucang.android.account.g.q;

import cn.mucang.android.account.activity.l1;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<A extends l1, T> extends cn.mucang.android.core.api.c.c<A, T> {
    private String b;

    public a(A a2, String str) {
        super(a2);
        this.b = str;
    }

    @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
    public void a() {
        if (n0.e(this.b)) {
            return;
        }
        f().j("正在" + this.b + "...");
    }

    @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
    public void c(Exception exc) {
        String message = exc.getMessage();
        if (n0.e(message)) {
            message = "网络连接失败";
        }
        u.h(message);
    }

    @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
    public void d() {
        if (n0.e(this.b)) {
            return;
        }
        f().g();
    }
}
