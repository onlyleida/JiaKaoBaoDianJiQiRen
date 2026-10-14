package cn.mucang.android.jiakaoyi.teachingk2.ota;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;", "()V", "hardwareVersion", "", "getHardwareVersion", "()Ljava/lang/String;", "setHardwareVersion", "(Ljava/lang/String;)V", "localVersion", "getLocalVersion", "setLocalVersion", "onlineVersion", "getOnlineVersion", "setOnlineVersion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AIFirmwareModel extends FirmwareModel {
    private String hardwareVersion = "";
    private String localVersion = "";
    private String onlineVersion = "";

    public final String getHardwareVersion() {
        return this.hardwareVersion;
    }

    public final String getLocalVersion() {
        return this.localVersion;
    }

    public final String getOnlineVersion() {
        return this.onlineVersion;
    }

    public final void setHardwareVersion(String str) {
        this.hardwareVersion = str;
    }

    public final void setLocalVersion(String str) {
        this.localVersion = str;
    }

    public final void setOnlineVersion(String str) {
        this.onlineVersion = str;
    }
}
