package cn.mucang.android.jiakaoyi.k3setting.exam;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes3.dex */
public class b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K3EngineManager f4239a;
    private final K3GlobalStepConfig b;

    public b1(K3EngineManager k3EngineManager, K3GlobalStepConfig k3GlobalStepConfig) {
        this.f4239a = k3EngineManager;
        this.b = k3GlobalStepConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        if (this.f4239a.getEngine() != null) {
            if (((Boolean) this.b.p200231.value).booleanValue() && !cn.mucang.android.jiakaoyi.signal.utils.h.a(cn.mucang.android.jiakaoyi.signal.c.d.t().d().x)) {
                this.f4239a.engineOutDeduct(Step.K3_Global, 100215);
            }
            if (((Boolean) this.b.p200232.value).booleanValue() && cn.mucang.android.jiakaoyi.signal.utils.f.c() && cn.mucang.android.jiakaoyi.signal.c.d.t().d().m != Gear.GearN) {
                this.f4239a.engineOutDeduct(Step.K3_Global, 100216);
            }
            if (((Boolean) this.b.p200233.value).booleanValue() && cn.mucang.android.jiakaoyi.signal.c.d.t().d().f()) {
                this.f4239a.engineOutDeduct(Step.K3_Global, 100217);
            }
            if (!((Boolean) this.b.p200234.value).booleanValue() || cn.mucang.android.jiakaoyi.signal.c.d.t().d().j) {
                return;
            }
            this.f4239a.engineOutDeduct(Step.K3_Global, 100218);
        }
    }
}
