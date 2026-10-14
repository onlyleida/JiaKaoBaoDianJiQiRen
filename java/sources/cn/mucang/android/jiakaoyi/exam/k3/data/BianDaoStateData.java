package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class BianDaoStateData extends K3BaseStepData<K3BianDaoStepConfig> {
    public BianDaoChecker bianDaoChecker;
    public boolean isFinishTurnLight;
    public boolean isOnlyCheckTurnLight;
    private long leftLightStartTime;
    private long rightLightStartTime;

    public BianDaoStateData(K3BianDaoStepConfig k3BianDaoStepConfig) {
        super(k3BianDaoStepConfig);
        this.isOnlyCheckTurnLight = false;
        this.isFinishTurnLight = false;
        this.bianDaoChecker = new BianDaoChecker(k3BianDaoStepConfig.p205109, this);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void beforeStart(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.beforeStart(eVar, bVar, examProcessor);
        this.bianDaoChecker.beforeStart(eVar, bVar, examProcessor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        this.isOnlyCheckTurnLight = ((Boolean) ((K3BianDaoStepConfig) this.config).p205126.value).booleanValue();
        this.bianDaoChecker.check(eVar, bVar, examProcessor);
        if (this.isOnlyCheckTurnLight) {
            if (!eVar.d().j(Light.TurnLeftLight)) {
                this.leftLightStartTime = 0L;
            } else if (this.leftLightStartTime == 0) {
                this.leftLightStartTime = eVar.d().L;
            }
            if (!eVar.d().j(Light.TurnRightLight)) {
                this.rightLightStartTime = 0L;
            } else if (this.rightLightStartTime == 0) {
                this.rightLightStartTime = eVar.d().L;
            }
            int iIntValue = ((Integer) ((K3BianDaoStepConfig) this.config).p205103.value).intValue();
            if (iIntValue == 0) {
                if (!this.isFinishTurnLight && this.leftLightStartTime > 0 && eVar.d().L - this.leftLightStartTime > ((Integer) ((K3BianDaoStepConfig) this.config).p205127.value).intValue() * 1000) {
                    this.isFinishTurnLight = true;
                }
                if (this.isFinishTurnLight || this.rightLightStartTime <= 0 || eVar.d().L - this.rightLightStartTime <= ((Integer) ((K3BianDaoStepConfig) this.config).p205127.value).intValue() * 1000) {
                    return;
                }
                this.isFinishTurnLight = true;
                return;
            }
            if (iIntValue == 1) {
                if (this.isFinishTurnLight || this.rightLightStartTime <= 0 || eVar.d().L - this.rightLightStartTime <= ((Integer) ((K3BianDaoStepConfig) this.config).p205127.value).intValue() * 1000) {
                    return;
                }
                this.isFinishTurnLight = true;
                return;
            }
            if (iIntValue != 2 || this.isFinishTurnLight || this.leftLightStartTime <= 0 || eVar.d().L - this.leftLightStartTime <= ((Integer) ((K3BianDaoStepConfig) this.config).p205127.value).intValue() * 1000) {
                return;
            }
            this.isFinishTurnLight = true;
        }
    }
}
