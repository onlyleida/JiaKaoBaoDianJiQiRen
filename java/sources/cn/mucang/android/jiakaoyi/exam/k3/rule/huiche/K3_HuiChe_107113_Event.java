package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_107113_Event extends d<K3HuiCheStepConfig> {
    private boolean lastHasSpeed;
    private long startTime;

    public K3_HuiChe_107113_Event(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
        this.lastHasSpeed = true;
        this.startTime = 0L;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().c()) {
            this.startTime = 0L;
            this.lastHasSpeed = eVar.d().c();
            return true;
        }
        if (this.lastHasSpeed) {
            f.o("107113 扣分 速度是 " + eVar.d().b);
        }
        if (this.startTime == 0) {
            this.startTime = eVar.d().L;
        }
        this.lastHasSpeed = false;
        return eVar.d().L - this.startTime > 1000;
    }
}
