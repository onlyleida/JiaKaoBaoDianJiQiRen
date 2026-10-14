package cn.mucang.android.jiakaoyi.teachingk2.t0;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.examk2.b.m;
import cn.mucang.android.jiakaoyi.examk2.b.o;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.collision.QiDianChecker;
import cn.mucang.android.jiakaoyi.examk2.collision.ShangPoChecker;
import cn.mucang.android.jiakaoyi.examk2.collision.g;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ETCConfig;
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
import cn.mucang.android.jiakaoyi.examk2.e.i;
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
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.TeachingProcessor;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.s0.h;
import cn.mucang.android.jiakaoyi.teachingk2.s0.l;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class d implements cn.mucang.android.jiakaoyi.engine.i.c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f8004a;
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> b;
    private final k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Step, List<TeachModel>> f8005d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Step, Set<String>> f8006e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f8007f;

    public d(j jVar, cn.mucang.android.jiakaoyi.framework.h.b<FormModel> bVar, k kVar, Map<Step, List<TeachModel>> map, Map<Step, Set<String>> map2, int i) {
        this.f8004a = jVar;
        this.b = bVar;
        this.c = kVar;
        this.f8005d = map;
        this.f8006e = map2;
        this.f8007f = i;
    }

    private List<e> a(Step step, StepConfig stepConfig) {
        Set<Integer> setKeySet = stepConfig.deductConfig.keySet();
        ArrayList arrayList = new ArrayList();
        String strName = step.name();
        String lowerCase = strName.replace("K2_", "").toLowerCase();
        for (Integer num : setKeySet) {
            Deduct deduct = stepConfig.deductConfig.get(num);
            if (deduct != null) {
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
                        dVar.setPlayScore(false);
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

    @Override // cn.mucang.android.jiakaoyi.engine.i.c.a
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createStep(cn.mucang.android.jiakaoyi.engine.i.c.b bVar, StepConfig stepConfig, boolean z) {
        Step step = bVar.f3084d;
        if (cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().g()) {
            if (step != Step.K2_DaoCheRuKu) {
                return null;
            }
            K2DaoCheRuKuConfig k2DaoCheRuKuConfig = (K2DaoCheRuKuConfig) b(stepConfig.stepConfig);
            DaoKuChecker daoKuChecker = new DaoKuChecker(this.f8004a.f4725f, k2DaoCheRuKuConfig);
            daoKuChecker.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.c(this.f8004a.f4725f, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.b(k2DaoCheRuKuConfig, daoKuChecker), new cn.mucang.android.jiakaoyi.examk2.e.b(k2DaoCheRuKuConfig, daoKuChecker), null, c(new K2_DaoCheRuKu_Step1(daoKuChecker, k2DaoCheRuKuConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_DaoCheRuKu) {
            K2DaoCheRuKuConfig k2DaoCheRuKuConfig2 = (K2DaoCheRuKuConfig) b(stepConfig.stepConfig);
            DaoKuChecker daoKuChecker2 = new DaoKuChecker(this.f8004a.f4725f, k2DaoCheRuKuConfig2);
            daoKuChecker2.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.c(this.f8004a.f4725f, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.b(k2DaoCheRuKuConfig2, daoKuChecker2), new cn.mucang.android.jiakaoyi.examk2.e.b(k2DaoCheRuKuConfig2, daoKuChecker2), null, c(new K2_DaoCheRuKu_Step1(daoKuChecker2, k2DaoCheRuKuConfig2)), a(step, stepConfig));
        }
        if (step == Step.K2_ZhiJiaoZhuanWan) {
            K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig = (K2ZhiJiaoZhuanWanConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.j jVar = new cn.mucang.android.jiakaoyi.examk2.collision.j(this.f8004a.i, k2ZhiJiaoZhuanWanConfig);
            jVar.z(new l(this.f8004a.i, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new o(k2ZhiJiaoZhuanWanConfig, jVar), new n(k2ZhiJiaoZhuanWanConfig, jVar), null, c(new K2_ZhiJiaoZhuanWan_Step1(jVar, k2ZhiJiaoZhuanWanConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_CeFangTingChe) {
            K2CeFangTingCheConfig k2CeFangTingCheConfig = (K2CeFangTingCheConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.b bVar2 = new cn.mucang.android.jiakaoyi.examk2.collision.b(this.f8004a.f4724e, k2CeFangTingCheConfig);
            bVar2.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.b(this.f8004a.f4724e, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.a(k2CeFangTingCheConfig, bVar2), new cn.mucang.android.jiakaoyi.examk2.e.a(k2CeFangTingCheConfig, bVar2), null, c(new K2_CeFangTingChe_Step1(bVar2, k2CeFangTingCheConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_SQuXian) {
            K2SQuXianStepConfig k2SQuXianStepConfig = (K2SQuXianStepConfig) b(stepConfig.stepConfig);
            g gVar = new g(this.f8004a.f4726g, k2SQuXianStepConfig);
            gVar.z(new h(this.f8004a.f4726g, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.j(k2SQuXianStepConfig, gVar), new i(k2SQuXianStepConfig, gVar), null, c(new K2_SQuXian_Step1(gVar, k2SQuXianStepConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_ShangPoQiBu && !f.b()) {
            K2ShangPoQiBuConfig k2ShangPoQiBuConfig = (K2ShangPoQiBuConfig) b(stepConfig.stepConfig);
            ShangPoChecker shangPoChecker = new ShangPoChecker(this.f8004a.f4727h, k2ShangPoQiBuConfig);
            shangPoChecker.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.i(this.f8004a.f4727h, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.k(k2ShangPoQiBuConfig, shangPoChecker), new cn.mucang.android.jiakaoyi.examk2.e.j(k2ShangPoQiBuConfig, shangPoChecker), null, c(new K2_ShangPoQiBu_Step1(shangPoChecker, k2ShangPoQiBuConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_QuKa) {
            K2QuKaConfig k2QuKaConfig = (K2QuKaConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.f fVar = new cn.mucang.android.jiakaoyi.examk2.collision.f(this.f8004a.j, k2QuKaConfig);
            fVar.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.g(this.f8004a.j, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.i(k2QuKaConfig, fVar), new cn.mucang.android.jiakaoyi.examk2.e.h(k2QuKaConfig, fVar), null, c(new K2_QuKa_Step1(fVar, k2QuKaConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_XiaCheJianCha) {
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new m((K2XiaCheJianChaConfig) b(stepConfig.stepConfig)), new cn.mucang.android.jiakaoyi.examk2.e.l(), null, c(new K2_XiaCheJianCha_Step1()), a(step, stepConfig));
        }
        if (step == Step.K2_QiDianQuYu && !this.f8004a.k.isEmpty()) {
            K2QiDianQuYuConfig k2QiDianQuYuConfig = (K2QiDianQuYuConfig) b(stepConfig.stepConfig);
            QiDianChecker qiDianChecker = new QiDianChecker(this.f8004a.k, k2QiDianQuYuConfig);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.h(k2QiDianQuYuConfig, qiDianChecker), new cn.mucang.android.jiakaoyi.examk2.e.g(k2QiDianQuYuConfig, qiDianChecker), null, c(new K2_QiDianQuYu_Step1(qiDianChecker, k2QiDianQuYuConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_ZhaiLuDiaoTou && !this.f8004a.l.isEmpty()) {
            K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig = (K2ZhaiLuDiaoTouConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.i iVar = new cn.mucang.android.jiakaoyi.examk2.collision.i(this.f8004a.l, k2ZhaiLuDiaoTouConfig);
            iVar.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.k(this.f8004a.l, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.n(k2ZhaiLuDiaoTouConfig, iVar), new cn.mucang.android.jiakaoyi.examk2.e.m(k2ZhaiLuDiaoTouConfig, iVar), null, c(new K2_ZhaiLuDiaoTou_Step1(iVar, k2ZhaiLuDiaoTouConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_JinJiQingKuang && !this.f8004a.m.isEmpty()) {
            K2JinJiQingKuangConfig k2JinJiQingKuangConfig = (K2JinJiQingKuangConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.e eVar = new cn.mucang.android.jiakaoyi.examk2.collision.e(this.f8004a.m, k2JinJiQingKuangConfig);
            eVar.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.f(this.f8004a.m, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.f(k2JinJiQingKuangConfig, eVar), new cn.mucang.android.jiakaoyi.examk2.e.e(k2JinJiQingKuangConfig, eVar), null, c(new K2_JinJiQingKuang_Step1(eVar, k2JinJiQingKuangConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_ShiHuaLuMian) {
            K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig = (K2ShiHuaLuMianConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.d dVar = new cn.mucang.android.jiakaoyi.examk2.collision.d(this.f8004a.n, k2ShiHuaLuMianConfig);
            dVar.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.e(this.f8004a.n, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.e(k2ShiHuaLuMianConfig, dVar), new cn.mucang.android.jiakaoyi.examk2.e.d(k2ShiHuaLuMianConfig, dVar), null, c(new K2_ShiHuaLuMian_Step1(dVar, k2ShiHuaLuMianConfig)), a(step, stepConfig));
        }
        if (step == Step.K2_SuiDao) {
            K2SuiDaoConfig k2SuiDaoConfig = (K2SuiDaoConfig) b(stepConfig.stepConfig);
            cn.mucang.android.jiakaoyi.examk2.collision.h hVar = new cn.mucang.android.jiakaoyi.examk2.collision.h(this.f8004a.o, k2SuiDaoConfig);
            hVar.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.j(this.f8004a.o, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.l(k2SuiDaoConfig, hVar), new cn.mucang.android.jiakaoyi.examk2.e.k(k2SuiDaoConfig, hVar), null, c(new K2_SuiDao_Step1(hVar, k2SuiDaoConfig)), a(step, stepConfig));
        }
        if (step != Step.K2_ETC) {
            return null;
        }
        K2ETCConfig k2ETCConfig = (K2ETCConfig) b(stepConfig.stepConfig);
        cn.mucang.android.jiakaoyi.examk2.collision.c cVar = new cn.mucang.android.jiakaoyi.examk2.collision.c(this.f8004a.q, k2ETCConfig);
        cVar.z(new cn.mucang.android.jiakaoyi.teachingk2.s0.d(this.f8004a.q, new TeachingProcessor(this.f8005d.get(step), this.f8006e.get(step), this.b, this.c, this.f8007f)));
        return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.examk2.b.c(k2ETCConfig, cVar), new cn.mucang.android.jiakaoyi.examk2.e.c(k2ETCConfig, cVar), null, c(new K2_ETC_Step1(cVar, k2ETCConfig)), a(step, stepConfig));
    }
}
