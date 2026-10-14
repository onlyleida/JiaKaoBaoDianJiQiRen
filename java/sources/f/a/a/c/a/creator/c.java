package f.a.a.c.a.creator;

import cn.mucang.android.jiakaoyi.engine.f.b;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.mapcollect.c.h;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;

/* JADX INFO: loaded from: classes4.dex */
public class c extends cn.mucang.android.jiakaoyi.engine.init.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f14505a;
    private final b b;
    private final cn.mucang.android.jiakaoyi.engine.f.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f14506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.processor.exam.c f14507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.i.a f14508f;

    class a implements cn.mucang.android.jiakaoyi.engine.i.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.i.a
        public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b onStepEnd(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
            return c.this.f14506d.stepCreator().createStep(new cn.mucang.android.jiakaoyi.engine.i.c.b(bVar.f3142e, null), c.this.f14506d.getRouteConfig().getStepConfig(bVar.f3142e), false);
        }
    }

    public c(b bVar, cn.mucang.android.jiakaoyi.engine.f.a aVar, cn.mucang.android.jiakaoyi.framework.h.b<EngineState> bVar2) {
        super(bVar2);
        this.f14508f = new a();
        this.b = bVar;
        this.c = aVar;
        h hVar = (h) x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
        this.f14505a = hVar;
        HPGpsManager.j();
        initEngine();
        LiveBus.c(new SetInitDebugGps(((cn.mucang.android.jiakaoyi.signal.i.b) hVar.x).c()));
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    protected cn.mucang.android.jiakaoyi.engine.c createEngine() {
        return new cn.mucang.android.jiakaoyi.engine.c(this.f14507e, this.b, this.c, this.f14508f);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void initEngine() {
        this.f14506d = new d(this.f14505a);
        this.f14507e = new cn.mucang.android.jiakaoyi.engine.processor.exam.c(KeMu.B2, SelectCarManager.d(), this.f14506d, false, true, true);
        super.initEngine();
    }
}
