package cn.mucang.android.jiakaoyi.exam.k3.creator;

import android.location.Location;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BaseStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BusStationStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
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
import cn.mucang.android.jiakaoyi.exam.k3.data.BanMaXianStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.BusStationStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.GongQiaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuanDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuiCheStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.JiWanPoDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.JiaJianDangStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.JianSuStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.JinTingStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.LuKouZhiXingStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.QiBuStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.RangXingStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.SchoolStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.SuiDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.TeShuQuYuStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.XianSuStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZhiXianStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.callback.TeachResultEventCallback;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.log.f;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class K3StepCreator implements c.a {
    protected final Map<String, List<TeachData>> teachDataMap;
    protected final TeachResultEventCallback teachEventCallback;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.creator.K3StepCreator$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step;

        static {
            int[] iArr = new int[Step.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step = iArr;
            try {
                iArr[Step.K3_BianDao.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_BianDaoChaoChe.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_ChaoChe.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_DiaoTou.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_HuiChe.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_JiaJianDang.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_LinTing.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_LuKouZhiXing.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_QiBu.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_RangXing.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_School.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_ShangChe.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_TingChe.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_LuKouYouZhuan.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_ZhiXian.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_LuKouZuoZhuan.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_BanMaXian.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_BusStation.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_GongQiao.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_HuanDao.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_JianSu.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_JinTing.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_JiWanPoDao.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_SuiDao.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_XianSu.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_TeShuQuYu.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[Step.K3_Global.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public K3StepCreator(TeachResultEventCallback teachResultEventCallback, Map<String, List<TeachData>> map) {
        this.teachEventCallback = teachResultEventCallback;
        this.teachDataMap = map;
    }

    public static K3BaseStepData<? extends K3BaseStepConfig> createByStep(Step step, StepConfig stepConfig) {
        switch (AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step[step.ordinal()]) {
            case 1:
                return new BianDaoStateData((K3BianDaoStepConfig) stepConfig.stepConfig);
            case 2:
                return new BianDaoChaoCheStateData((K3BianDaoChaoCheStepConfig) stepConfig.stepConfig);
            case 3:
                return new ChaoCheStateData((K3ChaoCheStepConfig) stepConfig.stepConfig);
            case 4:
                return new DiaoTouStateData((K3DiaoTouStepConfig) stepConfig.stepConfig);
            case 5:
                return new HuiCheStepData((K3HuiCheStepConfig) stepConfig.stepConfig);
            case 6:
                return new JiaJianDangStateData((K3JiaJianDangStepConfig) stepConfig.stepConfig);
            case 7:
                return new LinTingStepData((K3LinTingStepConfig) stepConfig.stepConfig);
            case 8:
                return new LuKouZhiXingStepData((K3LuKouZhiXingStepConfig) stepConfig.stepConfig);
            case 9:
                return new QiBuStepData((K3QiBuStepConfig) stepConfig.stepConfig);
            case 10:
                return new RangXingStepData((K3RangXingStepConfig) stepConfig.stepConfig);
            case 11:
                return new SchoolStateData((K3SchoolStepConfig) stepConfig.stepConfig);
            case 12:
                return new ShangCheStepData((K3ShangCheStepConfig) stepConfig.stepConfig);
            case 13:
                return new TingCheStepData((K3TingCheStepConfig) stepConfig.stepConfig);
            case 14:
                return new YouZhuanStateData((K3LuKouYouZhuanStepConfig) stepConfig.stepConfig);
            case 15:
                return new ZhiXianStateData((K3ZhiXianStepConfig) stepConfig.stepConfig);
            case 16:
                return new ZuoZhuanStateData((K3LuKouZuoZhuanStepConfig) stepConfig.stepConfig);
            case 17:
                return new BanMaXianStateData((K3BanMaXianStepConfig) stepConfig.stepConfig);
            case 18:
                return new BusStationStateData((K3BusStationStepConfig) stepConfig.stepConfig);
            case 19:
                return new GongQiaoStateData((K3GongQiaoStepConfig) stepConfig.stepConfig);
            case 20:
                return new HuanDaoStateData((K3HuanDaoStepConfig) stepConfig.stepConfig);
            case 21:
                return new JianSuStateData((K3JianSuStepConfig) stepConfig.stepConfig);
            case 22:
                return new JinTingStateData((K3JinTingStepConfig) stepConfig.stepConfig);
            case 23:
                return new JiWanPoDaoStateData((K3JiWanPoDaoStepConfig) stepConfig.stepConfig);
            case 24:
                return new SuiDaoStateData((K3SuiDaoStepConfig) stepConfig.stepConfig);
            case 25:
                return new XianSuStepData((K3XianSuStepConfig) stepConfig.stepConfig);
            case 26:
                return new TeShuQuYuStateData((K3TeShuQuYuStepConfig) stepConfig.stepConfig);
            case 27:
                return new GlobalStateData((K3GlobalStepConfig) stepConfig.stepConfig);
            default:
                return null;
        }
    }

    private e endEvent(Step step, BaseStepConfig baseStepConfig) {
        return null;
    }

    private List<e> fixedEvents(Step step, StepConfig stepConfig) {
        Constructor<?> constructor;
        ArrayList arrayList = new ArrayList();
        Map<Integer, Deduct> map = stepConfig.deductConfig;
        if (map == null) {
            return arrayList;
        }
        Set<Integer> setKeySet = map.keySet();
        String strName = step.name();
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
                        f.o("固定扣分加载失败:" + deduct.code + "," + deduct.name);
                    }
                } catch (Exception e2) {
                    if (MucangConfig.v()) {
                        t.d("TAG", "固定事件扣分项构造失败:" + e2.getLocalizedMessage());
                    }
                    f.o("固定扣分加载失败:" + deduct.code + "," + deduct.name);
                }
            }
        }
        return arrayList;
    }

    private List<e> orderEvents(Step step, StepConfig stepConfig) {
        ArrayList arrayList = new ArrayList();
        String strName = step.name();
        String lowerCase = strName.replace("K3_", "").toLowerCase();
        for (int i = 1; i < 10; i++) {
            try {
                Constructor<?> constructor = null;
                for (Constructor<?> constructor2 : Class.forName("cn.mucang.android.jiakaoyi.exam.k3.rule." + lowerCase + "." + strName + "_Step" + i).getConstructors()) {
                    if (constructor2.getParameterTypes().length == 2) {
                        constructor = constructor2;
                        break;
                    }
                }
                if (constructor != null) {
                    arrayList.add((e) constructor.newInstance(stepConfig.stepConfig, Deduct.empty(strName + "-Step-" + i, step)));
                }
            } catch (Exception e2) {
                if (MucangConfig.v()) {
                    t.d("TAG", "顺序事件构造失败:" + e2.getLocalizedMessage());
                }
                if (i == 1) {
                    f.o("顺序扣分加载失败:" + strName + "_" + i);
                }
            }
        }
        return arrayList;
    }

    private e startEvent(Step step, Location location, BaseStepConfig baseStepConfig) {
        try {
            Constructor<?> constructor = null;
            for (Constructor<?> constructor2 : Class.forName("cn.mucang.android.jiakaoyi.exam.k3.starter." + step.name() + "_Starter").getConstructors()) {
                if (constructor2.getParameterTypes().length == 3) {
                    constructor = constructor2;
                    break;
                }
            }
            return (e) constructor.newInstance(baseStepConfig, Deduct.empty("开始", step), location);
        } catch (Exception e2) {
            if (MucangConfig.v()) {
                t.d("TAG", step.getStepName() + "--开始事件构造失败:" + e2.toString());
            }
            f.o("开始事件加载失败:" + step.zhStepName);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.c();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c.a
    public b createStep(c.b bVar, StepConfig stepConfig, boolean z) {
        Map<String, List<TeachData>> map;
        Step step = bVar.f3084d;
        if (!step.needStepHandler()) {
            return null;
        }
        Location location = bVar.f3083a;
        K3BaseStepData<? extends K3BaseStepConfig> k3BaseStepDataCreateByStep = createByStep(step, stepConfig);
        if (this.teachEventCallback != null && k3BaseStepDataCreateByStep != null && (map = this.teachDataMap) != null) {
            List<TeachData> list = map.get(ExamDataCreator.getTeachStepKey(step, bVar.m));
            if (list == null || list.size() <= 0) {
                f.o("路线点 " + step.zhStepName + " 第" + bVar.i + "个项目没有找到序号为" + bVar.m + "找不到任何教学数据");
            } else {
                ArrayList arrayList = new ArrayList();
                for (TeachData teachData : list) {
                    int i = teachData.gearType;
                    if (i == 0 || i == cn.mucang.android.jiakaoyi.signal.utils.f.a()) {
                        arrayList.add(teachData);
                    }
                }
                k3BaseStepDataCreateByStep.teachDataList = arrayList;
                k3BaseStepDataCreateByStep.teachResultEventCallback = this.teachEventCallback;
            }
        }
        return new b(step, bVar, k3BaseStepDataCreateByStep, startEvent(step, location, stepConfig.stepConfig), endEvent(step, stepConfig.stepConfig), orderEvents(step, stepConfig), fixedEvents(step, stepConfig));
    }
}
