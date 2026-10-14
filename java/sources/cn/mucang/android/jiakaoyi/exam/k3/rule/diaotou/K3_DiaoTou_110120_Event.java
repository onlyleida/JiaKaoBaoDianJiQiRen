package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110120_Event extends d<K3DiaoTouStepConfig> {
    private boolean hasMove;
    private boolean isPressLine;
    private int pressCount;

    public K3_DiaoTou_110120_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
        this.isPressLine = false;
        this.hasMove = false;
        this.pressCount = 0;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (eVar.d().h()) {
                boolean zIsPressStopLine = K3CollisionManager.getInstance().isPressStopLine(eVar, examProcessor, true);
                this.isPressLine = zIsPressStopLine;
                if (zIsPressStopLine) {
                    this.pressCount++;
                } else {
                    this.pressCount = 0;
                }
            }
            boolean z = ((DiaoTouStateData) bVar.f()).carStop;
            if (!z) {
                this.hasMove = true;
            }
            if (this.hasMove) {
                if (z) {
                    setDoNotExecute(true);
                    return true;
                }
                if (this.pressCount >= 2) {
                    setDoNotExecute(true);
                    return false;
                }
            }
        }
        return true;
    }
}
