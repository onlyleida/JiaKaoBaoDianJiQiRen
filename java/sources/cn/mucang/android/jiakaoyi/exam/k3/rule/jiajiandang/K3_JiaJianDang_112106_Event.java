package cn.mucang.android.jiakaoyi.exam.k3.rule.jiajiandang;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JiaJianDang_112106_Event extends d<K3JiaJianDangStepConfig> {
    private boolean canCheck;
    private float startDistance;

    public K3_JiaJianDang_112106_Event(K3JiaJianDangStepConfig k3JiaJianDangStepConfig, Deduct deduct) {
        super(k3JiaJianDangStepConfig, deduct);
        this.startDistance = -1.0f;
        this.canCheck = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (eVar.d().b >= ((Integer) ((K3JiaJianDangStepConfig) this.config).p212118.value).intValue()) {
            this.canCheck = true;
            if (this.startDistance <= BitmapDescriptorFactory.HUE_RED) {
                this.startDistance = eVar.d().C;
            }
            if (eVar.d().C - this.startDistance >= ((Integer) ((K3JiaJianDangStepConfig) this.config).p212119.value).intValue()) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            this.startDistance = -1.0f;
        }
        return (bVar.j() && this.canCheck) ? false : true;
    }
}
