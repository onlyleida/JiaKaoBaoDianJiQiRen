package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuanDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineTurnLightChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class HuanDaoStateData extends K3BaseStepData<K3HuanDaoStepConfig> {
    public final JudgeLineTurnLightChecker turnLightChecker;

    public HuanDaoStateData(K3HuanDaoStepConfig k3HuanDaoStepConfig) {
        super(k3HuanDaoStepConfig);
        this.turnLightChecker = new JudgeLineTurnLightChecker();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3HuanDaoStepConfig) this.config).p224116.value).booleanValue()) {
            this.turnLightChecker.check(eVar, examProcessor, bVar);
        }
    }
}
