package cn.mucang.android.jiakaoyi.signal.autopilot;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.R;

/* JADX INFO: loaded from: classes3.dex */
public enum AutoPilotError {
    Unknown(-1, k0.a(R.string.signal_unknown), "未知类型"),
    Normal(0, k0.a(R.string.signal_normal), "正常"),
    OffTrack(1, k0.a(R.string.signal_offtrack), "偏离轨迹"),
    P0Error(2, k0.a(R.string.signal_p0_problem), "P0故障"),
    RadarBrake(3, k0.a(R.string.signal_obstacle_braking), "障碍物刹车"),
    EmergencyStop(4, k0.a(R.string.signal_stop_switch_trigger), "急停开关触发"),
    OtherBrake(5, k0.a(R.string.signal_non_obstacle_braking), "非障碍物刹停"),
    GPS(6, k0.a(R.string.signal_gps_no_4), "GPS信号弱"),
    RadarBrakeRecover(7, k0.a(R.string.signal_obstacle_miss), "障碍物消失，恢复自动驾驶"),
    GPSRecover(8, k0.a(R.string.signal_gps_regain), "GPS信号恢复，恢复自动驾驶"),
    HandbrakeUp(9, k0.a(R.string.signal_hand_brake_up), "手刹拉起"),
    DriveEnd(10, k0.a(R.string.signal_run_end_pos), "行驶到终点"),
    ManualEnd(11, k0.a(R.string.signal_manual_end), "手动结束"),
    FlameOut(12, k0.a(R.string.signal_car_flameout), "车辆熄火"),
    FootBrakeDown(13, k0.a(R.string.signal_foot_brake_down), "脚刹踩下"),
    TakeOverWheel(14, k0.a(R.string.signal_control_steering_wheel), "接管方向盘"),
    MotorError(15, k0.a(R.string.signal_gear_motor_fault), "换挡电机故障"),
    GearShiftTimeOut(16, k0.a(R.string.signal_change_gear_time_out), "换挡超时"),
    WaitPathTimeOut(17, k0.a(R.string.signal_wait_new_route_time_out), "等待新轨迹超时"),
    OpenBelt(18, k0.a(R.string.signal_open_sefe_belt), "解开安全带"),
    OpenDoor(19, k0.a(R.string.signal_open_door), "打开车门");

    public final String desc;
    public final int error;
    public int unknownCode;
    public String zhDesc;

    AutoPilotError(int i, String str, String str2) {
        this.error = i;
        this.desc = str;
        this.zhDesc = str2;
    }

    public static AutoPilotError parse(int i) {
        for (AutoPilotError autoPilotError : values()) {
            if (autoPilotError.error == i) {
                return autoPilotError;
            }
        }
        AutoPilotError autoPilotError2 = Unknown;
        autoPilotError2.unknownCode = i;
        return autoPilotError2;
    }
}
