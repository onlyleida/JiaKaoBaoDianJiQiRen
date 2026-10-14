package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.R;
import cn.mucang.android.jiakaoyi.signal.utils.f;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DESC_LEFT_FRONT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class CarBrakeDesc {
    private static final /* synthetic */ CarBrakeDesc[] $VALUES;
    public static final CarBrakeDesc DESC_BACK;
    public static final CarBrakeDesc DESC_FRONT;
    public static final CarBrakeDesc DESC_LEFT_BACK;
    public static final CarBrakeDesc DESC_LEFT_FRONT;
    public static final CarBrakeDesc DESC_NONE;
    public static final CarBrakeDesc DESC_RIGHT_BACK;
    public static final CarBrakeDesc DESC_RIGHT_FRONT;
    public final int id;
    public final String src;
    public final Gear targetGear;
    public final String zhSrc;

    static {
        CarBrakeDesc carBrakeDesc = new CarBrakeDesc("DESC_NONE", 0, 255, "", "", Gear.GearN);
        DESC_NONE = carBrakeDesc;
        String strA = k0.a(R.string.signal_left_front);
        Gear gear = Gear.GearBack;
        CarBrakeDesc carBrakeDesc2 = new CarBrakeDesc("DESC_LEFT_FRONT", 1, 1, "左前方", strA, gear);
        DESC_LEFT_FRONT = carBrakeDesc2;
        CarBrakeDesc carBrakeDesc3 = new CarBrakeDesc("DESC_FRONT", 2, 2, "正前方", k0.a(R.string.signal_front), gear);
        DESC_FRONT = carBrakeDesc3;
        CarBrakeDesc carBrakeDesc4 = new CarBrakeDesc("DESC_RIGHT_FRONT", 3, 3, "右前方", k0.a(R.string.signal_right_front), gear);
        DESC_RIGHT_FRONT = carBrakeDesc4;
        CarBrakeDesc carBrakeDesc5 = new CarBrakeDesc("DESC_LEFT_BACK", 4, 4, "左后方", k0.a(R.string.signal_left_back), f.c() ? Gear.Gear1 : Gear.GearD);
        DESC_LEFT_BACK = carBrakeDesc5;
        CarBrakeDesc carBrakeDesc6 = new CarBrakeDesc("DESC_BACK", 5, 5, "正后方", k0.a(R.string.signal_back), f.c() ? Gear.Gear1 : Gear.GearD);
        DESC_BACK = carBrakeDesc6;
        CarBrakeDesc carBrakeDesc7 = new CarBrakeDesc("DESC_RIGHT_BACK", 6, 6, "右后方", k0.a(R.string.signal_right_back), f.c() ? Gear.Gear1 : Gear.GearD);
        DESC_RIGHT_BACK = carBrakeDesc7;
        $VALUES = new CarBrakeDesc[]{carBrakeDesc, carBrakeDesc2, carBrakeDesc3, carBrakeDesc4, carBrakeDesc5, carBrakeDesc6, carBrakeDesc7};
    }

    private CarBrakeDesc(String str, int i, int i2, String str2, String str3, Gear gear) {
        super(str, i);
        this.id = i2;
        this.src = str3;
        this.zhSrc = str2;
        this.targetGear = gear;
    }

    public static CarBrakeDesc parse(int i) {
        for (CarBrakeDesc carBrakeDesc : values()) {
            if (carBrakeDesc.id == i) {
                return carBrakeDesc;
            }
        }
        return DESC_NONE;
    }

    public static CarBrakeDesc valueOf(String str) {
        return (CarBrakeDesc) Enum.valueOf(CarBrakeDesc.class, str);
    }

    public static CarBrakeDesc[] values() {
        return (CarBrakeDesc[]) $VALUES.clone();
    }

    public boolean isBack() {
        return this == DESC_LEFT_BACK || this == DESC_BACK || this == DESC_RIGHT_BACK;
    }

    public boolean isFront() {
        return this == DESC_LEFT_FRONT || this == DESC_FRONT || this == DESC_RIGHT_FRONT;
    }
}
