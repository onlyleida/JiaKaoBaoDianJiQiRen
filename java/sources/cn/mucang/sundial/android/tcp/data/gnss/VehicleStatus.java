package cn.mucang.sundial.android.tcp.data.gnss;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Send;
import cn.mucang.sundial.android.tcp.utils.BitUtils;

/* JADX INFO: loaded from: classes5.dex */
public class VehicleStatus implements Send {
    private boolean accOn;
    private boolean deal;
    private boolean doorLocked;
    private boolean eastLongitude;
    private boolean electricNormal;
    private boolean location;
    private boolean locationEncrypted;
    private boolean northLatitude;
    private boolean oilNormal;
    private boolean supplement;

    public static VehicleStatus createNormal() {
        VehicleStatus vehicleStatus = new VehicleStatus();
        vehicleStatus.accOn = true;
        vehicleStatus.location = true;
        vehicleStatus.northLatitude = true;
        vehicleStatus.eastLongitude = true;
        vehicleStatus.deal = true;
        vehicleStatus.locationEncrypted = false;
        vehicleStatus.supplement = false;
        vehicleStatus.oilNormal = true;
        vehicleStatus.electricNormal = true;
        vehicleStatus.doorLocked = true;
        return vehicleStatus;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendDWORD(BitUtils.setBitOn(BitUtils.setBitOn(BitUtils.setBitOn(BitUtils.setBitOn(BitUtils.setBitOn(BitUtils.setBitOn(BitUtils.setBitOn(BitUtils.setBitOn(BitUtils.setBitOn(BitUtils.setBitOn(0, 0, this.accOn), 1, this.location), 2, !this.northLatitude), 3, !this.eastLongitude), 4, !this.deal), 5, this.locationEncrypted), 6, this.supplement), 10, !this.oilNormal), 11, true ^ this.electricNormal), 12, this.doorLocked));
        return bytesEncoder.toByteArray();
    }

    public boolean isAccOn() {
        return this.accOn;
    }

    public boolean isDeal() {
        return this.deal;
    }

    public boolean isDoorLocked() {
        return this.doorLocked;
    }

    public boolean isEastLongitude() {
        return this.eastLongitude;
    }

    public boolean isElectricNormal() {
        return this.electricNormal;
    }

    public boolean isLocation() {
        return this.location;
    }

    public boolean isLocationEncrypted() {
        return this.locationEncrypted;
    }

    public boolean isNorthLatitude() {
        return this.northLatitude;
    }

    public boolean isOilNormal() {
        return this.oilNormal;
    }

    public boolean isSupplement() {
        return this.supplement;
    }

    public void setAccOn(boolean z) {
        this.accOn = z;
    }

    public void setDeal(boolean z) {
        this.deal = z;
    }

    public void setDoorLocked(boolean z) {
        this.doorLocked = z;
    }

    public void setEastLongitude(boolean z) {
        this.eastLongitude = z;
    }

    public void setElectricNormal(boolean z) {
        this.electricNormal = z;
    }

    public void setLocation(boolean z) {
        this.location = z;
    }

    public void setLocationEncrypted(boolean z) {
        this.locationEncrypted = z;
    }

    public void setNorthLatitude(boolean z) {
        this.northLatitude = z;
    }

    public void setOilNormal(boolean z) {
        this.oilNormal = z;
    }

    public void setSupplement(boolean z) {
        this.supplement = z;
    }
}
