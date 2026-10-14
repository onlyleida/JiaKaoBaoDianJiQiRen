package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.k;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302123_Event extends d<K2ShangPoQiBuConfig> {
    private boolean hasHandbrake;
    private final b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_ShangPoQiBu_302123_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2ShangPoQiBuConfig) this.config).p404118.value).intValue() * 1000);
        this.hasHandbrake = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Integer) ((K2ShangPoQiBuConfig) this.config).p404118.value).intValue() > 0;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        k kVar = (k) bVar.f();
        if (kVar.f3283g) {
            this.timeoutChecker.g();
            if (!this.hasHandbrake && !eVar.d().f5268f) {
                this.hasHandbrake = true;
            }
            if (this.timeoutChecker.d()) {
                kVar.f3283g = false;
                setDoNotExecute(true);
                if (this.hasHandbrake && eVar.d().f5268f) {
                    return false;
                }
            }
        }
        return true;
    }
}
