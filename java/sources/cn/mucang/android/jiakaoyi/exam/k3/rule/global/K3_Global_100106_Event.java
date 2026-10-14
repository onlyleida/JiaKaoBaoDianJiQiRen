package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100106_Event extends d<K3GlobalStepConfig> {
    private float clutchStepOnStartDistance;
    private float clutchStepOnSumDistance;

    public K3_Global_100106_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (examProcessor.n.b(ConflictSignal.ClutchDistance)) {
            this.clutchStepOnStartDistance = BitmapDescriptorFactory.HUE_RED;
            this.clutchStepOnSumDistance = BitmapDescriptorFactory.HUE_RED;
            return true;
        }
        if (eVar.d().b <= ((Integer) ((K3GlobalStepConfig) this.config).p200128.value).intValue() + CarModel.Y) {
            this.clutchStepOnStartDistance = BitmapDescriptorFactory.HUE_RED;
            this.clutchStepOnSumDistance = BitmapDescriptorFactory.HUE_RED;
            return true;
        }
        if (!((Boolean) ((K3GlobalStepConfig) this.config).p200205.value).booleanValue()) {
            if (eVar.d().f5267e) {
                if (this.clutchStepOnStartDistance == BitmapDescriptorFactory.HUE_RED) {
                    this.clutchStepOnStartDistance = eVar.d().C;
                }
                if (eVar.d().C - this.clutchStepOnStartDistance > ((Integer) ((K3GlobalStepConfig) this.config).p200127.value).intValue()) {
                    return false;
                }
            } else {
                this.clutchStepOnStartDistance = BitmapDescriptorFactory.HUE_RED;
            }
            return true;
        }
        if (eVar.d().f5267e) {
            if (!eVar.d().f5269g && this.clutchStepOnStartDistance > BitmapDescriptorFactory.HUE_RED) {
                this.clutchStepOnSumDistance += eVar.d().C - this.clutchStepOnStartDistance;
            }
            this.clutchStepOnStartDistance = eVar.d().C;
        } else {
            this.clutchStepOnStartDistance = BitmapDescriptorFactory.HUE_RED;
            this.clutchStepOnSumDistance = BitmapDescriptorFactory.HUE_RED;
        }
        return this.clutchStepOnSumDistance <= ((float) ((Integer) ((K3GlobalStepConfig) this.config).p200127.value).intValue());
    }
}
