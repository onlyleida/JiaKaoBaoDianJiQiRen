package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103109_Event extends d<K3QiBuStepConfig> {
    private long firstTime;
    private boolean isCarOn;

    public K3_QiBu_103109_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
        this.firstTime = -1L;
        this.isCarOn = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().f() && !this.isCarOn) {
            this.isCarOn = true;
        }
        if (!this.isCarOn || eVar.d().f()) {
            this.firstTime = -1L;
        } else {
            if (this.firstTime == -1) {
                this.firstTime = examProcessor.i;
            }
            if (examProcessor.i - this.firstTime > 1000) {
                this.isCarOn = false;
                return false;
            }
        }
        return true;
    }
}
