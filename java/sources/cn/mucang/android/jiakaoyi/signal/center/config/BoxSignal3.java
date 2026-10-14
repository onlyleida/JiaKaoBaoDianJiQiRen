package cn.mucang.android.jiakaoyi.signal.center.config;

/* JADX INFO: loaded from: classes3.dex */
public enum BoxSignal3 {
    Signal1(1, "绕车1", 13, 17),
    Signal2(2, "绕车2", 14, 20),
    Signal3(3, "绕车3", 15, 18),
    Signal4(4, "绕车4", 16, 19),
    Signal5(5, "喇叭", 1, 7),
    Signal6(6, "雾灯", 2, 14),
    Signal7(7, "近光", 3, 11),
    Signal8(8, "右转", 4, 9),
    Signal9(9, "左转", 5, 8),
    Signal10(10, "远光", 6, 12),
    Signal11(11, "安全带", 7, 2),
    Signal12(12, "手刹", 8, 3),
    Signal13(13, "脚刹", 9, 4),
    Signal14(14, "离合", 10, 5),
    Signal15(15, "钥匙", 11, 27),
    Signal16(16, "示宽灯", 12, 13),
    Signal18(18, "车门", 18, 1),
    Signal19(19, "倒车", 19, 26),
    Signal20(20, "双闪", 20, 10),
    Signal21(21, "拓展1", 21, 0),
    Signal22(22, "拓展2", 22, 0),
    Signal23(23, "拓展3", 23, 0),
    Signal24(24, "拓展4", 24, 0),
    Signal25(25, "拓展5", 25, 0),
    Signal26(26, "拓展6", 26, 0),
    Signal27(27, "拓展7", 27, 0),
    Signal28(28, "拓展8", 28, 0),
    Signal29(29, "拓展9", 29, 0),
    Signal30(30, "拓展10", 30, 0),
    Signal31(31, "拓展11", 31, 0);

    public final int extensionId;
    public final int id;
    public final String showName;
    public final int signalId;

    BoxSignal3(int i, String str, int i2, int i3) {
        this.id = i;
        this.showName = str;
        this.extensionId = i2;
        this.signalId = i3;
    }
}
