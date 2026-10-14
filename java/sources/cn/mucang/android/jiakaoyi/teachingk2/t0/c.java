package cn.mucang.android.jiakaoyi.teachingk2.t0;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ETCConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2JinJiQingKuangConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2QiDianQuYuConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2QuKaConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2SQuXianStepConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class c implements cn.mucang.android.jiakaoyi.engine.i.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7998a;
    private cn.mucang.android.jiakaoyi.engine.i.c.a b;
    private RouteConfig c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Step, List<TeachModel>> f7999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Step, Set<String>> f8000e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> f8001f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k f8002g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f8003h;

    public c(j jVar, String str, Map<Step, List<TeachModel>> map, cn.mucang.android.jiakaoyi.framework.h.b<FormModel> bVar, k kVar, Map<Step, Set<String>> map2, int i) {
        this.f7998a = str;
        this.f7999d = map;
        this.f8000e = map2;
        this.f8001f = bVar;
        this.f8002g = kVar;
        this.f8003h = i;
        this.b = new d(jVar, bVar, kVar, map, map2, i);
    }

    public static synchronized Map<Step, BaseStepConfig> a(long j, String str) {
        HashMap map;
        map = new HashMap();
        map.put(Step.K2_Global, new K2GlobalConfig());
        map.put(Step.K2_CeFangTingChe, new K2CeFangTingCheConfig());
        map.put(Step.K2_DaoCheRuKu, new K2DaoCheRuKuConfig());
        map.put(Step.K2_ShangPoQiBu, new K2ShangPoQiBuConfig());
        map.put(Step.K2_SQuXian, new K2SQuXianStepConfig());
        map.put(Step.K2_ZhiJiaoZhuanWan, new K2ZhiJiaoZhuanWanConfig());
        map.put(Step.K2_QuKa, new K2QuKaConfig());
        map.put(Step.K2_QiDianQuYu, new K2QiDianQuYuConfig());
        map.put(Step.K2_ZhaiLuDiaoTou, new K2ZhaiLuDiaoTouConfig());
        map.put(Step.K2_JinJiQingKuang, new K2JinJiQingKuangConfig());
        map.put(Step.K2_ShiHuaLuMian, new K2ShiHuaLuMianConfig());
        map.put(Step.K2_SuiDao, new K2SuiDaoConfig());
        map.put(Step.K2_ETC, new K2ETCConfig());
        cn.mucang.android.jiakaoyi.engine.config.a.b(cn.mucang.jiakaoyi.uilib.m.b.l(j, KeMu.K2), map);
        return map;
    }

    public synchronized void b(j jVar, Map<Step, List<TeachModel>> map, Map<Step, Set<String>> map2) {
        this.b = new d(jVar, this.f8001f, this.f8002g, map, map2, this.f8003h);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public /* synthetic */ boolean canExeMoreThanOneStep(RouteConfig routeConfig) {
        return cn.mucang.android.jiakaoyi.engine.i.b.a(this, routeConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createGlobalEvents(StepConfig stepConfig) {
        Set<Integer> setKeySet = stepConfig.deductConfig.keySet();
        ArrayList arrayList = new ArrayList();
        String strName = Step.K2_Global.name();
        String lowerCase = strName.replace("K2_", "").toLowerCase();
        Iterator<Integer> it = setKeySet.iterator();
        while (true) {
            Constructor<?> constructor = null;
            if (!it.hasNext()) {
                cn.mucang.android.jiakaoyi.framework.h.b<FormModel> bVar = this.f8001f;
                Map<Step, List<TeachModel>> map = this.f7999d;
                Step step = Step.K2_Global;
                return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, new cn.mucang.android.jiakaoyi.engine.i.c.b(step, null), new cn.mucang.android.jiakaoyi.examk2.b.d((K2GlobalConfig) stepConfig.stepConfig, new cn.mucang.android.jiakaoyi.teachingk2.exe.j(bVar, map.get(step))), new cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.c(), null, new ArrayList(), arrayList);
            }
            Integer next = it.next();
            Deduct deduct = stepConfig.deductConfig.get(next);
            if (deduct != null) {
                try {
                    for (Constructor<?> constructor2 : Class.forName("cn.mucang.android.jiakaoyi.examk2.rule." + lowerCase + "." + strName + "_" + next + "_Event").getConstructors()) {
                        Class<?>[] parameterTypes = constructor2.getParameterTypes();
                        if (parameterTypes != null && parameterTypes.length == 2) {
                            constructor = constructor2;
                            break;
                        }
                    }
                    if (constructor != null) {
                        cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d dVar = (cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d) constructor.newInstance(stepConfig.stepConfig, deduct);
                        BaseStepConfig baseStepConfig = stepConfig.stepConfig;
                        if (baseStepConfig instanceof K2GlobalConfig) {
                            dVar.setPlayScore(((Boolean) ((K2GlobalConfig) baseStepConfig).p401100.value).booleanValue());
                        }
                        arrayList.add(dVar);
                    } else {
                        t.d("TAG", "扣分项构造失败:deduct = " + deduct + " , Constructor = " + constructor);
                    }
                } catch (Exception e2) {
                    t.d("TAG", "扣分项构造失败:" + e2.getLocalizedMessage());
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public int getEngineType() {
        return this.f8003h;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public RouteConfig getRouteConfig() {
        long jN;
        RouteConfig routeConfig = this.c;
        if (routeConfig != null) {
            return routeConfig;
        }
        if (AppUtils.k()) {
            jN = ExamSiteUtil.n(KeMu.K2, 0L);
        } else {
            ExamSiteModel examSiteModelM = ExamSiteUtil.m(KeMu.K2);
            jN = examSiteModelM != null ? examSiteModelM.examSiteId : 0L;
        }
        RouteConfig routeConfig2 = new RouteConfig();
        this.c = routeConfig2;
        routeConfig2.examSiteId = jN;
        routeConfig2.mapSiteId = String.valueOf(ExamSiteUtil.e(0L));
        RouteConfig routeConfig3 = this.c;
        KeMu keMu = KeMu.K2;
        routeConfig3.mapMd5 = ExamSiteUtil.k(keMu);
        this.c.steps = new HashMap();
        List<Step> listK2Steps = Step.k2Steps();
        long jCurrentTimeMillis = System.currentTimeMillis();
        List<Deduct> listG = cn.mucang.jiakaoyi.uilib.m.a.g(jN, keMu);
        StringBuilder sb = new StringBuilder();
        sb.append("反射--从数据库获取扣分项的时间：");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
        sb.append(" , isCommonSite:");
        sb.append(jN == -999);
        t.h("K2ExamCreator", sb.toString());
        HashMap map = new HashMap();
        for (Deduct deduct : listG) {
            Map linkedHashMap = (Map) map.get(deduct.step);
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                map.put(deduct.step, linkedHashMap);
            }
            linkedHashMap.put(Integer.valueOf(deduct.code), deduct);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        Map<Step, BaseStepConfig> mapA = a(jN, this.f7998a);
        t.h("K2ExamCreator", "反射--从数据库获取扣分配置的时间：" + (System.currentTimeMillis() - jCurrentTimeMillis2));
        for (Step step : listK2Steps) {
            StepConfig stepConfig = new StepConfig();
            stepConfig.step = step;
            BaseStepConfig baseStepConfig = mapA.get(step);
            stepConfig.stepConfig = baseStepConfig;
            if (baseStepConfig != null) {
                stepConfig.deductConfig = (Map) map.get(step);
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
