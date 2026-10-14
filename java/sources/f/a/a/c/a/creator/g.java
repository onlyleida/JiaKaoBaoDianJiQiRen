package f.a.a.c.a.creator;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.mapcollect.c.h;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.j;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class g implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a f14519a;
    private final Map<Step, List<TeachModel>> b;
    private final b<FormModel> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RouteConfig f14520d;

    public g(h hVar, Map<Step, List<TeachModel>> map, b<FormModel> bVar, k kVar, Map<Step, Set<String>> map2) {
        this.b = map;
        this.c = bVar;
        this.f14519a = new h(hVar, bVar, kVar, map, map2, getEngineType());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public /* synthetic */ boolean canExeMoreThanOneStep(RouteConfig routeConfig) {
        return cn.mucang.android.jiakaoyi.engine.i.b.a(this, routeConfig);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createGlobalEvents(StepConfig stepConfig) {
        b<FormModel> bVar = this.c;
        Map<Step, List<TeachModel>> map = this.b;
        Step step = Step.B2_Global;
        return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, new c.b(step, null), ((B2RobotTeachConfig) MucangConfig.getContext()).a(stepConfig, new j(bVar, map.get(step))), new cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.c(), null, new ArrayList(), new ArrayList());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public int getEngineType() {
        return 2;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public RouteConfig getRouteConfig() {
        RouteConfig routeConfig = this.f14520d;
        if (routeConfig != null) {
            return routeConfig;
        }
        KeMu keMu = KeMu.B2;
        long jN = ExamSiteUtil.n(keMu, 0L);
        RouteConfig routeConfig2 = new RouteConfig();
        this.f14520d = routeConfig2;
        routeConfig2.examSiteId = jN;
        routeConfig2.mapSiteId = String.valueOf(ExamSiteUtil.e(0L));
        this.f14520d.mapMd5 = ExamSiteUtil.k(keMu);
        this.f14520d.steps = new HashMap();
        return this.f14520d;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public synchronized c.a stepCreator() {
        return this.f14519a;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public List<c.b> stepList() {
        List<Step> listB2Steps = Step.b2Steps();
        ArrayList arrayList = new ArrayList();
        Iterator<Step> it = listB2Steps.iterator();
        while (it.hasNext()) {
            arrayList.add(new c.b(it.next(), null));
        }
        return arrayList;
    }
}
