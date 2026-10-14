package cn.mucang.android.jiakaoyi.signal.center.config;

/* JADX INFO: loaded from: classes3.dex */
public enum SerialExtension {
    Signal1(1, "扩展1"),
    Signal2(2, "扩展2"),
    Signal3(3, "扩展3"),
    Signal4(4, "扩展4"),
    Signal5(5, "扩展5"),
    Signal6(6, "扩展6"),
    Signal7(7, "扩展7"),
    Signal8(8, "扩展8"),
    Signal9(9, "扩展9"),
    Signal10(10, "扩展10"),
    Signal11(11, "扩展11"),
    Signal12(12, "扩展12"),
    Signal13(13, "扩展13"),
    Signal14(14, "扩展14"),
    Signal15(15, "扩展15"),
    Signal16(16, "扩展16"),
    Signal17(17, "扩展17"),
    Signal18(18, "扩展18"),
    Signal19(19, "扩展19"),
    Signal20(20, "扩展20"),
    Signal21(21, "扩展21"),
    Signal22(22, "扩展22"),
    Signal23(23, "扩展23"),
    Signal24(24, "扩展24"),
    Signal25(25, "扩展25"),
    Signal26(26, "扩展26"),
    Signal27(27, "扩展27"),
    Signal28(28, "扩展28"),
    Signal29(29, "扩展29"),
    Signal30(30, "扩展30"),
    Signal31(31, "扩展31"),
    Signal32(32, "扩展32"),
    Signal33(33, "扩展33"),
    Signal34(34, "扩展34"),
    Signal35(35, "扩展35"),
    Signal36(36, "扩展36");

    public static final SerialExtension[] extensions = values();
    public final String extensionName;
    public final int id;

    SerialExtension(int i, String str) {
        this.id = i;
        this.extensionName = str;
    }

    public static SerialExtension parse(int i) {
        for (SerialExtension serialExtension : extensions) {
            if (serialExtension.id == i) {
                return serialExtension;
            }
        }
        return null;
    }
}
