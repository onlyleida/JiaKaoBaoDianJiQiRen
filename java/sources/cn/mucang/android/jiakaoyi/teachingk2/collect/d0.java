package cn.mucang.android.jiakaoyi.teachingk2.collect;

import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.rule.cefangtingche.CeFangStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.daocheruku.DaoKuStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.etc.ETCStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.jinjiqingkuang.JinJiStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.quka.QuKaStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.shangpoqibu.ShangPoStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.shihualumian.HuaLuStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.squxian.QuXianStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.suidao.SuiDaoStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.xiachejiancha.XiaCheStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.zhailudiaotou.ZhaiLuStep1;
import cn.mucang.android.jiakaoyi.teachingk2.rule.zhijiaozhuanwan.ZhiJiaoStep1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d0 implements cn.mucang.android.jiakaoyi.engine.i.c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.mapcollect.c.j f6495a;

    public d0(cn.mucang.android.jiakaoyi.mapcollect.c.j jVar) {
        this.f6495a = jVar;
    }

    private List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e> a(Step step, StepConfig stepConfig) {
        Collection<Deduct> collectionValues = stepConfig.deductConfig.values();
        ArrayList arrayList = new ArrayList();
        Iterator<Deduct> it = collectionValues.iterator();
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e eVarA = cn.mucang.android.jiakaoyi.teachingk2.data.a.a(it.next(), step);
            if (eVarA != null) {
                arrayList.add(eVarA);
            }
        }
        return arrayList;
    }

    private List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e> b(cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e eVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(eVar);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c.a
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createStep(cn.mucang.android.jiakaoyi.engine.i.c.b bVar, StepConfig stepConfig, boolean z) {
        Step step = bVar.f3084d;
        if (step == Step.K2_DaoCheRuKu) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.c cVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.c(this.f6495a.f4725f, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.b(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.b(cVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.b(cVar), null, b(new DaoKuStep1(cVar)), a(step, stepConfig));
        }
        if (step == Step.K2_ZhiJiaoZhuanWan) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.l lVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.l(this.f6495a.i, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.k(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.l(lVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.m(lVar), null, b(new ZhiJiaoStep1(lVar)), a(step, stepConfig));
        }
        if (step == Step.K2_CeFangTingChe) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.b bVar2 = new cn.mucang.android.jiakaoyi.teachingk2.s0.b(this.f6495a.f4724e, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.a(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.a(bVar2), new cn.mucang.android.jiakaoyi.teachingk2.x0.a(bVar2), null, b(new CeFangStep1(bVar2)), a(step, stepConfig));
        }
        if (step == Step.K2_SQuXian) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.h hVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.h(this.f6495a.f4726g, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.g(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.g(hVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.h(hVar), null, b(new QuXianStep1(hVar)), a(step, stepConfig));
        }
        if (step == Step.K2_ShangPoQiBu) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.i iVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.i(this.f6495a.f4727h, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.h(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.h(iVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.i(iVar), null, b(new ShangPoStep1(iVar)), a(step, stepConfig));
        }
        if (step == Step.K2_ShiHuaLuMian) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.e eVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.e(this.f6495a.n, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.d(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.d(eVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.d(eVar), null, b(new HuaLuStep1(eVar)), a(step, stepConfig));
        }
        if (step == Step.K2_SuiDao) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.j jVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.j(this.f6495a.o, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.i(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.i(jVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.j(jVar), null, b(new SuiDaoStep1(jVar)), a(step, stepConfig));
        }
        if (step == Step.K2_QuKa) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.g gVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.g(this.f6495a.j, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.f(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.f(gVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.g(gVar), null, b(new QuKaStep1(gVar)), a(step, stepConfig));
        }
        if (step == Step.K2_ZhaiLuDiaoTou) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.k kVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.k(this.f6495a.l, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.j(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.k(kVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.l(kVar), null, b(new ZhaiLuStep1(kVar)), a(step, stepConfig));
        }
        if (step == Step.K2_JinJiQingKuang) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.f fVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.f(this.f6495a.m, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.e(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.e(fVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.e(fVar), null, b(new JinJiStep1(fVar)), a(step, stepConfig));
        }
        if (step == Step.K2_ETC) {
            cn.mucang.android.jiakaoyi.teachingk2.s0.d dVar = new cn.mucang.android.jiakaoyi.teachingk2.s0.d(this.f6495a.q, new cn.mucang.android.jiakaoyi.teachingk2.collect.f0.c(), true);
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.c(dVar), new cn.mucang.android.jiakaoyi.teachingk2.x0.c(dVar), null, b(new ETCStep1(dVar)), a(step, stepConfig));
        }
        if (step == Step.K2_XiaCheJianCha) {
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new cn.mucang.android.jiakaoyi.teachingk2.y0.b.j(), new cn.mucang.android.jiakaoyi.teachingk2.x0.k(), null, b(new XiaCheStep1()), a(step, stepConfig));
        }
        return null;
    }
}
