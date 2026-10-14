package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100230_Event extends d<K3GlobalStepConfig> {
    private float limitDistance;
    private float limitSpeed;
    private float startDistance;
    private boolean valueValid;

    public K3_Global_100230_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.valueValid = false;
        this.limitSpeed = BitmapDescriptorFactory.HUE_RED;
        this.limitDistance = BitmapDescriptorFactory.HUE_RED;
        this.startDistance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!f.b()) {
            setDoNotExecute(true);
            return true;
        }
        if (!this.valueValid) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("p200259值设置错误 value = " + ((String) ((K3GlobalStepConfig) this.config).p200259.value));
            setDoNotExecute(true);
            return true;
        }
        if (((GlobalStateData) bVar.f()).carStop) {
            this.startDistance = BitmapDescriptorFactory.HUE_RED;
        }
        if (eVar.d().b < this.limitSpeed) {
            if (this.startDistance == BitmapDescriptorFactory.HUE_RED) {
                this.startDistance = eVar.d().C;
            }
            if (eVar.d().C - this.startDistance > this.limitDistance) {
                return false;
            }
        } else {
            this.startDistance = BitmapDescriptorFactory.HUE_RED;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        String[] strArrSplit = ((String) ((K3GlobalStepConfig) this.config).p200259.value).split("\\*");
        if (strArrSplit.length == 2) {
            try {
                this.limitSpeed = Float.parseFloat(strArrSplit[0]);
                this.limitDistance = Float.parseFloat(strArrSplit[1]);
                this.valueValid = true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
