package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.consts.BoxVersion;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes3.dex */
public class ReceiveHardwareInfo extends l implements Serializable {
    public int boxVersion;
    public final String carNum;
    public final String carSn;
    public final String carSn24;
    public final int carType;
    public final int firmwareVersion;
    public int gearFirmwareVersion;
    public int gearHardwareVersion;
    public final int hardwareVersion;
    public boolean isSafeSpeedCheck;
    public int micSafeFirmwareVersion;
    public int micSafeHardwareVersion;
    public int micWaveFirmwareVersion;
    public int micWaveHardwareVersion;
    public final int obdVersion;
    public int signalFirmwareVersion;
    public int signalHardwareVersion;
    public int throttleFirmwareVersion;
    public int throttleHardwareVersion;
    public int ultrasonic1FirmwareVersion;
    public int ultrasonic1HardwareVersion;
    public int ultrasonic2FirmwareVersion;
    public int ultrasonic2HardwareVersion;

    public ReceiveHardwareInfo(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar, cn.mucang.android.jiakaoyi.signal.d.h hVar) {
        super(i, rVar);
        this.carType = rVar.o();
        this.carNum = new String(rVar.g(20), StandardCharsets.UTF_8);
        StringBuilder sb = new StringBuilder();
        String[] strArr = new String[12];
        int i2 = 0;
        for (int i3 = 0; i3 < 12; i3++) {
            String hexString = Integer.toHexString(rVar.o());
            strArr[i3] = hexString;
            sb.append(hexString);
        }
        this.carSn = sb.toString();
        sb.delete(0, sb.length());
        while (true) {
            if (i2 >= 12) {
                break;
            }
            String str = strArr[i2];
            if (str.length() == 1) {
                str = "0" + str;
            }
            sb.append(str);
            i2++;
        }
        this.carSn24 = sb.toString();
        this.hardwareVersion = rVar.l();
        this.firmwareVersion = rVar.l();
        this.obdVersion = rVar.o();
        int iL = hasShort(rVar) ? rVar.l() : 1;
        this.boxVersion = BoxVersion.parse(iL) != null ? iL : 1;
        if (!hVar.f5557d) {
            if (hasShort(rVar)) {
                rVar.l();
            }
            if (hasByte(rVar)) {
                this.throttleHardwareVersion = rVar.o();
            }
            if (hasByte(rVar)) {
                this.throttleFirmwareVersion = rVar.o();
                return;
            }
            return;
        }
        if (hasShort(rVar)) {
            this.signalHardwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.signalFirmwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.ultrasonic1HardwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.ultrasonic1FirmwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.ultrasonic2HardwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.ultrasonic2FirmwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.micSafeHardwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.micSafeFirmwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.throttleHardwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.throttleFirmwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.gearHardwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.gearFirmwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.micWaveHardwareVersion = rVar.l();
        }
        if (hasShort(rVar)) {
            this.micWaveFirmwareVersion = rVar.l();
        }
    }

    public HardwareInfo map() {
        HardwareInfo hardwareInfo = new HardwareInfo();
        hardwareInfo.hardwareNumber = this.carSn;
        hardwareInfo.serialNumber = this.carSn24;
        hardwareInfo.carType = this.carType;
        hardwareInfo.hardwareVersion = this.hardwareVersion;
        hardwareInfo.otaVersion = this.firmwareVersion;
        hardwareInfo.obdVersion = this.obdVersion;
        hardwareInfo.boxVersion = this.boxVersion;
        hardwareInfo.isSafeSpeedCheck = this.isSafeSpeedCheck;
        hardwareInfo.signalHardwareVersion = this.signalHardwareVersion;
        hardwareInfo.signalFirmwareVersion = this.signalFirmwareVersion;
        hardwareInfo.ultrasonic1HardwareVersion = this.ultrasonic1HardwareVersion;
        hardwareInfo.ultrasonic1FirmwareVersion = this.ultrasonic1FirmwareVersion;
        hardwareInfo.ultrasonic2HardwareVersion = this.ultrasonic2HardwareVersion;
        hardwareInfo.ultrasonic2FirmwareVersion = this.ultrasonic2FirmwareVersion;
        hardwareInfo.micSafeHardwareVersion = this.micSafeHardwareVersion;
        hardwareInfo.micSafeFirmwareVersion = this.micSafeFirmwareVersion;
        hardwareInfo.throttleHardwareVersion = this.throttleHardwareVersion;
        hardwareInfo.throttleFirmwareVersion = this.throttleFirmwareVersion;
        hardwareInfo.gearHardwareVersion = this.gearHardwareVersion;
        hardwareInfo.gearFirmwareVersion = this.gearFirmwareVersion;
        hardwareInfo.micWaveHardwareVersion = this.micWaveHardwareVersion;
        hardwareInfo.micWaveFirmwareVersion = this.micWaveFirmwareVersion;
        return hardwareInfo;
    }
}
