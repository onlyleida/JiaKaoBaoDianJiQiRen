package cn.mucang.android.jiakaoyi.teachingk2.y0.b;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;

/* JADX INFO: loaded from: classes4.dex */
public class h extends cn.mucang.android.jiakaoyi.teachingk2.y0.a<cn.mucang.android.jiakaoyi.hpmap.a.a.g.k, cn.mucang.android.jiakaoyi.teachingk2.s0.i> {
    private cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d b;
    public double c;

    public h(cn.mucang.android.jiakaoyi.teachingk2.s0.i iVar) {
        super(iVar);
        this.b = new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d(false);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.y0.a, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        double dA = this.b.a(eVar);
        this.c = dA;
        if (dA != 0.0d) {
            LiveBus.c(String.valueOf(dA));
        }
    }
}
