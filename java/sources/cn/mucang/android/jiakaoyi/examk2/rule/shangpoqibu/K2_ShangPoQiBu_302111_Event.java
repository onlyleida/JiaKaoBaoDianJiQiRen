package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302111_Event extends d<K2ShangPoQiBuConfig> {
    private long handbrakeOpenTime;

    public K2_ShangPoQiBu_302111_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2ShangPoQiBuConfig) this.config).p404124.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!eVar.d().f5268f) {
            if (this.handbrakeOpenTime <= 0) {
                this.handbrakeOpenTime = examProcessor.i;
            }
            long j = examProcessor.i;
            long j2 = this.handbrakeOpenTime;
            if (j2 > 0 && j - j2 >= ((Integer) ((K2ShangPoQiBuConfig) this.config).p404125.value).intValue() * 1000) {
                this.handbrakeOpenTime = 0L;
                setDoNotExecute(true);
                return false;
            }
        } else if (this.handbrakeOpenTime > 0) {
            setDoNotExecute(true);
        }
        return true;
    }
}
