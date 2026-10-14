package cn.mucang.android.jiakaoyi.exam.a;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BusStationStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SchoolStepConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static c f3213d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.engine.i.c.b> f3214a = new ArrayList();
    private final List<cn.mucang.android.jiakaoyi.engine.i.c.b> b = new ArrayList();
    private cn.mucang.android.jiakaoyi.engine.i.c.b c = null;

    private c() {
    }

    private void a() {
        if (this.b.size() > 0) {
            if (this.f3214a.size() == 0) {
                this.f3214a.addAll(this.b);
            }
            List<cn.mucang.android.jiakaoyi.engine.i.c.b> list = this.f3214a;
            this.c = list.remove((int) (((double) list.size()) * Math.random()));
            f.o("创建随机项目: stepInfo stepIndexOnRoute= " + this.c.i + " step " + this.c.f3084d.zhStepName);
        }
    }

    public static c b() {
        if (f3213d == null) {
            f3213d = new c();
        }
        return f3213d;
    }

    private BaseStepConfig c(cn.mucang.android.jiakaoyi.engine.processor.exam.d dVar, Step step) {
        RouteConfig routeConfig;
        if (dVar == null || (routeConfig = dVar.m) == null) {
            return null;
        }
        return routeConfig.getConfig(step);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void d(cn.mucang.android.jiakaoyi.engine.processor.exam.d dVar) {
        List<cn.mucang.android.jiakaoyi.engine.i.c.b> list;
        this.b.clear();
        K3BanMaXianStepConfig k3BanMaXianStepConfig = (K3BanMaXianStepConfig) c(dVar, Step.K3_BanMaXian);
        K3BusStationStepConfig k3BusStationStepConfig = (K3BusStationStepConfig) c(dVar, Step.K3_BusStation);
        K3SchoolStepConfig k3SchoolStepConfig = (K3SchoolStepConfig) c(dVar, Step.K3_School);
        boolean z = k3BanMaXianStepConfig != null && ((Boolean) k3BanMaXianStepConfig.p215122.value).booleanValue();
        boolean z2 = k3BusStationStepConfig != null && ((Boolean) k3BusStationStepConfig.p213122.value).booleanValue();
        boolean z3 = k3SchoolStepConfig != null && ((Boolean) k3SchoolStepConfig.p214122.value).booleanValue();
        f.o("Random  BanMaXian " + z + " ; BusStation " + z2 + " ; School " + z3);
        if (dVar != null && (list = dVar.q) != null && list.size() > 0) {
            for (cn.mucang.android.jiakaoyi.engine.i.c.b bVar : dVar.q) {
                if (bVar != null && bVar.i > 0) {
                    if ((z && bVar.f3084d == Step.K3_BanMaXian) || (z2 && bVar.f3084d == Step.K3_BusStation) || (z3 && bVar.f3084d == Step.K3_School)) {
                        this.b.add(bVar);
                    }
                }
            }
        }
        a();
    }

    public boolean e(cn.mucang.android.jiakaoyi.engine.i.c.b bVar) {
        int i;
        cn.mucang.android.jiakaoyi.engine.i.c.b bVar2;
        Location location;
        if (bVar == null || (i = bVar.i) <= 0 || (bVar2 = this.c) == null || bVar2.i != i || (location = bVar.f3083a) == null || bVar2.f3083a == null || Math.abs(location.getLongitude() - this.c.f3083a.getLongitude()) >= 1.0E-6d || Math.abs(bVar.f3083a.getLatitude() - this.c.f3083a.getLatitude()) >= 1.0E-6d) {
            return false;
        }
        f.o("触发随机项目: stepIndexOnRoute= " + bVar.i + " step " + bVar.f3084d.zhStepName);
        return true;
    }
}
