package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100167_Event extends d<K3GlobalStepConfig> {
    private int distanceLimit;
    private boolean reachGear;
    private float startDistance;
    private Gear targetGear;
    private boolean valueValid;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100167_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        String str = (String) k3GlobalStepConfig.p200190.value;
        if (str.contains(Marker.ANY_MARKER)) {
            String[] strArrSplit = str.split("\\*");
            if (strArrSplit.length != 2 || !y.a(strArrSplit[0]) || !y.a(strArrSplit[1])) {
                this.valueValid = false;
                return;
            }
            int iG = y.g(strArrSplit[1]);
            if (iG < Gear.Gear1.gear || iG > Gear.Gear5.gear) {
                this.valueValid = false;
                return;
            }
            this.targetGear = Gear.parse(iG);
            this.distanceLimit = y.g(strArrSplit[0]);
            this.valueValid = true;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            setDoNotExecute(true);
            return true;
        }
        if (!this.valueValid) {
            setDoNotExecute(true);
            return true;
        }
        if (this.startDistance <= BitmapDescriptorFactory.HUE_RED) {
            this.startDistance = eVar.d().C;
        }
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (eVar.d().m == this.targetGear || cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, this.targetGear, globalStateData.rpmRate)) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().C - this.startDistance <= this.distanceLimit) {
            return !examProcessor.w();
        }
        setDoNotExecute(true);
        return false;
    }
}
