package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class GearSpeedTimeCalculator {
    private final Gear gear;
    private final boolean isCumulative;
    private final int speed;
    private long startTime;
    private long totalTime;

    public GearSpeedTimeCalculator(Gear gear, int i) {
        this.totalTime = 0L;
        this.startTime = 0L;
        this.gear = gear;
        this.speed = i;
        this.isCumulative = true;
    }

    public void reset() {
        this.totalTime = 0L;
        this.startTime = 0L;
    }

    public long startCalculate(e eVar) {
        CarModel carModelD = eVar.d();
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(carModelD.m, this.gear, cn.mucang.android.jiakaoyi.signal.gearsensor.e.m(eVar)) && carModelD.b >= this.speed) {
            if (this.startTime <= 0) {
                this.startTime = eVar.d().L;
            }
            return this.totalTime + (eVar.d().L - this.startTime);
        }
        if (this.startTime > 0) {
            this.totalTime = (long) (this.totalTime + (eVar.d().C - this.startTime));
        }
        this.startTime = -1L;
        if (!this.isCumulative) {
            this.totalTime = 0L;
        }
        return this.totalTime;
    }

    public GearSpeedTimeCalculator(Gear gear, int i, boolean z) {
        this.totalTime = 0L;
        this.startTime = 0L;
        this.gear = gear;
        this.speed = i;
        this.isCumulative = z;
    }
}
