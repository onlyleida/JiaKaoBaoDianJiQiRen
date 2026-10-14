package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouyouzhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouYouZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouYouZhuan_109105_Event extends d<K3LuKouYouZhuanStepConfig> {
    public K3_LuKouYouZhuan_109105_Event(K3LuKouYouZhuanStepConfig k3LuKouYouZhuanStepConfig, Deduct deduct) {
        super(k3LuKouYouZhuanStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((YouZhuanStateData) bVar.f()).carStop) {
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
