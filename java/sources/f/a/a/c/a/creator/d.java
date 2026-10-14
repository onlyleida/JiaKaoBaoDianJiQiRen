package f.a.a.c.a.creator;

import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.i.b;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.mapcollect.c.h;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a f14510a;
    private RouteConfig b;

    public d(h hVar) {
        this.f14510a = new e(hVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public /* synthetic */ boolean canExeMoreThanOneStep(RouteConfig routeConfig) {
        return b.a(this, routeConfig);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createGlobalEvents(StepConfig stepConfig) {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public int getEngineType() {
        return 3;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public RouteConfig getRouteConfig() {
        RouteConfig routeConfig = this.b;
        if (routeConfig != null) {
            return routeConfig;
        }
        KeMu keMu = KeMu.B2;
        long jN = ExamSiteUtil.n(keMu, 0L);
        RouteConfig routeConfig2 = new RouteConfig();
        this.b = routeConfig2;
        routeConfig2.examSiteId = jN;
        routeConfig2.mapSiteId = String.valueOf(ExamSiteUtil.e(0L));
        this.b.mapMd5 = ExamSiteUtil.k(keMu);
        this.b.steps = new HashMap();
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public synchronized c.a stepCreator() {
        return this.f14510a;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public List<c.b> stepList() {
        List<Step> listB2RobotSteps = Step.b2RobotSteps();
        ArrayList arrayList = new ArrayList();
        Iterator<Step> it = listB2RobotSteps.iterator();
        while (it.hasNext()) {
            arrayList.add(new c.b(it.next(), null));
        }
        return arrayList;
    }
}
