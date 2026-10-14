package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class GearDistanceLimitChecker {
    private final Gear checkGear;
    private float gearStartDistance = BitmapDescriptorFactory.HUE_RED;
    private final boolean isSeriesCheck;
    private final float limitDistance;

    public GearDistanceLimitChecker(Gear gear, float f2, boolean z) {
        this.checkGear = gear;
        this.limitDistance = f2;
        this.isSeriesCheck = z;
    }

    public boolean check(e eVar, ExamProcessor examProcessor) {
        if (this.checkGear == null) {
            return false;
        }
        if (eVar.d().m == this.checkGear) {
            if (this.gearStartDistance == BitmapDescriptorFactory.HUE_RED) {
                this.gearStartDistance = eVar.d().C;
            }
            if (this.isSeriesCheck) {
                if (eVar.d().C - this.gearStartDistance > this.limitDistance) {
                    clear();
                    return true;
                }
            } else if (eVar.d().C - this.gearStartDistance > this.limitDistance) {
                return true;
            }
        } else {
            this.gearStartDistance = BitmapDescriptorFactory.HUE_RED;
        }
        return false;
    }

    public void clear() {
        this.gearStartDistance = BitmapDescriptorFactory.HUE_RED;
    }
}
