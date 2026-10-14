package cn.mucang.android.core.config;

import android.app.Activity;
import android.os.Bundle;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.n0;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Activity f2492a;
    private t b;

    public o(Activity activity, t tVar) {
        this.f2492a = activity;
        this.b = tVar;
    }

    private String a() {
        String statName = this.b.getStatName();
        if (!n0.e(statName)) {
            return statName;
        }
        if (MucangConfig.v()) {
            throw new RuntimeException("此Activity没有设置名字:" + statName);
        }
        String str = this.f2492a.getClass().getSimpleName() + "@空";
        cn.mucang.android.core.utils.t.d("hadeslee", "此Activity没有设置名字:" + str);
        return str;
    }

    private void k() {
        long jCurrentTimeMillis = System.currentTimeMillis() - MucangConfig.o();
        if (jCurrentTimeMillis > DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            map2.put("double1", Long.valueOf(jCurrentTimeMillis / 1000));
            map.put("common", map2);
            l0.b("advertOort", "后台运行时间", map, 0L);
        }
    }

    public void b(Bundle bundle) {
        cn.mucang.android.core.utils.v.b(this.f2492a);
    }

    public void c() {
    }

    public void d() {
        MucangConfig.C();
        l0.d(this.f2492a, a(), this.b.getProperties());
    }

    public void e() {
    }

    public void f(Bundle bundle) {
    }

    public void g() {
        l0.f(this.f2492a, a(), this.b.getProperties());
        i iVarH = MucangConfig.h();
        if (iVarH != null) {
            long jO = MucangConfig.o();
            long jN = MucangConfig.n();
            long jCurrentTimeMillis = System.currentTimeMillis();
            s sVarH = s.h();
            if (jCurrentTimeMillis - jN > sVarH.c()) {
                f.a.a.a.c.e("广告可显也");
                if (jO <= 0 || jCurrentTimeMillis - jO <= sVarH.i()) {
                    f.a.a.a.c.e("此时不能显");
                } else {
                    f.a.a.a.c.e("此时真显也");
                    MucangConfig.B();
                    iVarH.a(this.f2492a);
                }
            }
        }
        if (cn.mucang.android.core.callphone.a.h().j()) {
            cn.mucang.android.core.callphone.a.h().r();
        }
        k();
    }

    public void h(Bundle bundle) {
    }

    public void i() {
    }

    public void j() {
    }
}
