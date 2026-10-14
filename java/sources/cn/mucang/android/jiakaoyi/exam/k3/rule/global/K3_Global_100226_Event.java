package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100226_Event extends d<K3GlobalStepConfig> {
    private boolean lastLeftLightOn;
    private boolean lastRightLightOn;
    private long lastTurnLeftTime;
    private long lastTurnRightTime;
    private long leftLightOnTime;
    private long rightLightOnTime;

    public K3_Global_100226_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.leftLightOnTime = 0L;
        this.rightLightOnTime = 0L;
        this.lastLeftLightOn = false;
        this.lastRightLightOn = false;
        this.lastTurnLeftTime = 0L;
        this.lastTurnRightTime = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d4  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        CarModel carModelD;
        Light light;
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        eVar.c();
        if (!this.lastLeftLightOn && eVar.d().j(Light.TurnLeftLight)) {
            this.leftLightOnTime = eVar.d().L;
        }
        if (!this.lastRightLightOn && eVar.d().j(Light.TurnRightLight)) {
            this.rightLightOnTime = eVar.d().L;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().h()) {
            if (globalStateData.hpGlobalChecker.startTurningLeft) {
                CarModel carModelD2 = eVar.d();
                Light light2 = Light.TurnLeftLight;
                if (carModelD2.j(light2)) {
                    if (this.lastTurnLeftTime > 0 && eVar.d().L - this.lastTurnLeftTime <= ((Integer) ((K3GlobalStepConfig) this.config).p200156.value).intValue() * 1000 && this.leftLightOnTime > 0 && eVar.d().L - this.leftLightOnTime > eVar.d().L - this.lastTurnLeftTime) {
                        this.lastLeftLightOn = eVar.d().j(light2);
                        this.lastRightLightOn = eVar.d().j(Light.TurnRightLight);
                        return false;
                    }
                    this.lastTurnLeftTime = eVar.d().L;
                } else if (globalStateData.hpGlobalChecker.startTurningRight) {
                    carModelD = eVar.d();
                    light = Light.TurnRightLight;
                    if (carModelD.j(light)) {
                        if (this.lastTurnRightTime <= 0 && eVar.d().L - this.lastTurnRightTime <= ((Integer) ((K3GlobalStepConfig) this.config).p200156.value).intValue() * 1000 && this.rightLightOnTime > 0 && eVar.d().L - this.rightLightOnTime > eVar.d().L - this.lastTurnRightTime) {
                            this.lastLeftLightOn = eVar.d().j(Light.TurnLeftLight);
                            this.lastRightLightOn = eVar.d().j(light);
                            return false;
                        }
                        this.lastTurnRightTime = eVar.d().L;
                    }
                }
            } else if (globalStateData.hpGlobalChecker.startTurningRight) {
                carModelD = eVar.d();
                light = Light.TurnRightLight;
                if (carModelD.j(light)) {
                    if (this.lastTurnRightTime <= 0) {
                    }
                    this.lastTurnRightTime = eVar.d().L;
                }
            }
        }
        this.lastLeftLightOn = eVar.d().j(Light.TurnLeftLight);
        this.lastRightLightOn = eVar.d().j(Light.TurnRightLight);
        return true;
    }
}
