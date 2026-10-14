package f.a.a.c.a.creator;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.f.b;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.c;
import cn.mucang.android.jiakaoyi.mapcollect.c.h;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class f extends cn.mucang.android.jiakaoyi.engine.init.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f14512a;
    private final b b;
    private final cn.mucang.android.jiakaoyi.engine.f.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> f14513d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f14514e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Step, List<TeachModel>> f14515f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<Step, Set<String>> f14516g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private g f14517h;
    private c i;
    private final cn.mucang.android.jiakaoyi.engine.i.a j;

    class a implements cn.mucang.android.jiakaoyi.engine.i.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.i.a
        public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b onStepEnd(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
            u.c(new Runnable() { // from class: f.a.a.c.a.c.a
                @Override // java.lang.Runnable
                public final void run() {
                    Runtime.getRuntime().gc();
                }
            });
            return f.this.f14517h.stepCreator().createStep(new cn.mucang.android.jiakaoyi.engine.i.c.b(bVar.f3142e, null), f.this.f14517h.getRouteConfig().getStepConfig(bVar.f3142e), false);
        }
    }

    public f(String str, b bVar, cn.mucang.android.jiakaoyi.engine.f.a aVar, cn.mucang.android.jiakaoyi.framework.h.b<EngineState> bVar2, cn.mucang.android.jiakaoyi.framework.h.b<FormModel> bVar3, k kVar, Map<Step, List<TeachModel>> map, Map<Step, Set<String>> map2) {
        super(bVar2);
        this.j = new a();
        this.b = bVar;
        this.c = aVar;
        this.f14513d = bVar3;
        this.f14514e = kVar;
        this.f14515f = map;
        this.f14516g = map2;
        HPGpsManager.k(Long.parseLong(str), (int) ExamSiteUtil.f(0L));
        h hVar = (h) x0.f5139a.a(str);
        this.f14512a = hVar;
        cn.mucang.android.jiakaoyi.mapcollect.b.utils.c.a(hVar);
        initEngine();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    protected cn.mucang.android.jiakaoyi.engine.c createEngine() {
        return new cn.mucang.android.jiakaoyi.engine.c(this.i, this.b, this.c, this.j);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void initEngine() {
        this.f14517h = new g(this.f14512a, this.f14515f, this.f14513d, this.f14514e, this.f14516g);
        this.i = new c(KeMu.B2, SelectCarManager.d(), this.f14517h, false, true, true, ((B2RobotTeachConfig) MucangConfig.getContext()).b());
        super.initEngine();
    }
}
