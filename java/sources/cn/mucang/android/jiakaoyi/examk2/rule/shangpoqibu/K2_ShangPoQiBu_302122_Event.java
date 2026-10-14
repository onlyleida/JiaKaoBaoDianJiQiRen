package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302122_Event extends d<K2ShangPoQiBuConfig> {
    private boolean hasHandbrake;
    private boolean hasStop;
    private boolean hasSuccess;
    private final b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_ShangPoQiBu_302122_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2ShangPoQiBuConfig) this.config).p404134.value).intValue() * 1000);
        this.hasSuccess = false;
        this.hasStop = false;
        this.hasHandbrake = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (examProcessor.s.f3128a) {
            this.hasStop = true;
            if (!this.hasSuccess) {
                if (eVar.d().f5268f) {
                    this.timeoutChecker.b();
                } else {
                    this.hasHandbrake = true;
                    this.timeoutChecker.g();
                    if (this.timeoutChecker.d()) {
                        this.timeoutChecker.b();
                        this.hasSuccess = true;
                    }
                }
            }
        }
        if (this.hasStop && eVar.d().c()) {
            setDoNotExecute(true);
            this.timeoutChecker.b();
            if (!this.hasHandbrake || !this.hasSuccess) {
                return false;
            }
        }
        return true;
    }
}
