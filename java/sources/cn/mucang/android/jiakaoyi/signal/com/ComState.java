package cn.mucang.android.jiakaoyi.signal.com;

/* JADX INFO: loaded from: classes3.dex */
public enum ComState {
    None("不可用", 0),
    Initialing("初始化中", 1),
    ErrorInitial("初始化失败", -1),
    ReInitialing("重连中", 12),
    Authorising("授权中", 20),
    ErrorAuthorise("授权失败", -2),
    Valid("可用", 30),
    ErrorSplit("分包失败", -3),
    ErrorComBroken("连接断开", -5),
    ErrorCom("连接错误", -6),
    UpdatingFirmware("升级固件", 40),
    AiUpdatingFirmware("Ai升级固件", 50),
    ErrorUpdateFirmware("固件升级失败", -7);

    public final int code;
    public final String desc;

    ComState(String str, int i) {
        this.desc = str;
        this.code = i;
    }

    public boolean isNormal() {
        return equals(Valid) || equals(UpdatingFirmware) || equals(AiUpdatingFirmware) || equals(Initialing) || equals(ReInitialing) || equals(Authorising);
    }

    public boolean staticsNormal() {
        return isNormal() || equals(None);
    }
}
