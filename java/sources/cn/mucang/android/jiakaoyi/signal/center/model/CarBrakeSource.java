package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.R;

/* JADX INFO: loaded from: classes3.dex */
public enum CarBrakeSource {
    BRAKE_SOURCE_NONE(255, "没有刹车", k0.a(R.string.signal_no_brake)),
    BRAKE_FRONT_RADAR_1(0, "前雷达1", k0.a(R.string.signal_front_radar_1)),
    BRAKE_FRONT_RADAR_2(1, "前雷达2", k0.a(R.string.signal_front_radar_2)),
    BRAKE_FRONT_RADAR_3(2, "前雷达3", k0.a(R.string.signal_front_radar_3)),
    BRAKE_FRONT_RADAR_4(3, "前雷达4", k0.a(R.string.signal_front_radar_4)),
    BRAKE_FRONT_RADAR_5(4, "前雷达5", k0.a(R.string.signal_front_radar_5)),
    BRAKE_FRONT_RADAR_6(5, "前雷达6", k0.a(R.string.signal_front_radar_6)),
    BRAKE_FRONT_RADAR_7(6, "前雷达7", k0.a(R.string.signal_front_radar_7)),
    BRAKE_FRONT_RADAR_8(7, "前雷达8", k0.a(R.string.signal_front_radar_8)),
    BRAKE_FRONT_RADAR_9(8, "前雷达9", k0.a(R.string.signal_front_radar_9)),
    BRAKE_FRONT_RADAR_10(9, "前雷达10", k0.a(R.string.signal_front_radar_10)),
    BRAKE_FRONT_RADAR_11(10, "前雷达11", k0.a(R.string.signal_front_radar_11)),
    BRAKE_FRONT_RADAR_12(11, "前雷达12", k0.a(R.string.signal_front_radar_12)),
    BRAKE_BACK_RADAR_1(12, "后雷达1", k0.a(R.string.signal_back_radar_1)),
    BRAKE_BACK_RADAR_2(13, "后雷达2", k0.a(R.string.signal_back_radar_2)),
    BRAKE_BACK_RADAR_3(14, "后雷达3", k0.a(R.string.signal_back_radar_3)),
    BRAKE_BACK_RADAR_4(15, "后雷达4", k0.a(R.string.signal_back_radar_4)),
    BRAKE_BACK_RADAR_5(16, "后雷达5", k0.a(R.string.signal_back_radar_5)),
    BRAKE_BACK_RADAR_6(17, "后雷达6", k0.a(R.string.signal_back_radar_6)),
    BRAKE_BACK_RADAR_7(18, "后雷达7", k0.a(R.string.signal_back_radar_7)),
    BRAKE_BACK_RADAR_8(19, "后雷达8", k0.a(R.string.signal_back_radar_8)),
    BRAKE_FRONT_LEFT_MIC_RADAR_1(20, "左前微波雷达", k0.a(R.string.signal_left_front_microwave_radar)),
    BRAKE_FRONT_RIGHT_MIC_RADAR_1(21, "右前微波雷达", k0.a(R.string.signal_right_front_microwave_radar)),
    BRAKE_BACK_MIC_RADAR_1(22, "后微波雷达", k0.a(R.string.signal_back_microwave_radar)),
    BRAKE_CAMERA_FRONT_1(23, "环视相机-前1", k0.a(R.string.signal_circle_camera_front_1)),
    BRAKE_CAMERA_LEFT(24, "环视相机-左", k0.a(R.string.signal_circle_camera_left)),
    BRAKE_CAMERA_RIGHT(25, "环视相机-右", k0.a(R.string.signal_circle_camera_right)),
    BRAKE_CAMERA_BACK(26, "环视相机-后", k0.a(R.string.signal_circle_camera_back)),
    BRAKE_CAMERA_FRONT_2(27, "环视相机-前2", k0.a(R.string.signal_circle_camera_front_2)),
    BRAKE_SPEED(28, "车速过高", k0.a(R.string.signal_over_speed)),
    BRAKE_RPM(29, "转速过高", k0.a(R.string.signal_rpm_hight)),
    BRAKE_BY_APP(30, "app刹车", k0.a(R.string.signal_app_brake)),
    BRAKE_BY_OPEN_DOOR(31, "行驶中开车门刹车", k0.a(R.string.signal_driving_open_door)),
    BRAKE_BY_OPEN_BELT(32, "行驶中解开安全带刹车", k0.a(R.string.signal_driving_open_belt)),
    BRAKE_BY_SLAMMED(39, "猛踩油门刹车", k0.a(R.string.signal_hard_slammed)),
    BRAKE_BY_SLAM_THE_STEERING_WHEEL(40, "猛打方向盘刹车", k0.a(R.string.signal_slam_the_steering_wheel)),
    BRAKE_BY_INCHING(41, "点刹控速", k0.a(R.string.signal_inching)),
    BRAKE_BY_SLIP_CAR(42, "溜车制动", k0.a(R.string.signal_slip_car)),
    BRAKE_BY_TAXIING(43, "空档滑行", k0.a(R.string.signal_taxiing)),
    BRAKE_BY_UPPER_COMPUTER(44, "APP上位机刹车", k0.a(R.string.signal_app_upper_brake)),
    BRAKE_BY_CONTROL_CENTER(45, "APP控制中心刹车", k0.a(R.string.signal_app_ctrl_center_brake)),
    BRAKE_BY_SERVER(46, "APP服务端刹车", k0.a(R.string.signal_app_server_brake)),
    BRAKE_BY_ELECTRONIC_FENCE(47, "APP电子围栏刹车", k0.a(R.string.signal_app_fence_brake)),
    BRAKE_BY_FRT_UTR1(51, "前超声波探头1", k0.a(R.string.signal_front_utr_1)),
    BRAKE_BY_FRT_UTR2(52, "前超声波探头2", k0.a(R.string.signal_front_utr_2)),
    BRAKE_BY_FRT_UTR3(53, "前超声波探头3", k0.a(R.string.signal_front_utr_3)),
    BRAKE_BY_FRT_UTR4(54, "前超声波探头4", k0.a(R.string.signal_front_utr_4)),
    BRAKE_BY_FRT_UTR5(55, "前超声波探头5", k0.a(R.string.signal_front_utr_5)),
    BRAKE_BY_FRT_UTR6(56, "前超声波探头6", k0.a(R.string.signal_front_utr_6)),
    BRAKE_BY_FRT_UTR7(57, "前超声波探头7", k0.a(R.string.signal_front_utr_7)),
    BRAKE_BY_FRT_UTR8(58, "前超声波探头8", k0.a(R.string.signal_front_utr_8)),
    BRAKE_BY_FRT_UTR9(59, "前超声波探头9", k0.a(R.string.signal_front_utr_9)),
    BRAKE_BY_FRT_UTR10(60, "前超声波探头10", k0.a(R.string.signal_front_utr_10)),
    BRAKE_BY_FRT_UTR11(61, "前超声波探头11", k0.a(R.string.signal_front_utr_11)),
    BRAKE_BY_FRT_UTR12(62, "前超声波探头12", k0.a(R.string.signal_front_utr_12)),
    BRAKE_BY_BAK_UTR1(63, "后超声波探头1", k0.a(R.string.signal_back_utr_1)),
    BRAKE_BY_BAK_UTR2(64, "后声波探头2", k0.a(R.string.signal_back_utr_2)),
    BRAKE_BY_BAK_UTR3(65, "后声波探头3", k0.a(R.string.signal_back_utr_3)),
    BRAKE_BY_BAK_UTR4(66, "后声波探头4", k0.a(R.string.signal_back_utr_4)),
    BRAKE_BY_BAK_UTR5(67, "后声波探头5", k0.a(R.string.signal_back_utr_5)),
    BRAKE_BY_BAK_UTR6(68, "后声波探头6", k0.a(R.string.signal_back_utr_6)),
    BRAKE_BY_BAK_UTR7(69, "后声波探头7", k0.a(R.string.signal_back_utr_7)),
    BRAKE_BY_BAK_UTR8(70, "后声波探头8", k0.a(R.string.signal_back_utr_8)),
    BRAKE_BY_BAK_UTR9(71, "后声波探头9", k0.a(R.string.signal_back_utr_9)),
    BRAKE_BY_BAK_UTR10(72, "后声波探头10", k0.a(R.string.signal_back_utr_10)),
    BRAKE_BY_INCHING_STOP(95, "点刹刹停", k0.a(R.string.signal_inching_stop)),
    BRAKE_BY_FORCE(96, "强制刹车", k0.a(R.string.signal_force_brake));

    public final int id;
    public final String src;
    public final String zhSrc;

    CarBrakeSource(int i, String str, String str2) {
        this.id = i;
        this.zhSrc = str;
        this.src = str2;
    }

    public static CarBrakeSource parse(int i) {
        for (CarBrakeSource carBrakeSource : values()) {
            if (carBrakeSource.id == i) {
                return carBrakeSource;
            }
        }
        return BRAKE_SOURCE_NONE;
    }

    public boolean isBrakedByCamera() {
        int i = this.id;
        return i >= BRAKE_CAMERA_FRONT_1.id && i <= BRAKE_CAMERA_FRONT_2.id;
    }

    public boolean isBrakedByRadar() {
        int i = this.id;
        return (i >= BRAKE_FRONT_RADAR_1.id && i <= BRAKE_BACK_MIC_RADAR_1.id) || (i >= BRAKE_BY_FRT_UTR1.id && i <= BRAKE_BY_BAK_UTR10.id);
    }

    public boolean isBrakedBySpeed() {
        return this == BRAKE_SPEED;
    }

    public boolean isDrivingOpenBelt() {
        return this == BRAKE_BY_OPEN_BELT;
    }

    public boolean isDrivingOpenDoor() {
        return this == BRAKE_BY_OPEN_DOOR;
    }
}
