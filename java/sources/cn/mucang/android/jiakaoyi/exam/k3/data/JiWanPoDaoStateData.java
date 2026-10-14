package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiWanPoDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineLabaChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class JiWanPoDaoStateData extends K3BaseStepData<K3JiWanPoDaoStepConfig> {
    public final JudgeLineLabaChecker labaChecker;

    public JiWanPoDaoStateData(K3JiWanPoDaoStepConfig k3JiWanPoDaoStepConfig) {
        super(k3JiWanPoDaoStepConfig);
        this.labaChecker = new JudgeLineLabaChecker();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3JiWanPoDaoStepConfig) this.config).p221115.value).booleanValue()) {
            this.labaChecker.check(eVar, examProcessor, bVar);
        }
    }
}
