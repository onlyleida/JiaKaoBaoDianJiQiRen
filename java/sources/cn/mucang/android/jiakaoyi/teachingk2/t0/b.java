package cn.mucang.android.jiakaoyi.teachingk2.t0;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.examk2.param.K2ExamParam;
import cn.mucang.android.jiakaoyi.framework.api.citycode.CityCodeManager;
import cn.mucang.android.jiakaoyi.mapcollect.b.utils.e;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class b extends cn.mucang.android.jiakaoyi.engine.init.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f7991a;
    private c b;
    private final cn.mucang.android.jiakaoyi.engine.f.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f7992d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.processor.exam.c f7993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> f7994f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k f7995g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map<Step, List<TeachModel>> f7996h;
    private final Map<Step, Set<String>> i;
    private final int j;
    private final cn.mucang.android.jiakaoyi.engine.i.a k;

    class a implements cn.mucang.android.jiakaoyi.engine.i.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.i.a
        public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b onStepEnd(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
            if (bVar.f3142e == Step.K2_XiaCheJianCha) {
                return null;
            }
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.t0.a
                @Override // java.lang.Runnable
                public final void run() {
                    Runtime.getRuntime().gc();
                }
            });
            return b.this.b.stepCreator().createStep(new cn.mucang.android.jiakaoyi.engine.i.c.b(bVar.f3142e, null), b.this.b.getRouteConfig().getStepConfig(bVar.f3142e), false);
        }
    }

    public b(String str, cn.mucang.android.jiakaoyi.engine.f.b bVar, cn.mucang.android.jiakaoyi.engine.f.a aVar, cn.mucang.android.jiakaoyi.framework.h.b<EngineState> bVar2, cn.mucang.android.jiakaoyi.framework.h.b<FormModel> bVar3, k kVar, Map<Step, List<TeachModel>> map, Map<Step, Set<String>> map2, int i) {
        super(bVar2);
        this.k = new a();
        this.c = bVar;
        this.f7992d = aVar;
        this.f7994f = bVar3;
        this.f7995g = kVar;
        this.f7996h = map;
        this.i = map2;
        this.j = i;
        HPGpsManager.k(Long.parseLong(str), (int) ExamSiteUtil.f(0L));
        j jVar = (j) x0.f5139a.a(str);
        this.f7991a = jVar;
        e.a(jVar);
        initEngine();
    }

    public void b() {
        c cVar = this.b;
        if (cVar != null) {
            cVar.b(this.f7991a, this.f7996h, this.i);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    protected cn.mucang.android.jiakaoyi.engine.c createEngine() {
        return new cn.mucang.android.jiakaoyi.engine.c(this.f7993e, this.c, this.f7992d, this.k);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void initEngine() {
        this.b = new c(this.f7991a, CityCodeManager.d(), this.f7996h, this.f7994f, this.f7995g, this.i, this.j);
        this.f7993e = new cn.mucang.android.jiakaoyi.engine.processor.exam.c(KeMu.K2, SelectCarManager.d(), this.b, this.j == 5 ? false : TeachConfig.a().getDeductVoice(), true, true, new K2ExamParam());
        super.initEngine();
    }
}
