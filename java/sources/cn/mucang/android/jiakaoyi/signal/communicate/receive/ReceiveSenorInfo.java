package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeSource;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarClutchState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarFlameoutSource;
import cn.mucang.android.jiakaoyi.signal.center.model.CarThrottleState;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class ReceiveSenorInfo implements Serializable {
    public int collectBoardState;
    public int gearBoardState;
    public int mainBoardState;
    public int microwaveState;
    public float originGyro2;
    public float pitch2;
    public int rearMirrorAdjust;
    public int rearMirrorAdjustDir;
    public float roll2;
    public int safeBoardState;
    public int throttleBoardState;
    public int ultrasonic1State;
    public int ultrasonic2State;
    public float yaw2;
    public float[] mainBoardAd = new float[4];
    public boolean[] diState = new boolean[4];
    public float[] collectBoardAd = new float[10];
    public int[] collectBoardPwm = new int[4];
    public boolean[] collectBoardOutState = new boolean[12];
    public CarBrakeState safeBoardBrakeState = CarBrakeState.STATE_NONE;
    public CarClutchState safeModuleClutchState = CarClutchState.CLUTCH_NONE;
    public CarBrakeSource safeModuleBrakeReason = CarBrakeSource.BRAKE_SOURCE_NONE;
    public CarFlameoutSource carFlameoutSource = CarFlameoutSource.FLAMEOUT_SOURCE_NONE;
    public CarThrottleState throttleState = CarThrottleState.STATE_NONE;
    public CarBrakeDesc brakeDesc = CarBrakeDesc.DESC_NONE;

    public String toString() {
        return "ReceiveSenorInfo{yaw2=" + this.yaw2 + ", pitch2=" + this.pitch2 + ", roll2=" + this.roll2 + ", originGyro2=" + this.originGyro2 + ", rearMirrorAdjust=" + this.rearMirrorAdjust + ", rearMirrorAdjustDir=" + this.rearMirrorAdjustDir + ", mainBoardAd=" + Arrays.toString(this.mainBoardAd) + ", diState=" + Arrays.toString(this.diState) + ", collectBoardAd=" + Arrays.toString(this.collectBoardAd) + ", collectBoardPwm=" + Arrays.toString(this.collectBoardPwm) + ", collectBoardOutState=" + Arrays.toString(this.collectBoardOutState) + ", safeBoardBrakeState=" + this.safeBoardBrakeState + ", safeModuleClutchState=" + this.safeModuleClutchState + ", safeModuleBrakeReason=" + this.safeModuleBrakeReason + ", throttleState=" + this.throttleState + ", mainBoardState=" + this.mainBoardState + ", collectBoardState=" + this.collectBoardState + ", ultrasonic1State=" + this.ultrasonic1State + ", ultrasonic2State=" + this.ultrasonic2State + ", microwaveState=" + this.microwaveState + ", safeBoardState=" + this.safeBoardState + ", throttleBoardState=" + this.throttleBoardState + ", gearBoardState=" + this.gearBoardState + '}';
    }
}
