package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110119_Event extends d<K3DiaoTouStepConfig> {
    public K3_DiaoTou_110119_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3DiaoTouStepConfig) this.config).p210130.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        DiaoTouStateData diaoTouStateData = (DiaoTouStateData) bVar.f();
        if (diaoTouStateData.state == DiaoTouStateData.State.diaotou && eVar.d().M == 3) {
            float fA = cn.mucang.android.jiakaoyi.signal.utils.d.a(eVar.d().D - diaoTouStateData.startAngel);
            if (diaoTouStateData.startAngel != -999999.0f && Math.abs(fA) > 90.0f) {
                setDoNotExecute(true);
            }
            if (K3CollisionManager.getInstance().hasHpCollision(eVar) && K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, false, PressLineType.PressBanMaLine)) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
