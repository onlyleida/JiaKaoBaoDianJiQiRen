package cn.mucang.android.jiakaoyi.teachingk2.ota;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\u001e\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u000e\u0010\u0006\"\u0004\b\u000f\u0010\b¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;", "()V", "hardwareVersion", "", "getHardwareVersion", "()Ljava/lang/Integer;", "setHardwareVersion", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "localVersion", "getLocalVersion", "setLocalVersion", "onlineVersion", "getOnlineVersion", "setOnlineVersion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotFirmwareModel extends FirmwareModel {
    private Integer hardwareVersion = 0;
    private Integer localVersion = 0;
    private Integer onlineVersion = 0;

    public final Integer getHardwareVersion() {
        return this.hardwareVersion;
    }

    public final Integer getLocalVersion() {
        return this.localVersion;
    }

    public final Integer getOnlineVersion() {
        return this.onlineVersion;
    }

    public final void setHardwareVersion(Integer num) {
        this.hardwareVersion = num;
    }

    public final void setLocalVersion(Integer num) {
        this.localVersion = num;
    }

    public final void setOnlineVersion(Integer num) {
        this.onlineVersion = num;
    }
}
