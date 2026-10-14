package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouyouzhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouYouZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouYouZhuan_109112_Event extends d<K3LuKouYouZhuanStepConfig> {
    public K3_LuKouYouZhuan_109112_Event(K3LuKouYouZhuanStepConfig k3LuKouYouZhuanStepConfig, Deduct deduct) {
        super(k3LuKouYouZhuanStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return !bVar.j() || ((YouZhuanStateData) bVar.f()).state == YouZhuanStateData.State.TurningEND;
    }
}
