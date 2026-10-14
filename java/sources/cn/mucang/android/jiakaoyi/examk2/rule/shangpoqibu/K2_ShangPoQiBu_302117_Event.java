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

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302117_Event extends d<K2ShangPoQiBuConfig> {
    private boolean isHaveHandbrakeOpen;
    private long startCheckTime;
    private long stopTime;

    public K2_ShangPoQiBu_302117_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
        this.isHaveHandbrakeOpen = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((ShangPoChecker) ((k) bVar.f()).f3279a).r == SubStep.Step2) {
            long j = examProcessor.i;
            if (this.stopTime == 0) {
                this.stopTime = j;
            }
            if (!this.isHaveHandbrakeOpen && !eVar.d().f5268f) {
                this.isHaveHandbrakeOpen = true;
            }
            if (this.startCheckTime == 0) {
                this.startCheckTime = j;
            }
            if (j - this.startCheckTime <= ((Integer) ((K2ShangPoQiBuConfig) this.config).p404111.value).intValue() * 1000 && this.isHaveHandbrakeOpen) {
                setDoNotExecute(true);
                return true;
            }
            if (j - this.startCheckTime > ((Integer) ((K2ShangPoQiBuConfig) this.config).p404111.value).intValue() * 1000 && !this.isHaveHandbrakeOpen) {
                setDoNotExecute(true);
                return false;
            }
        }
        if (!examProcessor.s.f3128a) {
            if (this.startCheckTime > 0) {
                setDoNotExecute(true);
                return this.isHaveHandbrakeOpen;
            }
            this.startCheckTime = 0L;
            this.stopTime = 0L;
        }
        return !bVar.j() || this.startCheckTime <= 0 || this.isHaveHandbrakeOpen;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
