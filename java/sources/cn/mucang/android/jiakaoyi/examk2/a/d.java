package cn.mucang.android.jiakaoyi.examk2.a;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.examk2.b.k;
import cn.mucang.android.jiakaoyi.examk2.b.m;
import cn.mucang.android.jiakaoyi.examk2.b.o;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.collision.QiDianChecker;
import cn.mucang.android.jiakaoyi.examk2.collision.ShangPoChecker;
import cn.mucang.android.jiakaoyi.examk2.collision.g;
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
import cn.mucang.android.jiakaoyi.examk2.config.K2XiaCheJianChaConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.examk2.e.h;
import cn.mucang.android.jiakaoyi.examk2.e.i;
import cn.mucang.android.jiakaoyi.examk2.e.l;
import cn.mucang.android.jiakaoyi.examk2.e.n;
import cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche.K2_CeFangTingChe_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.daocheruku.K2_DaoCheRuKu_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.etc.K2_ETC_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.jinjiqingkuang.K2_JinJiQingKuang_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.qidianquyu.K2_QiDianQuYu_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.quka.K2_QuKa_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu.K2_ShangPoQiBu_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.shihualumian.K2_ShiHuaLuMian_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.squxian.K2_SQuXian_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.suidao.K2_SuiDao_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.xiachejiancha.K2_XiaCheJianCha_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.zhailudiaotou.K2_ZhaiLuDiaoTou_Step1;
import cn.mucang.android.jiakaoyi.examk2.rule.zhijiaozhuanwan.K2_ZhiJiaoZhuanWan_Step1;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class d implements cn.mucang.android.jiakaoyi.engine.i.c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f3272a;
    private boolean b;

    public d(j jVar) {
        this.f3272a = jVar;
    }

    private List<e> a(Step step, StepConfig stepConfig) {
        Set<Integer> setKeySet = stepConfig.deductConfig.keySet();
        ArrayList arrayList = new ArrayList();
        String strName = step.name();
        String lowerCase = strName.replace("K2_", "").toLowerCase();
        for (Integer num : setKeySet) {
            Deduct deduct = stepConfig.deductConfig.get(num);
            if (deduct != null && !deduct.judgeType.notAuto()) {
                try {
                    Constructor<?> constructor = null;
                    for (Constructor<?> constructor2 : Class.forName("cn.mucang.android.jiakaoyi.examk2.rule." + lowerCase + "." + strName + "_" + num + "_Event").getConstructors()) {
                        Class<?>[] parameterTypes = constructor2.getParameterTypes();
                        if (parameterTypes != null && parameterTypes.length == 2) {
                            constructor = constructor2;
                            break;
                        }
                    }
                    if (constructor != null) {
                        cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d dVar = (cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d) constructor.newInstance(stepConfig.stepConfig, deduct);
                        dVar.setPlayScore(this.b);
                        arrayList.add(dVar);
                    } else {
                        t.d("TAG", "扣分项构造失败:deduct = " + deduct + " , Constructor = " + constructor);
                    }
                } catch (Exception e2) {
                    t.d("TAG", "固定事件扣分项构造失败:" + e2.getLocalizedMessage());
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T extends BaseStepConfig> T b(BaseStepConfig baseStepConfig) {
        if (baseStepConfig == 0) {
            return null;
        }
        return baseStepConfig;
    }

    private List<e> c(e eVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(eVar);
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.i.c.a
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createStep(cn.mucang.android.jiakaoyi.engine.i.c.b bVar, StepConfig stepConfig, boolean z) {
        Step step = bVar.f3084d;
        if (stepConfig != null) {
            BaseStepConfig baseStepConfig = stepConfig.stepConfig;
            if (baseStepConfig instanceof K2GlobalConfig) {
                this.b = ((Boolean) ((K2GlobalConfig) baseStepConfig).p401100.value).booleanValue();
            }
        }
        if (step == Step.K2_DaoCheRuKu) {
            K2DaoCheRuKuConfig k2DaoCheRuKuConfig = (K2DaoCheRuKuConfig) b(stepConfig.stepConfig);
            DaoKuChecker daoKuChecker = new DaoKuChecker(this.f3272a.f4725f, k2DaoCheRuKuConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.b(k2DaoCheRuKuConfig, daoKuChecker), new cn.mucang.android.jiakaoyi.examk2.e.b(k2DaoCheRuKuConfig, daoKuChecker), null, c(new K2_DaoCheRuKu_Step1(daoKuChecker, k2DaoCheRuKuConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_ZhiJiaoZhuanWan) {
            K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig = (K2ZhiJiaoZhuanWanConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.j jVar = new cn.mucang.android.jiakaoyi.examk2.collision.j(this.f3272a.i, k2ZhiJiaoZhuanWanConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new o(k2ZhiJiaoZhuanWanConfig, jVar), new n(k2ZhiJiaoZhuanWanConfig, jVar), null, c(new K2_ZhiJiaoZhuanWan_Step1(jVar, k2ZhiJiaoZhuanWanConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_CeFangTingChe) {
            K2CeFangTingCheConfig k2CeFangTingCheConfig = (K2CeFangTingCheConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.b bVar2 = new cn.mucang.android.jiakaoyi.examk2.collision.b(this.f3272a.f4724e, k2CeFangTingCheConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.a(k2CeFangTingCheConfig, bVar2), new cn.mucang.android.jiakaoyi.examk2.e.a(k2CeFangTingCheConfig, bVar2), null, c(new K2_CeFangTingChe_Step1(bVar2, k2CeFangTingCheConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_SQuXian) {
            K2SQuXianStepConfig k2SQuXianStepConfig = (K2SQuXianStepConfig) b(stepConfig.stepConfig);
            g gVar = new g(this.f3272a.f4726g, k2SQuXianStepConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.j(k2SQuXianStepConfig, gVar), new i(k2SQuXianStepConfig, gVar), null, c(new K2_SQuXian_Step1(gVar, k2SQuXianStepConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_ShangPoQiBu && !f.b()) {
            K2ShangPoQiBuConfig k2ShangPoQiBuConfig = (K2ShangPoQiBuConfig) b(stepConfig.stepConfig);
            ShangPoChecker shangPoChecker = new ShangPoChecker(this.f3272a.f4727h, k2ShangPoQiBuConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new k(k2ShangPoQiBuConfig, shangPoChecker), new cn.mucang.android.jiakaoyi.examk2.e.j(k2ShangPoQiBuConfig, shangPoChecker), null, c(new K2_ShangPoQiBu_Step1(shangPoChecker, k2ShangPoQiBuConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_QuKa) {
            K2QuKaConfig k2QuKaConfig = (K2QuKaConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.f fVar = new cn.mucang.android.jiakaoyi.examk2.collision.f(this.f3272a.j, k2QuKaConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.i(k2QuKaConfig, fVar), new h(k2QuKaConfig, fVar), null, c(new K2_QuKa_Step1(fVar, k2QuKaConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_XiaCheJianCha) {
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new m((K2XiaCheJianChaConfig) b(stepConfig.stepConfig)), new l(), null, c(new K2_XiaCheJianCha_Step1()), a(step, stepConfig));
        }
        if (step == Step.K2_QiDianQuYu && !this.f3272a.k.isEmpty()) {
            K2QiDianQuYuConfig k2QiDianQuYuConfig = (K2QiDianQuYuConfig) b(stepConfig.stepConfig);
            QiDianChecker qiDianChecker = new QiDianChecker(this.f3272a.k, k2QiDianQuYuConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.h(k2QiDianQuYuConfig, qiDianChecker), new cn.mucang.android.jiakaoyi.examk2.e.g(k2QiDianQuYuConfig, qiDianChecker), null, c(new K2_QiDianQuYu_Step1(qiDianChecker, k2QiDianQuYuConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_ZhaiLuDiaoTou && !this.f3272a.l.isEmpty()) {
            K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig = (K2ZhaiLuDiaoTouConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.i iVar = new cn.mucang.android.jiakaoyi.examk2.collision.i(this.f3272a.l, k2ZhaiLuDiaoTouConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.n(k2ZhaiLuDiaoTouConfig, iVar), new cn.mucang.android.jiakaoyi.examk2.e.m(k2ZhaiLuDiaoTouConfig, iVar), null, c(new K2_ZhaiLuDiaoTou_Step1(iVar, k2ZhaiLuDiaoTouConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_JinJiQingKuang && !this.f3272a.m.isEmpty()) {
            K2JinJiQingKuangConfig k2JinJiQingKuangConfig = (K2JinJiQingKuangConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.e eVar = new cn.mucang.android.jiakaoyi.examk2.collision.e(this.f3272a.m, k2JinJiQingKuangConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.f(k2JinJiQingKuangConfig, eVar), new cn.mucang.android.jiakaoyi.examk2.e.e(k2JinJiQingKuangConfig, eVar), null, c(new K2_JinJiQingKuang_Step1(eVar, k2JinJiQingKuangConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_ShiHuaLuMian) {
            K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig = (K2ShiHuaLuMianConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.d dVar = new cn.mucang.android.jiakaoyi.examk2.collision.d(this.f3272a.n, k2ShiHuaLuMianConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.e(k2ShiHuaLuMianConfig, dVar), new cn.mucang.android.jiakaoyi.examk2.e.d(k2ShiHuaLuMianConfig, dVar), null, c(new K2_ShiHuaLuMian_Step1(dVar, k2ShiHuaLuMianConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_SuiDao) {
            K2SuiDaoConfig k2SuiDaoConfig = (K2SuiDaoConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.h hVar = new cn.mucang.android.jiakaoyi.examk2.collision.h(this.f3272a.o, k2SuiDaoConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.l(k2SuiDaoConfig, hVar), new cn.mucang.android.jiakaoyi.examk2.e.k(k2SuiDaoConfig, hVar), null, c(new K2_SuiDao_Step1(hVar, k2SuiDaoConfig)), a(step, stepConfig));
        }
        if (step != Step.K2_ETC) {
            return null;
        }
        K2ETCConfig k2ETCConfig = (K2ETCConfig) b(stepConfig.stepConfig);
        cn.mucang.android.jiakaoyi.examk2.collision.c cVar = new cn.mucang.android.jiakaoyi.examk2.collision.c(this.f3272a.q, k2ETCConfig);
        return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.c(k2ETCConfig, cVar), new cn.mucang.android.jiakaoyi.examk2.e.c(k2ETCConfig, cVar), null, c(new K2_ETC_Step1(cVar, k2ETCConfig)), a(step, stepConfig));
    }
}
