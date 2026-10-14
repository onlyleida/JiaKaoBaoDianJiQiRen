package cn.mucang.android.jiakaoyi.signal.center.config;

/* JADX INFO: loaded from: classes3.dex */
public enum BoxSignal2 {
    Signal1(1, "绕车1", 13, 17),
    Signal2(2, "绕车2", 14, 20),
    Signal3(3, "绕车3", 15, 18),
    Signal4(4, "绕车4", 16, 19),
    Signal5(5, "喇叭", 1, 7),
    Signal6(6, "雾灯", 2, 14),
    Signal7(7, "近光", 3, 11),
    Signal8(8, "拓展1", 4, 0),
    Signal9(9, "拓展2", 5, 0),
    Signal10(10, "拓展3", 6, 0),
    Signal11(11, "拓展4", 7, 0);

    public final int extensionId;
    public final int id;
    public final String showName;
    public final int signalId;

    BoxSignal2(int i, String str, int i2, int i3) {
        this.id = i;
        this.showName = str;
        this.extensionId = i2;
        this.signalId = i3;
    }
}
