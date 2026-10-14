package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.utils.f;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100222_Event extends d<K3GlobalStepConfig> {
    private boolean hasHandbrake;
    private Gear lastGear;
    private long startTime;

    public K3_Global_100222_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startTime = 0L;
        this.hasHandbrake = false;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a8  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean zY;
        boolean zJ;
        if (f.b() && !((Boolean) ((K3GlobalStepConfig) this.config).p200249.value).booleanValue()) {
            setDoNotExecute(true);
            return true;
        }
        if (((Boolean) ((K3GlobalStepConfig) this.config).p200244.value).booleanValue()) {
            zY = examProcessor.y(Step.K3_QiBu);
        } else {
            zY = (((Boolean) ((K3GlobalStepConfig) this.config).p200247.value).booleanValue() && examProcessor.y(Step.K3_TingChe)) ? false : true;
        }
        int i = eVar.d().m.gear;
        Gear gear = this.lastGear;
        if (gear != null && gear.gear != i) {
            this.startTime = 0L;
        }
        this.lastGear = eVar.d().m;
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (!zY || (!globalStateData.carStop && eVar.d().c())) {
            this.startTime = 0L;
        } else {
            int iIntValue = ((Integer) ((K3GlobalStepConfig) this.config).p200246.value).intValue();
            if (iIntValue == 0) {
                if ((i < Gear.Gear1.gear || i > Gear.Gear5.gear) && eVar.d().m != Gear.GearD) {
                    zJ = false;
                } else {
                    zJ = true;
                }
            } else if (iIntValue != 1) {
                zJ = iIntValue == 2 ? eVar.d().j(Light.TurnLeftLight) : eVar.d().f5268f;
            } else if (((i < Gear.Gear1.gear || i > Gear.Gear5.gear) && eVar.d().m != Gear.GearD) || !eVar.d().f5268f) {
                zJ = false;
            } else {
                zJ = true;
            }
            if (zJ) {
                if (this.startTime == 0) {
                    this.startTime = eVar.d().L;
                }
                if (eVar.d().L - this.startTime >= ((Integer) ((K3GlobalStepConfig) this.config).p200243.value).intValue() * 1000) {
                    return false;
                }
            } else {
                this.startTime = 0L;
            }
        }
        return true;
    }
}
