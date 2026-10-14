package cn.mucang.android.jiakaoyi.teachingk2.collect;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class c0 implements cn.mucang.android.jiakaoyi.engine.i.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6493a;
    private cn.mucang.android.jiakaoyi.engine.i.c.a b;
    private RouteConfig c;

    public c0(cn.mucang.android.jiakaoyi.mapcollect.c.j jVar, String str) {
        this.f6493a = str;
        this.b = new d0(jVar);
    }

    public static synchronized Map<Step, BaseStepConfig> a(long j, String str) {
        HashMap map;
        map = new HashMap();
        Iterator<Step> it = Step.k2Steps().iterator();
        while (it.hasNext()) {
            map.put(it.next(), new SimpleTeachingConfig());
        }
        return map;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public /* synthetic */ boolean canExeMoreThanOneStep(RouteConfig routeConfig) {
        return cn.mucang.android.jiakaoyi.engine.i.b.a(this, routeConfig);
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
        RouteConfig routeConfig = this.c;
        if (routeConfig != null) {
            return routeConfig;
        }
        RouteConfig routeConfig2 = new RouteConfig();
        this.c = routeConfig2;
        routeConfig2.examSiteId = 0L;
        routeConfig2.mapSiteId = String.valueOf(ExamSiteUtil.e(0L));
        this.c.mapMd5 = ExamSiteUtil.k(KeMu.K2);
        this.c.steps = new HashMap();
        List<Step> listK2Steps = Step.k2Steps();
        Map<Step, Map<Integer, Deduct>> mapD = cn.mucang.android.jiakaoyi.teachingk2.data.a.d();
        Map<Step, BaseStepConfig> mapA = a(0L, this.f6493a);
        for (Step step : listK2Steps) {
            StepConfig stepConfig = new StepConfig();
            stepConfig.step = step;
            BaseStepConfig baseStepConfig = mapA.get(step);
            stepConfig.stepConfig = baseStepConfig;
            if (baseStepConfig != null) {
                stepConfig.deductConfig = mapD.get(step);
                this.c.steps.put(step, stepConfig);
            }
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public synchronized cn.mucang.android.jiakaoyi.engine.i.c.a stepCreator() {
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public List<cn.mucang.android.jiakaoyi.engine.i.c.b> stepList() {
        List<Step> listK2Steps = Step.k2Steps();
        ArrayList arrayList = new ArrayList();
        Iterator<Step> it = listK2Steps.iterator();
        while (it.hasNext()) {
            arrayList.add(new cn.mucang.android.jiakaoyi.engine.i.c.b(it.next(), null));
        }
        return arrayList;
    }
}
