package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class K3_Global_100102_Event extends d<K3GlobalStepConfig> {
    private float startDistance;

    public K3_Global_100102_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startDistance = -1.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().b >= ((Integer) ((K3GlobalStepConfig) this.config).p200131.value).intValue()) {
            if (this.startDistance <= BitmapDescriptorFactory.HUE_RED) {
                this.startDistance = eVar.d().C;
            }
            if (eVar.d().C - this.startDistance >= ((Integer) ((K3GlobalStepConfig) this.config).p200132.value).intValue()) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            this.startDistance = -1.0f;
        }
        return !examProcessor.w();
    }
}
