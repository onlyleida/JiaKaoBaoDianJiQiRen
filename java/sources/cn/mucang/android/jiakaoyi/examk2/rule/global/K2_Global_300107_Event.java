package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300107_Event extends d<K2GlobalConfig> {
    private float currentDistance;
    private boolean engineOff;
    private boolean hasCheck;

    public K2_Global_300107_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.currentDistance = BitmapDescriptorFactory.HUE_RED;
        this.hasCheck = false;
        this.engineOff = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean z = eVar.d().f5266d;
        if (((Boolean) ((K2GlobalConfig) this.config).p401130.value).booleanValue() && !this.hasCheck) {
            if (!((Boolean) ((K2GlobalConfig) this.config).p401173.value).booleanValue()) {
                setDoNotExecute(true);
            }
            this.hasCheck = true;
            return z;
        }
        if (!this.hasCheck && eVar.d().F.isNotStop() && eVar.d().c > ((Float) ((K2GlobalConfig) this.config).p401103.value).floatValue()) {
            if (z) {
                this.hasCheck = true;
                this.currentDistance = BitmapDescriptorFactory.HUE_RED;
            } else {
                if (this.currentDistance == BitmapDescriptorFactory.HUE_RED) {
                    this.currentDistance = eVar.d().B;
                }
                if (this.currentDistance > BitmapDescriptorFactory.HUE_RED && (eVar.d().B - this.currentDistance) * 100.0f >= ((Integer) ((K2GlobalConfig) this.config).p401165.value).intValue()) {
                    this.currentDistance = BitmapDescriptorFactory.HUE_RED;
                    this.hasCheck = true;
                    return false;
                }
            }
        }
        if (((Boolean) ((K2GlobalConfig) this.config).p401173.value).booleanValue()) {
            if (this.engineOff && eVar.d().f5270h) {
                this.engineOff = false;
                return z;
            }
            if (!eVar.d().f5270h) {
                this.engineOff = true;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
