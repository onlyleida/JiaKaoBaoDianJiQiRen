package cn.mucang.android.jiakaoyi.examk2.b;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.collision.ShangPoChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.z;

/* JADX INFO: loaded from: classes2.dex */
public class k extends g<K2ShangPoQiBuConfig, cn.mucang.android.jiakaoyi.hpmap.a.a.g.k, ShangPoChecker> {
    private cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d b;
    public double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3282f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3283g;

    public k(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, ShangPoChecker shangPoChecker) {
        super(k2ShangPoQiBuConfig, shangPoChecker);
        this.b = new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d();
        this.f3280d = false;
        this.f3281e = false;
        this.f3282f = false;
        this.f3283g = false;
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.b.g, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (z.a()) {
            return;
        }
        double dA = this.b.a(eVar);
        this.c = dA;
        if (dA != 0.0d) {
            LiveBus.c(String.valueOf(dA));
        }
    }
}
