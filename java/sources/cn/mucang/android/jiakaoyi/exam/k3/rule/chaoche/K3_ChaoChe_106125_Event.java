package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106125_Event extends d<K3ChaoCheStepConfig> {
    public K3_ChaoChe_106125_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return !((Boolean) ((K3ChaoCheStepConfig) this.config).p206132.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (chaoCheStateData.chaocheDistance > BitmapDescriptorFactory.HUE_RED && chaoCheStateData.chaocheTime > 0) {
            if (!((Boolean) ((K3ChaoCheStepConfig) this.config).p206107.value).booleanValue() || !((Boolean) ((K3ChaoCheStepConfig) this.config).p206108.value).booleanValue()) {
                return !chaoCheStateData.carStop;
            }
            if (chaoCheStateData.hasPlayingBack) {
                return !chaoCheStateData.carStop;
            }
        }
        return true;
    }
}
