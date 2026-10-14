package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_105111_Event extends d<K3BianDaoStepConfig> {
    private float targetDistance;

    public K3_BianDao_105111_Event(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
        super(k3BianDaoStepConfig, deduct);
        this.targetDistance = -1.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        BianDaoStateData bianDaoStateData = (BianDaoStateData) bVar.f();
        if (bianDaoStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        CarModel carModelD = eVar.d();
        if (bianDaoStateData.bianDaoChecker.state != BianDaoState.after) {
            return true;
        }
        if (this.targetDistance <= BitmapDescriptorFactory.HUE_RED) {
            this.targetDistance = carModelD.C + ((Integer) ((K3BianDaoStepConfig) this.config).p205115.value).intValue();
        }
        if (carModelD.j(Light.TurnLeftLight) || carModelD.j(Light.TurnRightLight)) {
            return carModelD.C <= this.targetDistance;
        }
        setDoNotExecute(true);
        return true;
    }
}
