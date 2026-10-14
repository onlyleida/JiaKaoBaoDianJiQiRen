package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100126_Event extends d<K3GlobalStepConfig> {
    private int changeCount;
    private long gearChangeTime;
    private Gear lastGear;
    private Gear lastValidGear;

    public K3_Global_100126_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        Gear gear = Gear.Invalid;
        this.lastGear = gear;
        this.lastValidGear = gear;
        this.gearChangeTime = 0L;
        this.changeCount = 0;
    }

    private void updateLastGear(Gear gear) {
        if (this.lastGear.gear != gear.gear) {
            this.lastGear = gear;
        }
    }

    private void updateLastValidGear(Gear gear) {
        if (this.lastValidGear.gear != gear.gear) {
            this.lastValidGear = gear;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            setDoNotExecute(true);
            return true;
        }
        Gear gear = eVar.d().m;
        int i = gear.gear;
        int i2 = Gear.GearN.gear;
        if (i >= i2 && i <= Gear.Gear5.gear) {
            if (i >= Gear.Gear1.gear && this.lastGear.gear == i2) {
                if (this.changeCount == 0 && this.gearChangeTime == 0) {
                    this.gearChangeTime = eVar.d().L;
                }
                int i3 = this.changeCount + 1;
                this.changeCount = i3;
                if (i3 >= 2) {
                    boolean z = this.lastValidGear.gear == gear.gear && eVar.d().L - this.gearChangeTime < 3000;
                    this.gearChangeTime = 0L;
                    this.changeCount = 0;
                    updateLastGear(gear);
                    updateLastValidGear(gear);
                    return !z;
                }
                updateLastValidGear(gear);
            }
            updateLastGear(gear);
        }
        return true;
    }
}
