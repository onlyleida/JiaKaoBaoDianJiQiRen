package cn.mucang.android.jiakaoyi.mapcollect.collect.b1;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f4759a;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f4760a = new d();
    }

    public static d c() {
        return b.f4760a;
    }

    public Map<Step, cn.mucang.android.jiakaoyi.mapcollect.collect.data.d> a(String str, cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> bVar) {
        return this.f4759a.e(str, bVar);
    }

    public t0 b(int i, PosCollectActivity posCollectActivity) {
        return this.f4759a.f(i, posCollectActivity);
    }

    public int d(SourceData sourceData) {
        return this.f4759a.d(sourceData);
    }

    public Step e(int i) {
        return this.f4759a.b(i);
    }

    public String[] f() {
        return this.f4759a.g();
    }

    public int g(Step step) {
        return this.f4759a.c(step);
    }

    public List<cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a<?>> h(String str) {
        return this.f4759a.a(str);
    }

    private d() {
        if (AppUtils.l() || AppUtils.b()) {
            this.f4759a = new cn.mucang.android.jiakaoyi.mapcollect.collect.b1.a();
        } else if (AppUtils.i()) {
            this.f4759a = new e();
        } else {
            this.f4759a = new cn.mucang.android.jiakaoyi.mapcollect.collect.b1.b();
        }
    }
}
