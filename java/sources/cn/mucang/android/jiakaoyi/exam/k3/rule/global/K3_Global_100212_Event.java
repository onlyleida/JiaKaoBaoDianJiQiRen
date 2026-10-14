package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100212_Event extends d<K3GlobalStepConfig> {
    public float startDistance;
    public float sumDistance;

    public K3_Global_100212_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.sumDistance = BitmapDescriptorFactory.HUE_RED;
        this.startDistance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Integer) ((K3GlobalStepConfig) this.config).p200214.value).intValue() <= 0) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().b > ((Integer) ((K3GlobalStepConfig) this.config).p200131.value).intValue()) {
            if (this.startDistance == BitmapDescriptorFactory.HUE_RED) {
                this.startDistance = eVar.d().C;
            }
            if (this.sumDistance + (eVar.d().C - this.startDistance) > ((Integer) ((K3GlobalStepConfig) this.config).p200214.value).intValue()) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            if (this.startDistance > BitmapDescriptorFactory.HUE_RED) {
                this.sumDistance += eVar.d().C - this.startDistance;
            }
            this.startDistance = BitmapDescriptorFactory.HUE_RED;
        }
        return (this.sumDistance <= BitmapDescriptorFactory.HUE_RED && this.startDistance <= BitmapDescriptorFactory.HUE_RED) || !examProcessor.w();
    }
}
