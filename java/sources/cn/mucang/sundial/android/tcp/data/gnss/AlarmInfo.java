package cn.mucang.sundial.android.tcp.data.gnss;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Send;

/* JADX INFO: loaded from: classes5.dex */
public class AlarmInfo implements Send {
    public static final int CAMERA_FAULT = 2048;
    public static final int DAILY_DRIVING_OVER_TIME = 262144;
    public static final int DRIVING_DISTANCE_LACK_OR_OVER = 4194304;
    public static final int EMERGENCY = 1;
    public static final int ENTER_EXIT_REGION = 1048576;
    public static final int ENTER_EXIT_ROUTE = 2097152;
    public static final int GNSS_MODULE_FAULT = 16;
    public static final int GNSS_WIRE_NOT_CONNECTED = 32;
    public static final int GNSS_WIRE_SHORT_CIRCUIT = 64;
    public static final int OVER_SPEED = 2;
    public static final int ROUTE_DEVIATION = 8388608;
    public static final int STOP_OVER_TIME = 524288;
    public static final int TERMINAL_LCD_FAULT = 512;
    public static final int TERMINAL_MAIN_POWER_LOW_VOLTAGE = 128;
    public static final int TERMINAL_MAIN_POWER_OFF = 256;
    public static final int TIRED_DRIVING = 4;
    public static final int TTS_MODULE_FAULT = 1024;
    public static final int VEHICLE_ACC_ON_ILLEGAL = 134217728;
    public static final int VEHICLE_GAS_EXCEPTION = 33554432;
    public static final int VEHICLE_MOVE_ILLEGAL = 268435456;
    public static final int VEHICLE_STOLEN = 67108864;
    public static final int VEHICLE_VSS_FAULT = 16777216;
    public static final int WARNING = 8;
    private int value;

    public static AlarmInfo createNormal() {
        return new AlarmInfo();
    }

    public void addMark(int i) {
        this.value = i | this.value;
    }

    public void clearAllMarks() {
        this.value = 0;
    }

    public void clearMark(int i) {
        this.value = (~i) & this.value;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendDWORD(this.value);
        return bytesEncoder.toByteArray();
    }
}
