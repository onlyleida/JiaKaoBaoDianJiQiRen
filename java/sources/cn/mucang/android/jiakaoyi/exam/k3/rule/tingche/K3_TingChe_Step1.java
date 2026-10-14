package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;
import cn.mucang.android.jky.usbcamera.detectside.t;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_Step1 extends BaseFinishEvent<K3TingCheStepConfig> {
    public K3_TingChe_Step1(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isStepEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 0) {
            if (((TingCheStepData) bVar.f()).state == TingCheStepData.State.CloseDoor) {
                return true;
            }
        } else if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 1) {
            if (eVar.d().p != KeyState.ON) {
                return true;
            }
        } else if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 2) {
            if (((TingCheStepData) bVar.f()).state == TingCheStepData.State.OpenDoor) {
                return true;
            }
        } else if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 3 && !eVar.d().f5268f) {
            return true;
        }
        return super.isEnd(eVar, examProcessor, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3TingCheStepConfig) this.config).p216124.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.TurnLight);
        examProcessor.n.c(ConflictSignal.TurnLightError);
        examProcessor.n.c(ConflictSignal.ChangeLane);
        examProcessor.n.c(ConflictSignal.LaShouShaNoJiaoSha);
        if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 1 && eVar.d().p != KeyState.ON) {
            examProcessor.n.c(ConflictSignal.EngineOff);
        }
        examProcessor.n.c(ConflictSignal.PressFullLine);
        if (((Boolean) ((K3TingCheStepConfig) this.config).p216152.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.ClutchTime);
            examProcessor.n.c(ConflictSignal.ClutchDistance);
        }
        if (((Boolean) ((K3TingCheStepConfig) this.config).p216158.value).booleanValue()) {
            return;
        }
        examProcessor.n.c(ConflictSignal.TurnLightLongDistance);
        examProcessor.n.c(ConflictSignal.TurnLightLongTime);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3TingCheStepConfig) this.config).p216101;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean zIsStepEnd = isStepEnd(eVar, examProcessor, bVar);
        if (zIsStepEnd) {
            t.a();
        }
        return zIsStepEnd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3TingCheStepConfig) this.config).p216125.value).booleanValue();
    }
}
