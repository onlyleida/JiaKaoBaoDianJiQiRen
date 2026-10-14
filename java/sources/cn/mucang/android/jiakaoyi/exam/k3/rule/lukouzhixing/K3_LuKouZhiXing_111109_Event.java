package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzhixing;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZhiXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LuKouZhiXingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZhiXing_111109_Event extends d<K3LuKouZhiXingStepConfig> {
    public K3_LuKouZhiXing_111109_Event(K3LuKouZhiXingStepConfig k3LuKouZhiXingStepConfig, Deduct deduct) {
        super(k3LuKouZhiXingStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        LuKouZhiXingStepData luKouZhiXingStepData = (LuKouZhiXingStepData) bVar.f();
        return !((!K3CollisionManager.getInstance().hasHpCollision(eVar) || !((Boolean) ((K3LuKouZhiXingStepConfig) this.config).p211115.value).booleanValue()) ? true : luKouZhiXingStepData.isPressStopLine) || eVar.d().C - luKouZhiXingStepData.startEstimateDistance <= ((float) ((Integer) ((K3LuKouZhiXingStepConfig) this.config).p211110.value).intValue()) || eVar.d().C - luKouZhiXingStepData.startEstimateDistance >= ((float) ((K3LuKouZhiXingStepConfig) this.config).p211110.value2) || eVar.d().b >= ((float) ((Integer) ((K3LuKouZhiXingStepConfig) this.config).p211109.value).intValue());
    }
}
