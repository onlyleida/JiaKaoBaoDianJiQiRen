package cn.mucang.android.jiakaoyi.signal.upgrade.model;

/* JADX INFO: loaded from: classes3.dex */
public enum UpgradeType {
    None(0, ""),
    FirmwareMain(1, "主控模块"),
    FirmwareOBD(2, "车型数据"),
    FirmwareCollector(3, "采集板固件"),
    FirmwareUltrasonic1(4, "超声波模块1"),
    FirmwareUltrasonic2(5, "超声波模块2"),
    FirmwareSafe(6, "安全执行机构"),
    FirmwareThrottle(7, "油门模块"),
    FirmwareGear(8, "挡位模块"),
    FirmwareGNSS(9, "GNSS模块"),
    FirmwareLky(10, "路考仪");

    private final String name;
    private final int type;

    UpgradeType(int i, String str) {
        this.type = i;
        this.name = str;
    }

    public static UpgradeType parse(int i) {
        UpgradeType[] upgradeTypeArrValues = values();
        return (i < 1 || i >= upgradeTypeArrValues.length) ? None : upgradeTypeArrValues[i];
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }
}
