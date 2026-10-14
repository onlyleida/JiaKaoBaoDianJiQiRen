package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.utils.f;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100229_Event extends d<K3GlobalStepConfig> {
    private Gear lastGear;
    private Gear lastJudgeGear;

    public K3_Global_100229_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        Gear gear = Gear.Invalid;
        this.lastJudgeGear = gear;
        this.lastGear = gear;
    }

    private boolean isJudgeGear(Gear gear) {
        int i = gear.gear;
        return (i >= Gear.Gear1.gear && i <= Gear.Gear5.gear) || gear == Gear.GearBack;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (f.b()) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().b < 2.0f) {
            Gear gear = Gear.Invalid;
            this.lastGear = gear;
            this.lastJudgeGear = gear;
            return true;
        }
        Gear gear2 = eVar.d().m;
        if (gear2 != Gear.Invalid) {
            if (isJudgeGear(gear2) && this.lastGear == Gear.GearN && gear2 == this.lastJudgeGear) {
                this.lastGear = gear2;
                return false;
            }
            if (isJudgeGear(gear2)) {
                this.lastJudgeGear = gear2;
            }
            this.lastGear = gear2;
        }
        return true;
    }
}
