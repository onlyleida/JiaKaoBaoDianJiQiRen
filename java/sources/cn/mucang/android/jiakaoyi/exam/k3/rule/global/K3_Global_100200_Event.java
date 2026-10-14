package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearTimeLimitChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100200_Event extends d<K3GlobalStepConfig> {
    private final GearTimeLimitChecker gearTimeLimitChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100200_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.gearTimeLimitChecker = new GearTimeLimitChecker(Gear.Gear3, ((Integer) k3GlobalStepConfig.p200172.value).intValue() * 1000, ((Boolean) k3GlobalStepConfig.p200173.value).booleanValue());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.x()) {
            return !this.gearTimeLimitChecker.check(eVar, examProcessor);
        }
        return true;
    }
}
