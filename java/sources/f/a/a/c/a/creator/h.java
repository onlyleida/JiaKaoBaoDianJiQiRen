package f.a.a.c.a.creator;

import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.TeachingProcessor;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import f.a.a.c.a.b.a;
import f.a.a.c.a.b.d;
import f.a.a.c.a.b.f;
import f.a.a.c.a.b.g;
import f.a.a.c.a.b.i;
import f.a.a.c.a.b.j;
import f.a.a.c.a.b.l;
import f.a.a.c.a.b.m;
import f.a.a.c.a.b.n;
import f.a.a.c.a.b.o;
import f.a.a.c.a.b.p;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class h implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.mapcollect.c.h f14521a;
    private final b<FormModel> b;
    private final k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Step, List<TeachModel>> f14522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Step, Set<String>> f14523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f14524f;

    public h(cn.mucang.android.jiakaoyi.mapcollect.c.h hVar, b<FormModel> bVar, k kVar, Map<Step, List<TeachModel>> map, Map<Step, Set<String>> map2, int i) {
        this.f14521a = hVar;
        this.b = bVar;
        this.c = kVar;
        this.f14522d = map;
        this.f14523e = map2;
        this.f14524f = i;
    }

    private List<e> a(e eVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(eVar);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c.a
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createStep(c.b bVar, StepConfig stepConfig, boolean z) {
        Step step = bVar.f3084d;
        if (step == Step.B2_CeFangTingChe) {
            a aVar = new a(this.f14521a.f4711e, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.a(aVar), new f.a.a.c.a.f.a(aVar), null, a(new f.a.a.c.a.d.a(aVar)), new ArrayList());
        }
        if (step == Step.B2_ChunHuaLu) {
            f.a.a.c.a.b.b bVar2 = new f.a.a.c.a.b.b(this.f14521a.u, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.b(bVar2), new f.a.a.c.a.f.b(bVar2), null, a(new f.a.a.c.a.d.b(bVar2)), new ArrayList());
        }
        if (step == Step.B2_DanBian) {
            f.a.a.c.a.b.c cVar = new f.a.a.c.a.b.c(this.f14521a.n, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.c(cVar), new f.a.a.c.a.f.c(cVar), null, a(new f.a.a.c.a.d.c(cVar)), new ArrayList());
        }
        if (step == Step.B2_GaoSu) {
            d dVar = new d(this.f14521a.t, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.d(dVar), new f.a.a.c.a.f.d(dVar), null, a(new f.a.a.c.a.d.d(dVar)), new ArrayList());
        }
        if (step == Step.B2_ShiHuaLuMian) {
            f.a.a.c.a.b.e eVar = new f.a.a.c.a.b.e(this.f14521a.l, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.e(eVar), new f.a.a.c.a.f.e(eVar), null, a(new f.a.a.c.a.d.e(eVar)), new ArrayList());
        }
        if (step == Step.B2_JinJiQingKuang) {
            f fVar = new f(this.f14521a.k, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.f(fVar), new f.a.a.c.a.f.f(fVar), null, a(new f.a.a.c.a.d.f(fVar)), new ArrayList());
        }
        if (step == Step.B2_QiFu) {
            g gVar = new g(this.f14521a.r, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.g(gVar), new f.a.a.c.a.f.g(gVar), null, a(new f.a.a.c.a.d.g(gVar)), new ArrayList());
        }
        if (step == Step.B2_SQuXian) {
            f.a.a.c.a.b.h hVar = new f.a.a.c.a.b.h(this.f14521a.f4712f, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.h(hVar), new f.a.a.c.a.f.h(hVar), null, a(new f.a.a.c.a.d.h(hVar)), new ArrayList());
        }
        if (step == Step.B2_ShangPoQiBu) {
            j jVar = new j(this.f14521a.f4713g, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.j(jVar), new f.a.a.c.a.f.j(jVar), null, a(new f.a.a.c.a.d.j(jVar)), new ArrayList());
        }
        if (step == Step.B2_ShanLu) {
            i iVar = new i(this.f14521a.s, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.i(iVar), new f.a.a.c.a.f.i(iVar), null, a(new f.a.a.c.a.d.i(iVar)), new ArrayList());
        }
        if (step == Step.B2_SuiDao) {
            f.a.a.c.a.b.k kVar = new f.a.a.c.a.b.k(this.f14521a.m, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.k(kVar), new f.a.a.c.a.f.k(kVar), null, a(new f.a.a.c.a.d.k(kVar)), new ArrayList());
        }
        if (step == Step.B2_XianKuan) {
            l lVar = new l(this.f14521a.o, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.l(lVar), new f.a.a.c.a.f.l(lVar), null, a(new f.a.a.c.a.d.l(lVar)), new ArrayList());
        }
        if (step == Step.B2_ZhaiLuDiaoTou) {
            m mVar = new m(this.f14521a.j, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.m(mVar), new f.a.a.c.a.f.m(mVar), null, a(new f.a.a.c.a.d.m(mVar)), new ArrayList());
        }
        if (step == Step.B2_ZhangAi) {
            n nVar = new n(this.f14521a.p, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.n(nVar), new f.a.a.c.a.f.n(nVar), null, a(new f.a.a.c.a.d.n(nVar)), new ArrayList());
        }
        if (step == Step.B2_ZhiJiaoZhuanWan) {
            o oVar = new o(this.f14521a.f4714h, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.o(oVar), new f.a.a.c.a.f.o(oVar), null, a(new f.a.a.c.a.d.o(oVar)), new ArrayList());
        }
        if (step != Step.B2_ZhuangKao) {
            return null;
        }
        p pVar = new p(this.f14521a.q, new TeachingProcessor(this.f14522d.get(step), this.f14523e.get(step), this.b, this.c, this.f14524f));
        return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(step, bVar, new f.a.a.c.a.e.p(pVar), new f.a.a.c.a.f.p(pVar), null, a(new f.a.a.c.a.d.p(pVar)), new ArrayList());
    }
}
