package cn.mucang.android.jiakaoyi.exam.k3.creator;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BusStationStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GongQiaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuanDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiWanPoDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JianSuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouYouZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZhiXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3RangXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SchoolStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SuiDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TeShuQuYuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3XianSuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataCreator;
import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser;
import cn.mucang.android.jiakaoyi.exam.k3.teach.callback.TeachResultEventCallback;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.m.a;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes2.dex */
public class ExamDataCreator implements c {
    private static final String TAG = "ExamDataCreator";
    private final String cityCode;
    private final int engineType;
    private final long examSiteId;
    private final LocalRoute localRoute;
    private RouteConfig routeConfig;
    private final cn.mucang.android.jiakaoyi.framework.h.c<List<c.b>> stepListGetter;
    private ArrayList<c.b> steps;
    private Map<String, List<TeachData>> teachDataMap;
    private final TeachResultEventCallback teachEventCallback;
    private Map<String, c.b> randomRecordMap = new HashMap();
    private Map<String, Integer> randomCountMap = new HashMap();

    public ExamDataCreator(long j, String str, int i, LocalRoute localRoute, TeachResultEventCallback teachResultEventCallback, cn.mucang.android.jiakaoyi.framework.h.c<List<c.b>> cVar) {
        this.teachDataMap = null;
        this.examSiteId = j;
        this.cityCode = str;
        this.engineType = i;
        this.localRoute = localRoute;
        this.teachEventCallback = teachResultEventCallback;
        if (i == 2) {
            this.teachDataMap = new HashMap();
        }
        this.stepListGetter = cVar;
        this.randomRecordMap.clear();
        this.randomCountMap.clear();
        File fileC = cn.mucang.android.jiakaoyi.framework.tts.i.c.d().c();
        if (fileC == null || !fileC.isDirectory()) {
            return;
        }
        f.o("启用的语音包：" + fileC.getAbsolutePath());
        String[] list = fileC.list();
        if (list != null) {
            f.o("语音包内容：" + JSON.toJSONString(list));
        }
    }

    public static List<Step> createSteps() {
        return StepGetter.c(ExamSiteUtil.n(KeMu.K3, 0L));
    }

    public static synchronized Map<Step, BaseStepConfig> getConfigs(long j, String str) {
        return getConfigs(j, str, null);
    }

    public static String getTeachStepKey(Step step, int i) {
        return step.name() + "_" + i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public boolean canExeMoreThanOneStep(RouteConfig routeConfig) {
        if (w.r.getType() == 0) {
            return false;
        }
        K3GlobalStepConfig k3GlobalStepConfig = (K3GlobalStepConfig) routeConfig.getConfig(Step.K3_Global);
        return k3GlobalStepConfig == null || ((Boolean) k3GlobalStepConfig.p200152.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public b createGlobalEvents(StepConfig stepConfig) {
        Constructor<?> constructor;
        Set<Integer> setKeySet = stepConfig.deductConfig.keySet();
        ArrayList arrayList = new ArrayList();
        String strName = Step.K3_Global.name();
        String lowerCase = strName.replace("K3_", "").toLowerCase();
        for (Integer num : setKeySet) {
            Deduct deduct = stepConfig.deductConfig.get(num);
            if (deduct != null && !deduct.judgeType.notAuto()) {
                try {
                    Constructor<?>[] constructors = Class.forName("cn.mucang.android.jiakaoyi.exam.k3.rule." + lowerCase + "." + strName + "_" + num + "_Event").getConstructors();
                    int length = constructors.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            constructor = null;
                            break;
                        }
                        Constructor<?> constructor2 = constructors[i];
                        if (constructor2.getParameterTypes().length == 2) {
                            constructor = constructor2;
                            break;
                        }
                        i++;
                    }
                    if (constructor != null) {
                        arrayList.add((e) constructor.newInstance(stepConfig.stepConfig, deduct));
                    } else {
                        if (MucangConfig.v()) {
                            t.d("TAG", "扣分项构造失败:deduct = " + deduct + " , Constructor = " + constructor);
                        }
                        f.o("全局扣分加载失败:" + deduct.code + "," + deduct.name);
                    }
                } catch (Exception e2) {
                    if (MucangConfig.v()) {
                        t.d("TAG", "扣分项构造失败:" + e2.getLocalizedMessage());
                    }
                    f.o("全局扣分加载失败:" + deduct.code + "," + deduct.name);
                }
            }
        }
        Step step = Step.K3_Global;
        return new b(step, new c.b(step, null), K3StepCreator.createByStep(step, stepConfig), new cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.c(), null, new ArrayList(), arrayList);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public int getEngineType() {
        return this.engineType;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public RouteConfig getRouteConfig() {
        RouteConfig routeConfig = this.routeConfig;
        if (routeConfig != null) {
            return routeConfig;
        }
        RouteConfig routeConfig2 = new RouteConfig();
        routeConfig2.examSiteId = this.examSiteId;
        routeConfig2.mapSiteId = String.valueOf(ExamSiteUtil.e(0L));
        KeMu keMu = KeMu.K3;
        routeConfig2.mapMd5 = ExamSiteUtil.k(keMu);
        LocalRoute localRoute = this.localRoute;
        if (localRoute != null) {
            routeConfig2.routeId = localRoute.getRouteId();
            routeConfig2.routeName = this.localRoute.getRouteName();
        }
        routeConfig2.steps = new HashMap();
        List<Step> listA = StepGetter.a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        f.o("引擎加载考场 " + this.examSiteId + "的扣分数据");
        List<Deduct> listG = a.g(this.examSiteId, keMu);
        StringBuilder sb = new StringBuilder();
        sb.append("反射--从数据库获取扣分项的时间：");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
        sb.append(" , isCommonSite:");
        sb.append(this.examSiteId == -999);
        t.h("TAG", sb.toString());
        HashMap map = new HashMap();
        if (listG != null) {
            for (Deduct deduct : listG) {
                Map map2 = (Map) map.get(deduct.step);
                if (map2 == null) {
                    map2 = new HashMap();
                    map.put(deduct.step, map2);
                }
                map2.put(Integer.valueOf(deduct.code), deduct);
            }
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        f.o("引擎加载考场 " + this.examSiteId + "的规则数据");
        Map<Step, BaseStepConfig> configs = getConfigs(this.examSiteId, this.cityCode, this.teachDataMap);
        t.h("TAG", "反射--从数据库获取扣分配置的时间：" + (System.currentTimeMillis() - jCurrentTimeMillis2));
        for (Step step : listA) {
            StepConfig stepConfig = new StepConfig();
            stepConfig.step = step;
            BaseStepConfig baseStepConfig = configs.get(step);
            stepConfig.stepConfig = baseStepConfig;
            if (baseStepConfig != null) {
                Map<Integer, Deduct> map3 = (Map) map.get(step);
                if (map3 == null) {
                    map3 = new HashMap<>();
                }
                stepConfig.deductConfig = map3;
                routeConfig2.steps.put(step, stepConfig);
            }
        }
        this.routeConfig = routeConfig2;
        return routeConfig2;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public c.a stepCreator() {
        return this.engineType == 2 ? new K3StepCreator(this.teachEventCallback, this.teachDataMap) : new K3StepCreator(null, null);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c
    public List<c.b> stepList() {
        int iValueOf;
        cn.mucang.android.jiakaoyi.framework.h.c<List<c.b>> cVar = this.stepListGetter;
        if (cVar != null) {
            return cVar.get();
        }
        if (this.steps == null) {
            ArrayList<c.b> startPos = StepInfoParseUtil.parseStartPos(this.localRoute);
            this.steps = startPos;
            startPos.add(0, StepInfoParseUtil.getEmptyStepInfo(Step.K3_Global));
            this.steps.add(0, StepInfoParseUtil.getEmptyStepInfo(Step.K3_QiBu));
            this.steps.add(0, StepInfoParseUtil.getEmptyStepInfo(Step.K3_LightSimulate));
            this.steps.add(0, StepInfoParseUtil.getEmptyStepInfo(Step.K3_ShangChe));
        }
        HashMap map = new HashMap();
        for (c.b bVar : this.steps) {
            if (bVar.n != null) {
                List arrayList = (List) map.get("Group_" + bVar.n);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map.put("Group_" + bVar.n, arrayList);
                }
                arrayList.add(bVar);
            }
        }
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                List list = (List) entry.getValue();
                String str = (String) entry.getKey();
                if (list != null && list.size() > 0) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((c.b) it.next()).p = false;
                    }
                    Random.Companion companion = Random.INSTANCE;
                    int iNextInt = companion.nextInt(list.size());
                    c.b bVar2 = (c.b) list.get(companion.nextInt(list.size()));
                    c.b bVar3 = this.randomRecordMap.get(str);
                    Integer num = this.randomCountMap.get(str);
                    if (bVar2 == bVar3) {
                        if (num == null) {
                            num = 0;
                        }
                        if (num.intValue() < 2 || list.size() < 2) {
                            iValueOf = Integer.valueOf(num.intValue() + 1);
                        } else {
                            f.o(str + "连续两次被随机到 " + bVar2.i + "-" + bVar2.f3084d.zhStepName + "; size " + list.size());
                            list.remove(iNextInt);
                            bVar2 = (c.b) list.get(companion.nextInt(list.size()));
                            iValueOf = 1;
                        }
                    } else {
                        iValueOf = 1;
                    }
                    this.randomRecordMap.put(str, bVar2);
                    this.randomCountMap.put(str, iValueOf);
                    if (bVar2 != null) {
                        bVar2.p = true;
                        f.o(str + "随机到  " + bVar2.i + "-" + bVar2.f3084d.zhStepName);
                    }
                }
            }
        }
        return this.steps;
    }

    public static synchronized Map<Step, BaseStepConfig> getConfigs(long j, String str, Map<String, List<TeachData>> map) {
        HashMap map2;
        map2 = new HashMap();
        map2.put(Step.K3_BanMaXian, new K3BanMaXianStepConfig());
        map2.put(Step.K3_BianDao, new K3BianDaoStepConfig());
        map2.put(Step.K3_BianDaoChaoChe, new K3BianDaoChaoCheStepConfig());
        map2.put(Step.K3_ChaoChe, new K3ChaoCheStepConfig());
        map2.put(Step.K3_DiaoTou, new K3DiaoTouStepConfig());
        map2.put(Step.K3_BusStation, new K3BusStationStepConfig());
        map2.put(Step.K3_GongQiao, new K3GongQiaoStepConfig());
        map2.put(Step.K3_HuanDao, new K3HuanDaoStepConfig());
        map2.put(Step.K3_HuiChe, new K3HuiCheStepConfig());
        map2.put(Step.K3_JiaJianDang, new K3JiaJianDangStepConfig());
        map2.put(Step.K3_JianSu, new K3JianSuStepConfig());
        map2.put(Step.K3_JinTing, new K3JinTingStepConfig());
        map2.put(Step.K3_JiWanPoDao, new K3JiWanPoDaoStepConfig());
        map2.put(Step.K3_TingChe, new K3TingCheStepConfig());
        map2.put(Step.K3_LightSimulate, new K3DengGuangStepConfig());
        map2.put(Step.K3_LinTing, new K3LinTingStepConfig());
        map2.put(Step.K3_LuKouYouZhuan, new K3LuKouYouZhuanStepConfig());
        map2.put(Step.K3_LuKouZhiXing, new K3LuKouZhiXingStepConfig());
        map2.put(Step.K3_LuKouZuoZhuan, new K3LuKouZuoZhuanStepConfig());
        map2.put(Step.K3_QiBu, new K3QiBuStepConfig());
        map2.put(Step.K3_RangXing, new K3RangXingStepConfig());
        map2.put(Step.K3_ShangChe, new K3ShangCheStepConfig());
        map2.put(Step.K3_SuiDao, new K3SuiDaoStepConfig());
        map2.put(Step.K3_XianSu, new K3XianSuStepConfig());
        map2.put(Step.K3_School, new K3SchoolStepConfig());
        map2.put(Step.K3_ZhiXian, new K3ZhiXianStepConfig());
        map2.put(Step.K3_TeShuQuYu, new K3TeShuQuYuStepConfig());
        map2.put(Step.K3_Global, new K3GlobalStepConfig());
        List<RuleConfig> listL = cn.mucang.jiakaoyi.uilib.m.b.l(j, KeMu.K3);
        cn.mucang.android.jiakaoyi.engine.config.a.b(listL, map2);
        Map<String, RuleConfig> mapD = cn.mucang.android.jiakaoyi.engine.config.a.d(listL);
        if (map != null) {
            try {
                map.clear();
                List<K3TeachEntity> localTeachData = K3TeachDataCreator.getLocalTeachData(String.valueOf(j));
                if (localTeachData != null) {
                    for (K3TeachEntity k3TeachEntity : localTeachData) {
                        List<TeachData> list = k3TeachEntity.items;
                        if (list != null) {
                            Collections.sort(list, new Comparator<TeachData>() { // from class: cn.mucang.android.jiakaoyi.exam.k3.creator.ExamDataCreator.1
                                @Override // java.util.Comparator
                                public int compare(TeachData teachData, TeachData teachData2) {
                                    return teachData.position - teachData2.position;
                                }
                            });
                            for (int i = 0; i < k3TeachEntity.items.size(); i++) {
                                TeachData teachData = k3TeachEntity.items.get(i);
                                teachData.position = i;
                                if (teachData.variables == null && n0.g(teachData.value)) {
                                    teachData.variables = TeachData.parseVariables(teachData.value);
                                }
                                if (teachData.errorVariables == null && n0.g(teachData.errorValue)) {
                                    teachData.errorVariables = TeachData.parseVariables(teachData.errorValue);
                                }
                                K3TeachDataParser.getInstance().setRuleConfigValue(teachData, mapD);
                            }
                            map.put(getTeachStepKey(Step.findWithType(k3TeachEntity.stepId), k3TeachEntity.teachNum), k3TeachEntity.items);
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                f.o("考试引擎解析考试数据出错");
            }
        }
        return map2;
    }
}
