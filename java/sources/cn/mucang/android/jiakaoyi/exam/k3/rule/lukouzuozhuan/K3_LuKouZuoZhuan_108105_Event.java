package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_108105_Event extends d<K3LuKouZuoZhuanStepConfig> {
    public K3_LuKouZuoZhuan_108105_Event(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig, Deduct deduct) {
        super(k3LuKouZuoZhuanStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((ZuoZhuanStateData) bVar.f()).carStop) {
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
