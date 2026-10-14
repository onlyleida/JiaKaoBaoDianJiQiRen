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
public class K3_LuKouZhiXing_111101_Event extends d<K3LuKouZhiXingStepConfig> {
    public K3_LuKouZhiXing_111101_Event(K3LuKouZhiXingStepConfig k3LuKouZhiXingStepConfig, Deduct deduct) {
        super(k3LuKouZhiXingStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((LuKouZhiXingStepData) bVar.f()).carStop) {
            setDoNotExecute(true);
            return true;
        }
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar) || !eVar.d().h() || !K3CollisionManager.getInstance().isPressStopLine(eVar, examProcessor, true)) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
