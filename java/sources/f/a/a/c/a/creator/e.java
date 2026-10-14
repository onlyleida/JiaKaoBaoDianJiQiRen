package f.a.a.c.a.creator;

import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.mapcollect.c.h;
import f.a.a.c.a.b.a;
import f.a.a.c.a.b.d;
import f.a.a.c.a.b.f;
import f.a.a.c.a.b.g;
import f.a.a.c.a.b.i;
import f.a.a.c.a.b.j;
import f.a.a.c.a.b.k;
import f.a.a.c.a.b.l;
import f.a.a.c.a.b.m;
import f.a.a.c.a.b.n;
import f.a.a.c.a.b.o;
import f.a.a.c.a.b.p;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class e implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f14511a;

    public e(h hVar) {
        this.f14511a = hVar;
    }

    private List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e> a(cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e eVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(eVar);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.i.c.a
    public b createStep(c.b bVar, StepConfig stepConfig, boolean z) {
        Step step = bVar.f3084d;
        if (step == Step.B2_CeFangTingChe) {
            a aVar = new a(this.f14511a.f4711e, new f.a.a.c.a.a.a(), true);
            return new b(step, bVar, new f.a.a.c.a.e.a(aVar), new f.a.a.c.a.f.a(aVar), null, a(new f.a.a.c.a.d.a(aVar)), new ArrayList());
        }
        if (step == Step.B2_ChunHuaLu) {
            f.a.a.c.a.b.b bVar2 = new f.a.a.c.a.b.b(this.f14511a.u, new f.a.a.c.a.a.b(), true);
            return new b(step, bVar, new f.a.a.c.a.e.b(bVar2), new f.a.a.c.a.f.b(bVar2), null, a(new f.a.a.c.a.d.b(bVar2)), new ArrayList());
        }
        if (step == Step.B2_DanBian) {
            f.a.a.c.a.b.c cVar = new f.a.a.c.a.b.c(this.f14511a.n, new f.a.a.c.a.a.c(), true);
            return new b(step, bVar, new f.a.a.c.a.e.c(cVar), new f.a.a.c.a.f.c(cVar), null, a(new f.a.a.c.a.d.c(cVar)), new ArrayList());
        }
        if (step == Step.B2_GaoSu) {
            d dVar = new d(this.f14511a.t, new f.a.a.c.a.a.d(), true);
            return new b(step, bVar, new f.a.a.c.a.e.d(dVar), new f.a.a.c.a.f.d(dVar), null, a(new f.a.a.c.a.d.d(dVar)), new ArrayList());
        }
        if (step == Step.B2_ShiHuaLuMian) {
            f.a.a.c.a.b.e eVar = new f.a.a.c.a.b.e(this.f14511a.l, new f.a.a.c.a.a.e(), true);
            return new b(step, bVar, new f.a.a.c.a.e.e(eVar), new f.a.a.c.a.f.e(eVar), null, a(new f.a.a.c.a.d.e(eVar)), new ArrayList());
        }
        if (step == Step.B2_JinJiQingKuang) {
            f fVar = new f(this.f14511a.k, new f.a.a.c.a.a.f(), true);
            return new b(step, bVar, new f.a.a.c.a.e.f(fVar), new f.a.a.c.a.f.f(fVar), null, a(new f.a.a.c.a.d.f(fVar)), new ArrayList());
        }
        if (step == Step.B2_QiFu) {
            g gVar = new g(this.f14511a.r, new f.a.a.c.a.a.g(), true);
            return new b(step, bVar, new f.a.a.c.a.e.g(gVar), new f.a.a.c.a.f.g(gVar), null, a(new f.a.a.c.a.d.g(gVar)), new ArrayList());
        }
        if (step == Step.B2_SQuXian) {
            f.a.a.c.a.b.h hVar = new f.a.a.c.a.b.h(this.f14511a.f4712f, new f.a.a.c.a.a.h(), true);
            return new b(step, bVar, new f.a.a.c.a.e.h(hVar), new f.a.a.c.a.f.h(hVar), null, a(new f.a.a.c.a.d.h(hVar)), new ArrayList());
        }
        if (step == Step.B2_ShangPoQiBu) {
            j jVar = new j(this.f14511a.f4713g, new f.a.a.c.a.a.j(), true);
            return new b(step, bVar, new f.a.a.c.a.e.j(jVar), new f.a.a.c.a.f.j(jVar), null, a(new f.a.a.c.a.d.j(jVar)), new ArrayList());
        }
        if (step == Step.B2_ShanLu) {
            i iVar = new i(this.f14511a.s, new f.a.a.c.a.a.i(), true);
            return new b(step, bVar, new f.a.a.c.a.e.i(iVar), new f.a.a.c.a.f.i(iVar), null, a(new f.a.a.c.a.d.i(iVar)), new ArrayList());
        }
        if (step == Step.B2_SuiDao) {
            k kVar = new k(this.f14511a.m, new f.a.a.c.a.a.k(), true);
            return new b(step, bVar, new f.a.a.c.a.e.k(kVar), new f.a.a.c.a.f.k(kVar), null, a(new f.a.a.c.a.d.k(kVar)), new ArrayList());
        }
        if (step == Step.B2_XianKuan) {
            l lVar = new l(this.f14511a.o, new f.a.a.c.a.a.l(), true);
            return new b(step, bVar, new f.a.a.c.a.e.l(lVar), new f.a.a.c.a.f.l(lVar), null, a(new f.a.a.c.a.d.l(lVar)), new ArrayList());
        }
        if (step == Step.B2_ZhaiLuDiaoTou) {
            m mVar = new m(this.f14511a.j, new f.a.a.c.a.a.m(), true);
            return new b(step, bVar, new f.a.a.c.a.e.m(mVar), new f.a.a.c.a.f.m(mVar), null, a(new f.a.a.c.a.d.m(mVar)), new ArrayList());
        }
        if (step == Step.B2_ZhangAi) {
            n nVar = new n(this.f14511a.p, new f.a.a.c.a.a.n(), true);
            return new b(step, bVar, new f.a.a.c.a.e.n(nVar), new f.a.a.c.a.f.n(nVar), null, a(new f.a.a.c.a.d.n(nVar)), new ArrayList());
        }
        if (step == Step.B2_ZhiJiaoZhuanWan) {
            o oVar = new o(this.f14511a.f4714h, new f.a.a.c.a.a.o(), true);
            return new b(step, bVar, new f.a.a.c.a.e.o(oVar), new f.a.a.c.a.f.o(oVar), null, a(new f.a.a.c.a.d.o(oVar)), new ArrayList());
        }
        if (step != Step.B2_ZhuangKao) {
            return null;
        }
        p pVar = new p(this.f14511a.q, new f.a.a.c.a.a.p(), true);
        return new b(step, bVar, new f.a.a.c.a.e.p(pVar), new f.a.a.c.a.f.p(pVar), null, a(new f.a.a.c.a.d.p(pVar)), new ArrayList());
    }
}
