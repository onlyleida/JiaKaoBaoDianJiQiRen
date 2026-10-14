package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearDistanceLimitChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100179_Event extends d<K3GlobalStepConfig> {
    private final GearDistanceLimitChecker distanceLimitChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100179_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.distanceLimitChecker = new GearDistanceLimitChecker(Gear.Gear2, ((Integer) k3GlobalStepConfig.p200106.value).intValue(), ((Boolean) k3GlobalStepConfig.p200173.value).booleanValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (!((Boolean) ((K3GlobalStepConfig) this.config).p200216.value).booleanValue() || !globalStateData.carStop) {
            return !this.distanceLimitChecker.check(eVar, examProcessor);
        }
        this.distanceLimitChecker.clear();
        return true;
    }
}
