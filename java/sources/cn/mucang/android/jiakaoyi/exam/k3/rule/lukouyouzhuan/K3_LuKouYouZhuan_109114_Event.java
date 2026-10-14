package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouyouzhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouYouZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouYouZhuan_109114_Event extends d<K3LuKouYouZhuanStepConfig> {
    public K3_LuKouYouZhuan_109114_Event(K3LuKouYouZhuanStepConfig k3LuKouYouZhuanStepConfig, Deduct deduct) {
        super(k3LuKouYouZhuanStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!bVar.f3143f.f3086f) {
            setDoNotExecute(true);
            return true;
        }
        YouZhuanStateData youZhuanStateData = (YouZhuanStateData) bVar.f();
        if (!eVar.d().j(Light.TurnRightLight) && !eVar.d().j(Light.TurnLeftLight)) {
            return examProcessor.i - youZhuanStateData.startTime <= ((long) (((Integer) ((K3LuKouYouZhuanStepConfig) this.config).p209118.value).intValue() * 1000));
        }
        setDoNotExecute(true);
        return true;
    }
}
