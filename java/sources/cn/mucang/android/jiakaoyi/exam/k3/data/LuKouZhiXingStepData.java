package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZhiXingStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class LuKouZhiXingStepData extends K3BaseStepData<K3LuKouZhiXingStepConfig> {
    public boolean isPressStopLine;

    public LuKouZhiXingStepData(K3LuKouZhiXingStepConfig k3LuKouZhiXingStepConfig) {
        super(k3LuKouZhiXingStepConfig);
        this.isPressStopLine = false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (!this.isPressStopLine && eVar.d().M == 3 && K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            this.isPressStopLine = K3CollisionManager.getInstance().isPressStopLine(eVar, examProcessor, true);
        }
    }
}
