package cn.mucang.android.jiakaoyi.teachingk2.ui.car;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\b¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;", "Ljava/io/Serializable;", "()V", "cityCode", "", "getCityCode", "()Ljava/lang/String;", "setCityCode", "(Ljava/lang/String;)V", "cityName", "getCityName", "setCityName", "deviceNum", "getDeviceNum", "setDeviceNum", "driveSchoolId", "", "getDriveSchoolId", "()J", "setDriveSchoolId", "(J)V", "driveSchoolName", "getDriveSchoolName", "setDriveSchoolName", "plateNum", "getPlateNum", "setPlateNum", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarBindInfo implements Serializable {
    private String cityCode;
    private String cityName;
    private String deviceNum;
    private long driveSchoolId;
    private String driveSchoolName;
    private String plateNum;

    public final String getCityCode() {
        return this.cityCode;
    }

    public final String getCityName() {
        return this.cityName;
    }

    public final String getDeviceNum() {
        return this.deviceNum;
    }

    public final long getDriveSchoolId() {
        return this.driveSchoolId;
    }

    public final String getDriveSchoolName() {
        return this.driveSchoolName;
    }

    public final String getPlateNum() {
        return this.plateNum;
    }

    public final void setCityCode(String str) {
        this.cityCode = str;
    }

    public final void setCityName(String str) {
        this.cityName = str;
    }

    public final void setDeviceNum(String str) {
        this.deviceNum = str;
    }

    public final void setDriveSchoolId(long j) {
        this.driveSchoolId = j;
    }

    public final void setDriveSchoolName(String str) {
        this.driveSchoolName = str;
    }

    public final void setPlateNum(String str) {
        this.plateNum = str;
    }
}
