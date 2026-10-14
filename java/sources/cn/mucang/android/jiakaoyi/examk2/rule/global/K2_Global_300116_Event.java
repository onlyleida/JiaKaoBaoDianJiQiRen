package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300116_Event extends d<K2GlobalConfig> {
    private boolean check;
    private float currentDistance;

    public K2_Global_300116_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.currentDistance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2GlobalConfig) this.config).p401129.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean z = eVar.d().f5266d;
        if (!this.check && z) {
            this.check = true;
        }
        if (!this.check) {
            return true;
        }
        if (!eVar.d().c() || eVar.d().f5266d) {
            if (this.currentDistance > BitmapDescriptorFactory.HUE_RED) {
                this.check = false;
            }
            this.currentDistance = BitmapDescriptorFactory.HUE_RED;
        } else {
            if (this.currentDistance == BitmapDescriptorFactory.HUE_RED) {
                this.currentDistance = eVar.d().B;
            }
            if (this.currentDistance > BitmapDescriptorFactory.HUE_RED && (eVar.d().B - this.currentDistance) * 100.0f >= ((Integer) ((K2GlobalConfig) this.config).p401165.value).intValue()) {
                this.currentDistance = BitmapDescriptorFactory.HUE_RED;
                this.check = false;
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
