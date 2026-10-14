package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.k;
import cn.mucang.android.jiakaoyi.examk2.collision.ShangPoChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302112_Event extends d<K2ShangPoQiBuConfig> {
    private long lightStartTime;
    private boolean stopped;

    public K2_ShangPoQiBu_302112_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
        this.lightStartTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((ShangPoChecker) ((k) bVar.f()).f3279a).r == SubStep.Step2) {
            this.stopped = true;
        }
        if (this.stopped && eVar.d().c() && eVar.d().F.isForward()) {
            if (!eVar.d().j(Light.TurnLeftLight)) {
                setDoNotExecute(true);
                return false;
            }
            long j = this.lightStartTime;
            if (j == 0) {
                this.lightStartTime = examProcessor.i;
            } else if (examProcessor.i - j >= ((Integer) ((K2ShangPoQiBuConfig) this.config).p404120.value).intValue() * 1000) {
                setDoNotExecute(true);
            }
        }
        return true;
    }
}
