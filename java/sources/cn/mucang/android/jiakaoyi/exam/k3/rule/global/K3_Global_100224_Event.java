package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.TurnLightCloseChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100224_Event extends d<K3GlobalStepConfig> {
    private long startTime;
    private TurnLightCloseChecker turnLightCloseChecker;
    private GlobalStateData.State turnState;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100224_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startTime = -1L;
        this.turnLightCloseChecker = new TurnLightCloseChecker(((Integer) k3GlobalStepConfig.p200250.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return this.turnLightCloseChecker.check(eVar, examProcessor, bVar, ((GlobalStateData) bVar.f()).realState);
    }
}
