package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import cn.mucang.android.jiakaoyi.signal.utils.i;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class Judge100112Checker {
    private K3GlobalStepConfig config;
    private boolean isCheckFirst;
    private final i timeFilter;
    private boolean isKongGearFire = true;
    private long engineStartTime = 0;
    private boolean isLastShutdown = true;
    private final LinkedList<Gear> last5Gears = new LinkedList<>();
    private boolean isDoNotExecute = false;

    /* JADX WARN: Multi-variable type inference failed */
    public Judge100112Checker(K3GlobalStepConfig k3GlobalStepConfig) {
        this.config = k3GlobalStepConfig;
        this.timeFilter = new i(((Integer) k3GlobalStepConfig.p200154.value).intValue() * 1000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean check(e eVar) {
        if (this.isDoNotExecute) {
            return true;
        }
        if (f.b()) {
            this.isDoNotExecute = true;
            return true;
        }
        if (!((Boolean) this.config.p200119.value).booleanValue()) {
            this.isDoNotExecute = true;
            return true;
        }
        CarModel carModelD = eVar.d();
        if (!carModelD.k()) {
            return this.isKongGearFire;
        }
        this.last5Gears.addFirst(carModelD.m);
        if (this.last5Gears.size() > 5) {
            this.last5Gears.removeLast();
        }
        boolean zB = this.timeFilter.b(carModelD.f5265a < Math.max(((Integer) this.config.p200153.value).intValue(), 10), carModelD.L);
        if (((Boolean) this.config.p200235.value).booleanValue()) {
            zB = !carModelD.J;
        }
        if (!this.isCheckFirst) {
            this.isCheckFirst = true;
            this.isLastShutdown = zB;
            return this.isKongGearFire;
        }
        if (this.isLastShutdown && !zB) {
            this.engineStartTime = carModelD.L;
        }
        this.isLastShutdown = zB;
        long j = this.engineStartTime;
        if (j > 0) {
            if (carModelD.L - j < 1000) {
                if (zB) {
                    this.engineStartTime = 0L;
                }
                int i = 0;
                int i2 = 0;
                for (Gear gear : this.last5Gears) {
                    if (gear == Gear.GearN || gear == Gear.GearP) {
                        i++;
                    } else if (gear != Gear.Invalid) {
                        i2++;
                    }
                }
                if (i > 0 && i2 == 0) {
                    this.engineStartTime = 0L;
                }
                Gear gear2 = carModelD.m;
                if (gear2 == Gear.GearN || gear2 == Gear.GearP || carModelD.k) {
                    this.engineStartTime = 0L;
                }
                this.isKongGearFire = true;
            } else {
                this.engineStartTime = 0L;
                this.isKongGearFire = false;
            }
        }
        if (this.isKongGearFire) {
            return true;
        }
        reset();
        return false;
    }

    public void reset() {
        this.last5Gears.clear();
        this.timeFilter.a();
        this.isCheckFirst = false;
        this.engineStartTime = 0L;
        this.isLastShutdown = true;
        this.isKongGearFire = true;
    }
}
