package cn.mucang.android.jiakaoyi.teachingk2.collect;

import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.api.citycode.CityCodeManager;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;

/* JADX INFO: loaded from: classes4.dex */
public class b0 extends cn.mucang.android.jiakaoyi.engine.init.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.mapcollect.c.j f6487a;
    private c0 b;
    private final cn.mucang.android.jiakaoyi.engine.f.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f6488d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.processor.exam.c f6489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.i.a f6490f;

    class a implements cn.mucang.android.jiakaoyi.engine.i.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.i.a
        public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b onStepEnd(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
            if (bVar.f3142e == Step.K2_XiaCheJianCha) {
                return null;
            }
            return b0.this.b.stepCreator().createStep(new cn.mucang.android.jiakaoyi.engine.i.c.b(bVar.f3142e, null), b0.this.b.getRouteConfig().getStepConfig(bVar.f3142e), false);
        }
    }

    public b0(cn.mucang.android.jiakaoyi.engine.f.b bVar, cn.mucang.android.jiakaoyi.engine.f.a aVar, cn.mucang.android.jiakaoyi.framework.h.b<EngineState> bVar2) {
        super(bVar2);
        this.f6490f = new a();
        this.c = bVar;
        this.f6488d = aVar;
        this.f6487a = (cn.mucang.android.jiakaoyi.mapcollect.c.j) x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
        HPGpsManager.j();
        initEngine();
        LiveBus.c(new SetInitDebugGps(((cn.mucang.android.jiakaoyi.signal.i.b) this.f6487a.v).c()));
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    protected cn.mucang.android.jiakaoyi.engine.c createEngine() {
        return new cn.mucang.android.jiakaoyi.engine.c(this.f6489e, this.c, this.f6488d, this.f6490f);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void destroy() {
        super.destroy();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void initEngine() {
        this.b = new c0(this.f6487a, CityCodeManager.d());
        this.f6489e = new cn.mucang.android.jiakaoyi.engine.processor.exam.c(KeMu.K2, SelectCarManager.d(), this.b, false, true, true);
        super.initEngine();
    }
}
