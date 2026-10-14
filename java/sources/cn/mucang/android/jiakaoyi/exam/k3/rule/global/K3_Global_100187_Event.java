package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100187_Event extends d<K3GlobalStepConfig> {
    private Gear lastGear;
    private int lastRpm;
    private float lastSpeed;
    private int[] rpmSpeedRateCount;
    private int[] rpmSpeedRateSum;

    public K3_Global_100187_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.rpmSpeedRateSum = new int[Gear.values().length];
        this.rpmSpeedRateCount = new int[Gear.values().length];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        Gear gear;
        Gear gear2;
        if (!examProcessor.x() || !((Boolean) ((K3GlobalStepConfig) this.config).p200122.value).booleanValue()) {
            return true;
        }
        if (examProcessor.n.b(ConflictSignal.YueJiJiaJianDang)) {
            this.lastGear = null;
            return true;
        }
        Gear gear3 = eVar.d().m;
        Gear gear4 = Gear.Invalid;
        if (gear3 == gear4 || gear3 == (gear = Gear.GearN) || gear3 == (gear2 = Gear.GearBack) || !eVar.d().c()) {
            return true;
        }
        if (gear3 == Gear.Gear1 || gear3 == Gear.Gear2 || gear3 == Gear.Gear3 || gear3 == Gear.Gear4 || gear3 == Gear.Gear5) {
            if (this.lastGear == null) {
                this.lastGear = gear3;
            }
            int i = gear3.gear;
            Gear gear5 = this.lastGear;
            if (i - gear5.gear > 1 && gear5 != gear4 && gear5 != gear && gear5 != gear2) {
                this.lastGear = gear3;
                return false;
            }
        }
        this.lastGear = gear3;
        return true;
    }
}
