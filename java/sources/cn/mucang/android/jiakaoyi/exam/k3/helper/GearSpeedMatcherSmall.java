package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class GearSpeedMatcherSmall {
    private final Gear gear;
    private final IntegerValue intervalTime;
    private boolean isDeduct;
    private final RangeValue range;
    private final RangeValue timeRange;
    private long lastTime = 0;
    private long startTime = 0;
    private boolean isInit = false;

    public GearSpeedMatcherSmall(Gear gear, RangeValue rangeValue, RangeValue rangeValue2, IntegerValue integerValue) {
        this.gear = gear;
        this.range = rangeValue;
        this.timeRange = rangeValue2;
        this.intervalTime = integerValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean match(e eVar, ExamProcessor examProcessor) {
        if (eVar.d().f5267e) {
            return true;
        }
        CarModel carModelD = eVar.d();
        if (!this.isInit) {
            this.isInit = true;
            f.o("small " + this.gear.gearName + " range : " + this.range.value + "~" + this.range.value2 + " timeRange : " + this.timeRange.value + "~" + this.timeRange.value2 + " intervalTime : " + this.intervalTime.value);
        }
        float f2 = carModelD.b;
        int i = f2 > BitmapDescriptorFactory.HUE_RED ? (int) (carModelD.f5265a / f2) : 0;
        Gear gear = carModelD.m;
        if (gear == Gear.Gear1 && i < 90) {
            reset();
            return true;
        }
        if (gear == Gear.Gear2 && (i < 50 || i > 90)) {
            reset();
            return true;
        }
        if (gear == Gear.Gear3 && (i > 80 || i < 28)) {
            reset();
            return true;
        }
        if (gear == Gear.Gear4 && (i > 50 || i < 22)) {
            reset();
            return true;
        }
        if (gear == Gear.Gear5 && i > 40) {
            reset();
            return true;
        }
        if (gear != this.gear) {
            reset();
        } else {
            if (eVar.b().d(this.gear) == null) {
                return true;
            }
            if (!(carModelD.b < ((float) ((Integer) this.range.value).intValue()) || carModelD.b > ((float) this.range.value2))) {
                reset();
            } else {
                if (this.isDeduct) {
                    return true;
                }
                if (this.startTime <= 0) {
                    this.startTime = eVar.d().L;
                }
                long j = eVar.d().L - this.startTime;
                if (j > ((Integer) this.timeRange.value).intValue() * 1000 && j < ((long) this.timeRange.value2) * 1000 && examProcessor.i - this.lastTime > ((Integer) this.intervalTime.value).intValue() * 1000) {
                    this.lastTime = eVar.d().L;
                    this.isDeduct = true;
                    return false;
                }
            }
        }
        return true;
    }

    public void reset() {
        this.startTime = 0L;
        this.isDeduct = false;
    }
}
