package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GongQiaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineLabaChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class GongQiaoStateData extends K3BaseStepData<K3GongQiaoStepConfig> {
    public final JudgeLineLabaChecker labaChecker;

    public GongQiaoStateData(K3GongQiaoStepConfig k3GongQiaoStepConfig) {
        super(k3GongQiaoStepConfig);
        this.labaChecker = new JudgeLineLabaChecker();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (((Boolean) ((K3GongQiaoStepConfig) this.config).p220116.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            this.labaChecker.check(eVar, examProcessor, bVar);
        }
    }
}
