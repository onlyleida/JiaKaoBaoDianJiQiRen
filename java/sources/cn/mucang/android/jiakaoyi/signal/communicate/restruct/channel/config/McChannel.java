package cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config;

/* JADX INFO: loaded from: classes3.dex */
public enum McChannel {
    Serial(0, "串口"),
    Net(1, "网口"),
    BltServer(2, "蓝牙模拟"),
    BltClient(3, "蓝牙-串口"),
    TypeC(4, "TypeC-串口");

    public final int id;
    public final String name;

    McChannel(int i, String str) {
        this.id = i;
        this.name = str;
    }
}
