package cn.mucang.android.jiakaoyi.framework.base.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class HardwareInfo implements Serializable {
    public int boxVersion;
    public int carType;
    public int gearFirmwareVersion;
    public int gearHardwareVersion;
    public String hardwareNumber;
    public int hardwareVersion;
    public boolean isSafeSpeedCheck;
    public int micSafeFirmwareVersion;
    public int micSafeHardwareVersion;
    public int micWaveFirmwareVersion;
    public int micWaveHardwareVersion;
    public int obdVersion;
    public int otaVersion;
    public String serialNumber;
    public int signalFirmwareVersion;
    public int signalHardwareVersion;
    public int throttleFirmwareVersion;
    public int throttleHardwareVersion;
    public int ultrasonic1FirmwareVersion;
    public int ultrasonic1HardwareVersion;
    public int ultrasonic2FirmwareVersion;
    public int ultrasonic2HardwareVersion;

    public String string() {
        return "{车型=" + this.carType + ", 主控HV=" + this.hardwareVersion + ", 主控FV=" + this.otaVersion + ", OBD_FV=" + this.obdVersion + ", hardwareNumber='" + this.hardwareNumber + "', serialNumber='" + this.serialNumber + "', 盒子版本=" + this.boxVersion + ", 采集板HV=" + this.signalHardwareVersion + ", 采集板FV=" + this.signalFirmwareVersion + ", 前超声HV=" + this.ultrasonic1HardwareVersion + ", 前超声FV=" + this.ultrasonic1FirmwareVersion + ", 后超声HV=" + this.ultrasonic2HardwareVersion + ", 后超声FV=" + this.ultrasonic2FirmwareVersion + ", 安全模块HV=" + this.micSafeHardwareVersion + ", 安全模块FV=" + this.micSafeFirmwareVersion + ", 油门模块HV=" + this.throttleHardwareVersion + ", 油门模块FV=" + this.throttleFirmwareVersion + ", 挡位模块HV=" + this.gearHardwareVersion + ", 挡位模块FV=" + this.gearFirmwareVersion + ", 微波模块HV=" + this.micWaveHardwareVersion + ", 微波模块FV=" + this.micWaveFirmwareVersion + '}';
    }

    public String toString() {
        return "(车辆类型=" + this.carType + ", 硬件版本=" + this.hardwareVersion + ", 主控版本=" + this.otaVersion + ", obd版本=" + this.obdVersion + ')';
    }
}
