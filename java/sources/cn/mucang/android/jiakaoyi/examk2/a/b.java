package cn.mucang.android.jiakaoyi.examk2.a;

import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.examk2.common.K2ExamLogic;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.examk2.param.K2ExamParam;
import cn.mucang.android.jiakaoyi.framework.api.citycode.CityCodeManager;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.mapcollect.b.utils.e;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;

/* JADX INFO: loaded from: classes2.dex */
public class b extends cn.mucang.android.jiakaoyi.engine.init.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f3264a;
    private cn.mucang.android.jiakaoyi.engine.processor.exam.c b;
    private c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.b f3265d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f3266e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final K2ExamLogic f3267f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.i.a f3268g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a0<j> f3269h;
    private K2ExamParam i;

    class a implements cn.mucang.android.jiakaoyi.engine.i.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.i.a
        public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b onStepEnd(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
            Step step = bVar.f3142e;
            if (step == Step.K2_XiaCheJianCha) {
                return null;
            }
            if (step == Step.K2_QiDianQuYu && b.this.f3264a.k.isEmpty()) {
                return null;
            }
            return b.this.c.stepCreator().createStep(new cn.mucang.android.jiakaoyi.engine.i.c.b(bVar.f3142e, null), b.this.c.getRouteConfig().getStepConfig(bVar.f3142e), false);
        }
    }

    public b(String str, cn.mucang.android.jiakaoyi.framework.h.b<EngineState> bVar, boolean z) {
        super(bVar);
        this.f3268g = new a();
        a0<j> a0Var = new a0() { // from class: cn.mucang.android.jiakaoyi.examk2.a.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f3263a.g((j) obj);
            }
        };
        this.f3269h = a0Var;
        K2ExamLogic k2ExamLogic = new K2ExamLogic(this);
        this.f3267f = k2ExamLogic;
        this.f3265d = k2ExamLogic.H;
        this.f3266e = k2ExamLogic.I;
        HPGpsManager.k(Long.parseLong(str), (int) ExamSiteUtil.f(0L));
        if (z) {
            LiveBus.d(j.class).i(a0Var);
        }
        this.f3264a = (j) x0.f5139a.a(str);
        if (z) {
            return;
        }
        initEngine();
        e.a(this.f3264a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(j jVar) {
        initEngine();
        e.a(jVar);
    }

    public j c() {
        return this.f3264a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    protected cn.mucang.android.jiakaoyi.engine.c createEngine() {
        cn.mucang.android.jiakaoyi.engine.c cVar = new cn.mucang.android.jiakaoyi.engine.c(this.b, this.f3265d, this.f3266e, this.f3268g);
        K2GlobalConfig k2GlobalConfig = (K2GlobalConfig) cVar.h().m.getConfig(Step.K2_Global);
        cVar.h().i = ((Boolean) k2GlobalConfig.p401100.value).booleanValue();
        this.f3267f.v(cVar);
        return cVar;
    }

    public K2ExamLogic d() {
        return this.f3267f;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void destroy() {
        super.destroy();
        K2ExamLogic k2ExamLogic = this.f3267f;
        k2ExamLogic.E = false;
        k2ExamLogic.T();
        LiveBus.d(j.class).m(this.f3269h);
    }

    public cn.mucang.android.jiakaoyi.engine.e e() {
        return this.engine.i();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void initEngine() {
        this.c = new c(this.f3264a, CityCodeManager.d());
        this.i = new K2ExamParam();
        this.b = new cn.mucang.android.jiakaoyi.engine.processor.exam.c(KeMu.K2, SelectCarManager.d(), this.c, i0.b("keyK2ExamReport", true), true, true, this.i);
        super.initEngine();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public boolean start() {
        boolean zStart = super.start();
        if (zStart) {
            this.f3267f.D = System.currentTimeMillis();
            cn.mucang.android.jiakaoyi.signal.c.d.q();
            cn.mucang.android.jiakaoyi.signal.center.model.a.a().b(this.i.getMisFireRpm(), this.i.getMisFireTime() * 1000);
            try {
                this.f3267f.V();
            } catch (Exception e2) {
                t.d("K2EngineManager", "k2ExamLogic.init failed:" + e2);
            }
        }
        return zStart;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.init.a
    public void stop() {
        super.stop();
        this.f3267f.W();
        cn.mucang.android.jiakaoyi.signal.center.model.a.a().e();
    }
}
