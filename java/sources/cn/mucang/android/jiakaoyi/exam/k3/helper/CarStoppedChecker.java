package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class CarStoppedChecker {
    private static final int DEFAULT_DURATION = 2000;
    private int duration;
    private float minSpeed;
    private Long timeAtSpeed0;

    public CarStoppedChecker() {
        this(BitmapDescriptorFactory.HUE_RED, 2000);
    }

    public long getCheckTime() {
        return this.duration;
    }

    public boolean onCheck(e eVar) {
        CarModel carModelD = eVar.d();
        float f2 = carModelD.b;
        long j = carModelD.L;
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (carModelD.F != CarModel.Direction.Stop) {
                this.timeAtSpeed0 = null;
                return false;
            }
            if (this.timeAtSpeed0 == null) {
                this.timeAtSpeed0 = Long.valueOf(j);
            }
            return j - this.timeAtSpeed0.longValue() > ((long) this.duration);
        }
        if (f2 > this.minSpeed) {
            this.timeAtSpeed0 = null;
            return false;
        }
        if (this.timeAtSpeed0 == null) {
            this.timeAtSpeed0 = Long.valueOf(j);
        }
        return j - this.timeAtSpeed0.longValue() >= ((long) this.duration);
    }

    public void reset() {
        this.timeAtSpeed0 = null;
    }

    public CarStoppedChecker(float f2, int i) {
        this.timeAtSpeed0 = null;
        this.minSpeed = Math.max(CarModel.Y, f2);
        this.duration = i;
    }
}
