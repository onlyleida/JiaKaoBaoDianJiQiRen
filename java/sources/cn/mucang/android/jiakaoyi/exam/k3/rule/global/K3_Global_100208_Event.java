package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100208_Event extends d<K3GlobalStepConfig> {
    public float distance;

    public K3_Global_100208_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.distance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.QiBuNoShouSha)) {
            this.distance = BitmapDescriptorFactory.HUE_RED;
            return true;
        }
        boolean z = eVar.d().f5268f;
        if (eVar.d().c() && !z && this.distance == BitmapDescriptorFactory.HUE_RED) {
            this.distance = eVar.d().C;
        }
        if (z) {
            float f2 = eVar.d().C;
            float f3 = this.distance;
            float f4 = f2 - f3;
            if (f3 != BitmapDescriptorFactory.HUE_RED && f4 > ((Integer) ((K3GlobalStepConfig) this.config).p200207.value).intValue() && f4 <= ((K3GlobalStepConfig) this.config).p200207.value2) {
                this.distance = BitmapDescriptorFactory.HUE_RED;
                return false;
            }
            this.distance = BitmapDescriptorFactory.HUE_RED;
        }
        return true;
    }
}
