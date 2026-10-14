package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class FootBrakeValidChecker {
    private float currentBrakeDistance;
    private float currentBrakeStartDistance;
    private final int judgeMethod;
    private float totalBrakeDistance;
    private boolean hasValidFootBrake = false;
    private boolean isStartJudge = false;
    private boolean lastFootBrakeOn = false;
    private boolean checkResult = false;
    private boolean hasInit = false;

    /* JADX WARN: Multi-variable type inference failed */
    public FootBrakeValidChecker(K3GlobalStepConfig k3GlobalStepConfig) {
        if (k3GlobalStepConfig != null) {
            this.judgeMethod = ((Integer) k3GlobalStepConfig.p200261.value).intValue();
        } else {
            this.judgeMethod = 0;
        }
    }

    public boolean check(e eVar) {
        boolean z = eVar.d().f5269g;
        boolean z2 = false;
        if (!this.hasInit) {
            this.hasInit = true;
            this.lastFootBrakeOn = z;
            return false;
        }
        if (z) {
            if (this.currentBrakeStartDistance == BitmapDescriptorFactory.HUE_RED) {
                this.currentBrakeStartDistance = eVar.d().C;
            }
            this.currentBrakeDistance = eVar.d().C - this.currentBrakeStartDistance;
        } else {
            if (this.currentBrakeStartDistance != BitmapDescriptorFactory.HUE_RED) {
                this.totalBrakeDistance += eVar.d().C - this.currentBrakeStartDistance;
                this.currentBrakeStartDistance = BitmapDescriptorFactory.HUE_RED;
            }
            this.currentBrakeDistance = BitmapDescriptorFactory.HUE_RED;
        }
        if (this.judgeMethod != 0) {
            if (!z) {
                this.isStartJudge = true;
            }
            if (!this.isStartJudge) {
                this.currentBrakeDistance = BitmapDescriptorFactory.HUE_RED;
                this.totalBrakeDistance = BitmapDescriptorFactory.HUE_RED;
                this.currentBrakeStartDistance = BitmapDescriptorFactory.HUE_RED;
            } else if (!this.lastFootBrakeOn && z) {
                this.hasValidFootBrake = true;
            }
            this.lastFootBrakeOn = z;
        } else if (z) {
            this.hasValidFootBrake = true;
        }
        if (this.hasValidFootBrake && z) {
            z2 = true;
        }
        this.checkResult = z2;
        return z2;
    }

    public float getCurrentBrakeDistance() {
        return this.currentBrakeDistance;
    }

    public float getJudgeBrakeDistance(e eVar) {
        if (this.judgeMethod == 0) {
            return this.checkResult ? eVar.d().C : BitmapDescriptorFactory.HUE_RED;
        }
        return this.checkResult ? this.currentBrakeStartDistance : BitmapDescriptorFactory.HUE_RED;
    }

    public float getTotalBrakeDistance(e eVar) {
        if (this.currentBrakeStartDistance != BitmapDescriptorFactory.HUE_RED) {
            this.totalBrakeDistance += eVar.d().C - this.currentBrakeStartDistance;
        }
        return this.totalBrakeDistance;
    }
}
