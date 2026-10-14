package cn.mucang.android.jiakaoyi.examk2.e;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class n extends f<o, K2ZhiJiaoZhuanWanConfig, cn.mucang.android.jiakaoyi.examk2.collision.j> {
    private final cn.mucang.android.jiakaoyi.examk2.collision.j j;
    private final K2ZhiJiaoZhuanWanConfig k;
    private BoundaryChecker l;
    private boolean m;

    public n(K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig, cn.mucang.android.jiakaoyi.examk2.collision.j jVar) {
        super(k2ZhiJiaoZhuanWanConfig.p405101, k2ZhiJiaoZhuanWanConfig.p405100, k2ZhiJiaoZhuanWanConfig.p405103, k2ZhiJiaoZhuanWanConfig.p405102, jVar);
        this.m = false;
        this.j = jVar;
        this.k = k2ZhiJiaoZhuanWanConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.examk2.e.f, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f handle(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f fVarHandle = super.handle(eVar, examProcessor, bVar);
        if (this.f3345f && this.j.r()) {
            BoundaryChecker boundaryCheckerK = this.j.k();
            this.l = boundaryCheckerK;
            if (boundaryCheckerK != null && ((Boolean) this.k.p405109.value).booleanValue() && !this.m && (eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight))) {
                this.m = true;
                examProcessor.f(Step.K2_ZhiJiaoZhuanWan, new int[]{305104});
            }
        }
        BoundaryChecker boundaryChecker = this.l;
        if (boundaryChecker != null && boundaryChecker.c() == BoundaryChecker.BoundaryState.Outside) {
            this.m = false;
            this.f3345f = false;
            this.l = null;
        }
        return fVarHandle;
    }
}
