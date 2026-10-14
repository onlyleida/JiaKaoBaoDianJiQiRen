package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearSpeedTimeCalculator;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100170_Event extends d<K3GlobalStepConfig> {
    private boolean allDistanceDoNotExecute;
    private int distanceLimit;
    private GearSpeedTimeCalculator gearSpeedTimeCalculator;
    private boolean isPass;
    private int setupTime;
    private float startDistance;
    private long startTime;
    private Gear targetGear;
    private int targetSpeed;
    private boolean valueValid;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100170_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startTime = -1L;
        this.valueValid = false;
        this.isPass = false;
        String str = (String) k3GlobalStepConfig.p200189.value;
        if (str.contains(Marker.ANY_MARKER)) {
            String[] strArrSplit = str.split("\\*");
            if (strArrSplit.length != 4 || !y.a(strArrSplit[0]) || !y.a(strArrSplit[1]) || !y.a(strArrSplit[2]) || !y.a(strArrSplit[3])) {
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
            this.targetSpeed = y.g(strArrSplit[2]);
            this.setupTime = y.g(strArrSplit[3]);
            this.gearSpeedTimeCalculator = new GearSpeedTimeCalculator(this.targetGear, this.targetSpeed, false);
            this.valueValid = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (cn.mucang.android.jiakaoyi.signal.utils.e.a() || !examProcessor.x()) {
            return true;
        }
        CarModel carModelD = eVar.d();
        if (this.valueValid) {
            if (this.startDistance == BitmapDescriptorFactory.HUE_RED) {
                this.startDistance = carModelD.C;
            }
            if (this.gearSpeedTimeCalculator.startCalculate(eVar) > this.setupTime) {
                this.isPass = true;
            }
            if (carModelD.C - this.startDistance > this.distanceLimit) {
                this.startDistance = BitmapDescriptorFactory.HUE_RED;
                this.gearSpeedTimeCalculator.reset();
                if (!this.isPass) {
                    return false;
                }
                this.isPass = false;
            }
        }
        if (this.allDistanceDoNotExecute) {
            return true;
        }
        T t = this.config;
        IntegerValue integerValue = ((K3GlobalStepConfig) t).p200159;
        IntegerValue integerValue2 = ((K3GlobalStepConfig) t).p200114;
        IntegerValue integerValue3 = ((K3GlobalStepConfig) t).p200131;
        if (carModelD.m.gear < ((Integer) integerValue2.value).intValue() || carModelD.b < ((Integer) integerValue3.value).intValue()) {
            this.startTime = -1L;
        } else {
            if (this.startTime <= 0) {
                this.startTime = examProcessor.i;
            }
            if (examProcessor.i - this.startTime >= ((Integer) integerValue.value).intValue() * 1000) {
                this.allDistanceDoNotExecute = true;
                return true;
            }
        }
        return !examProcessor.w();
    }
}
