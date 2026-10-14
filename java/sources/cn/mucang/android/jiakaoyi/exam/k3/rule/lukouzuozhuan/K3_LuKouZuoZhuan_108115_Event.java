package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_108115_Event extends d<K3LuKouZuoZhuanStepConfig> {
    public K3_LuKouZuoZhuan_108115_Event(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig, Deduct deduct) {
        super(k3LuKouZuoZhuanStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!bVar.f3143f.f3086f) {
            setDoNotExecute(true);
            return true;
        }
        ZuoZhuanStateData zuoZhuanStateData = (ZuoZhuanStateData) bVar.f();
        if (!eVar.d().j(Light.TurnLeftLight) && !eVar.d().j(Light.TurnRightLight)) {
            return examProcessor.i - zuoZhuanStateData.startTime <= ((long) (((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208118.value).intValue() * 1000));
        }
        setDoNotExecute(true);
        return true;
    }
}
