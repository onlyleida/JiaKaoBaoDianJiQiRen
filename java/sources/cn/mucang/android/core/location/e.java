package cn.mucang.android.core.location;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected MucangLocateOption f2587a;

    public e(MucangLocateOption mucangLocateOption) {
        this.f2587a = mucangLocateOption;
    }

    public abstract String a();

    protected abstract c b(long j);

    public final c c() {
        if (u.b()) {
            throw new RuntimeException("LocationUtils.requestLocation 必须在非UI线程上调用");
        }
        c cVarB = b(this.f2587a.c());
        if (MucangConfig.v()) {
            u.h("使用" + a() + "定位 mode:" + this.f2587a.b());
        }
        if (cVarB != null) {
            t.a("MucangLocateClient", a() + "-定位成功");
            f.a.a.a.c.l(a() + "-定位成功");
        } else {
            t.d("MucangLocateClient", a() + "-定位失败");
            f.a.a.a.c.l(a() + "-定位失败");
        }
        return cVarB;
    }

    protected void d(c cVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(n0.e(cVar.g()) ? "0" : "1");
        sb.append(n0.e(cVar.c()) ? "0" : "1");
        sb.append(n0.e(cVar.d()) ? "0" : "1");
        sb.append(n0.e(cVar.a()) ? "0" : "1");
        sb.append(n0.e(cVar.b()) ? "0" : "1");
        if ("11111".equals(sb.toString())) {
            f.a.a.a.c.j("core", a() + "定位数据正常", cVar.g(), cVar.c(), cVar.d());
            return;
        }
        f.a.a.a.c.j("core", a() + "定位数据异常", cVar.g(), cVar.c(), cVar.d(), sb.toString());
    }
}
