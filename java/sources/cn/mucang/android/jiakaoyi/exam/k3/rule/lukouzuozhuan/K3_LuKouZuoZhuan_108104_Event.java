package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_108104_Event extends d<K3LuKouZuoZhuanStepConfig> {
    public K3_LuKouZuoZhuan_108104_Event(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig, Deduct deduct) {
        super(k3LuKouZuoZhuanStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ZuoZhuanStateData zuoZhuanStateData = (ZuoZhuanStateData) bVar.f();
        if (((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208136.value).intValue() == 0) {
            if (zuoZhuanStateData.state == ZuoZhuanStateData.State.Turning && eVar.d().b > ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208110.value).intValue()) {
                return false;
            }
        } else if (((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208136.value).intValue() == 1 && eVar.d().b > ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208110.value).intValue()) {
            return false;
        }
        return true;
    }
}
