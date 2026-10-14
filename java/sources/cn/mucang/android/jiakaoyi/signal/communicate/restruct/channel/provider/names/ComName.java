package cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names;

/* JADX INFO: loaded from: classes3.dex */
public enum ComName {
    None("空信道"),
    GpsNet("GPS网口"),
    MasterNet("主控网口"),
    AiNet("AI网口"),
    MasterSerial("串口通信"),
    BloothClient("蓝牙客户端"),
    BloothSimulator("蓝牙模拟");

    public final String name;

    ComName(String str) {
        this.name = str;
    }

    public boolean isAi() {
        return this == AiNet;
    }

    public boolean isGps() {
        return this == GpsNet;
    }

    public boolean isMasterNet() {
        return this == MasterNet;
    }
}
