package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100160_Event extends d<K3GlobalStepConfig> {
    private int count;
    private long firstGearTime;
    private Gear lastGear;

    public K3_Global_100160_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.count = 0;
        this.lastGear = null;
        this.firstGearTime = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.x() && eVar.d().m != Gear.Invalid) {
            if (((Boolean) ((K3GlobalStepConfig) this.config).p200125.value).booleanValue()) {
                setDoNotExecute(true);
                return true;
            }
            Gear gear = eVar.d().m;
            int i = gear.gear;
            boolean z = i >= Gear.Gear1.gear && i <= Gear.Gear5.gear;
            if (!eVar.d().f5267e) {
                this.count = 0;
            } else if (z) {
                Gear gear2 = this.lastGear;
                if (gear2 != null && gear != gear2) {
                    this.count++;
                }
                this.lastGear = gear;
                if (this.count >= 2) {
                    return false;
                }
            }
        }
        return true;
    }
}
