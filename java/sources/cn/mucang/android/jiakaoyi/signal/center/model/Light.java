package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.signal.R;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'FrontFogLight' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class Light {
    private static final /* synthetic */ Light[] $VALUES;
    public static final Light FarLight;
    public static final Light FlashLight;
    public static final Light FrontFogLight;
    public static final Light NearLight;
    public static final Light Off;
    public static final Light RearFogLight;
    public static final Light ReturnLight;
    public static final Light TurnLeftLight;
    public static final Light TurnRightLight;
    public static final Light WarningLight;
    public static final Light WidthLight;
    public static final Light[] lights;
    public final int iconRes;
    public final int lightId;
    public final String lightName;

    static {
        Light light = new Light("Off", 0, 0, "关闭", 0);
        Off = light;
        Light light2 = new Light("FlashLight", 1, 1, "远近交替闪灯", 0);
        FlashLight = light2;
        Light light3 = new Light("TurnLeftLight", 2, 2, "左转向灯", R.drawable.light_turn_left);
        TurnLeftLight = light3;
        Light light4 = new Light("TurnRightLight", 3, 3, "右转向灯", R.drawable.light_turn_right);
        TurnRightLight = light4;
        Light light5 = new Light("WarningLight", 4, 4, "应急灯", R.drawable.light_warning);
        WarningLight = light5;
        Light light6 = new Light("NearLight", 5, 5, "近光灯", R.drawable.light_near);
        NearLight = light6;
        Light light7 = new Light("FarLight", 6, 6, "远光灯", R.drawable.light_far);
        FarLight = light7;
        Light light8 = new Light("WidthLight", 7, 7, "示宽灯", R.drawable.light_width);
        WidthLight = light8;
        int i = R.drawable.light_fog;
        Light light9 = new Light("FrontFogLight", 8, 8, "前雾灯", i);
        FrontFogLight = light9;
        Light light10 = new Light("RearFogLight", 9, 9, "后雾灯", i);
        RearFogLight = light10;
        Light light11 = new Light("ReturnLight", 10, 10, "倒车灯", R.drawable.light_return);
        ReturnLight = light11;
        $VALUES = new Light[]{light, light2, light3, light4, light5, light6, light7, light8, light9, light10, light11};
        lights = values();
    }

    private Light(String str, int i, int i2, String str2, int i3) {
        super(str, i);
        this.lightId = i2;
        this.lightName = str2;
        this.iconRes = i3;
    }

    public static Light findLightWithId(int i) {
        for (Light light : lights) {
            if (light.lightId == i) {
                return light;
            }
        }
        return Off;
    }

    public static Light valueOf(String str) {
        return (Light) Enum.valueOf(Light.class, str);
    }

    public static Light[] values() {
        return (Light[]) $VALUES.clone();
    }
}
