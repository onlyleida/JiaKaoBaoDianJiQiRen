package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class GearSpeedDistanceCalculator {
    private int gear;
    private boolean isCumulative;
    private int speed;
    private double startDistance;
    private double totalDistance;

    public GearSpeedDistanceCalculator(int i, int i2) {
        this.totalDistance = 0.0d;
        this.startDistance = 0.0d;
        this.gear = i;
        this.speed = i2;
        this.isCumulative = true;
    }

    public void reset() {
        this.totalDistance = 0.0d;
        this.startDistance = 0.0d;
    }

    public double startCalculate(e eVar) {
        CarModel carModelD = eVar.d();
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(carModelD.m, Gear.parse(this.gear), cn.mucang.android.jiakaoyi.signal.gearsensor.e.m(eVar)) && carModelD.b >= this.speed) {
            if (this.startDistance <= 0.0d) {
                this.startDistance = eVar.d().C;
            }
            return this.totalDistance + (((double) eVar.d().C) - this.startDistance);
        }
        if (this.startDistance > 0.0d) {
            this.totalDistance += ((double) eVar.d().C) - this.startDistance;
        }
        this.startDistance = -1.0d;
        if (!this.isCumulative) {
            this.totalDistance = 0.0d;
        }
        return this.totalDistance;
    }

    public GearSpeedDistanceCalculator(int i, int i2, boolean z) {
        this.totalDistance = 0.0d;
        this.startDistance = 0.0d;
        this.gear = i;
        this.speed = i2;
        this.isCumulative = z;
    }
}
