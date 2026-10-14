package cn.mucang.sundial.android.tcp.data.gnss;

import android.text.TextUtils;
import android.util.Base64;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Send;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import java.math.BigDecimal;
import java.sql.Timestamp;

/* JADX INFO: loaded from: classes5.dex */
public class GNSSData implements Send {
    private AlarmInfo alarmInfo;
    private Integer altitude;
    private int direction;
    private BigDecimal driveSpeed;
    private Integer engineSpeed;
    private BigDecimal gasRemain;
    private BigDecimal gpsSpeed;
    private double latitude;
    private double longitude;
    private BigDecimal mileage;
    private Timestamp recordTime;
    private VehicleStatus vehicleStatus;

    public GNSSData() {
        BigDecimal bigDecimal = BigDecimal.ZERO;
        this.driveSpeed = bigDecimal;
        this.gpsSpeed = bigDecimal;
    }

    public static GNSSData getGNSSData() {
        return OBDManager.createGNSSData(System.currentTimeMillis());
    }

    public static byte[] toBytes(String str) {
        return TextUtils.isEmpty(str) ? new byte[0] : Base64.decode(str, 2);
    }

    public static String toString(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? "" : Base64.encodeToString(bArr, 2);
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBytes(this.alarmInfo.encode());
        bytesEncoder.appendBytes(this.vehicleStatus.encode());
        bytesEncoder.appendDWORD((long) (this.latitude * 1000000.0d));
        bytesEncoder.appendDWORD((long) (this.longitude * 1000000.0d));
        bytesEncoder.appendWORD((int) (this.driveSpeed.doubleValue() * ((double) SundialManager.getInstance().getAccuracyMultiplier())));
        bytesEncoder.appendWORD((int) (this.gpsSpeed.doubleValue() * ((double) SundialManager.getInstance().getAccuracyMultiplier())));
        bytesEncoder.appendWORD(this.direction);
        bytesEncoder.appendBCD(DeviceUtils.toBCD(this.recordTime), 6);
        if (this.mileage != null) {
            bytesEncoder.appendBYTE(1);
            bytesEncoder.appendBYTE(4);
            bytesEncoder.appendDWORD((long) (this.mileage.doubleValue() * ((double) SundialManager.getInstance().getAccuracyMultiplier())));
        }
        if (this.gasRemain != null) {
            bytesEncoder.appendBYTE(2);
            bytesEncoder.appendBYTE(2);
            bytesEncoder.appendWORD((int) (this.gasRemain.doubleValue() * 10.0d));
        }
        if (this.altitude != null) {
            bytesEncoder.appendBYTE(3);
            bytesEncoder.appendBYTE(2);
            bytesEncoder.appendWORD(this.altitude.intValue());
        }
        if (this.engineSpeed != null) {
            bytesEncoder.appendBYTE(5);
            bytesEncoder.appendBYTE(2);
            bytesEncoder.appendWORD(this.engineSpeed.intValue());
        }
        return bytesEncoder.toByteArray();
    }

    public AlarmInfo getAlarmInfo() {
        return this.alarmInfo;
    }

    public Integer getAltitude() {
        return this.altitude;
    }

    public int getDirection() {
        return this.direction;
    }

    public BigDecimal getDriveSpeed() {
        return this.driveSpeed;
    }

    public Integer getEngineSpeed() {
        return this.engineSpeed;
    }

    public BigDecimal getGasRemain() {
        return this.gasRemain;
    }

    public BigDecimal getGpsSpeed() {
        return this.gpsSpeed;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public BigDecimal getMileage() {
        return this.mileage;
    }

    public Timestamp getRecordTime() {
        return this.recordTime;
    }

    public VehicleStatus getVehicleStatus() {
        return this.vehicleStatus;
    }

    public void setAlarmInfo(AlarmInfo alarmInfo) {
        this.alarmInfo = alarmInfo;
    }

    public void setAltitude(Integer num) {
        this.altitude = num;
    }

    public void setDirection(int i) {
        this.direction = i;
    }

    public void setDriveSpeed(BigDecimal bigDecimal) {
        this.driveSpeed = bigDecimal;
    }

    public void setEngineSpeed(Integer num) {
        this.engineSpeed = num;
    }

    public void setGasRemain(BigDecimal bigDecimal) {
        this.gasRemain = bigDecimal;
    }

    public void setGpsSpeed(BigDecimal bigDecimal) {
        this.gpsSpeed = bigDecimal;
    }

    public void setLatitude(double d2) {
        this.latitude = d2;
    }

    public void setLongitude(double d2) {
        this.longitude = d2;
    }

    public void setMileage(BigDecimal bigDecimal) {
        this.mileage = bigDecimal;
    }

    public void setRecordTime(Timestamp timestamp) {
        this.recordTime = timestamp;
    }

    public void setVehicleStatus(VehicleStatus vehicleStatus) {
        this.vehicleStatus = vehicleStatus;
    }

    public static GNSSData getGNSSData(long j) {
        return OBDManager.createGNSSData(j);
    }
}
