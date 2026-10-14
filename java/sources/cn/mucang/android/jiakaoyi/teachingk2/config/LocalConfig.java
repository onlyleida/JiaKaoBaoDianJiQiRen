package cn.mucang.android.jiakaoyi.teachingk2.config;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsConfig;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.center.model.BackGearType;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import cn.mucang.android.jiakaoyi.signal.d.i;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.safe.detector.FenceDetector;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.s;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'TimingLogin' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b8\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u000f\u001a\u00020\u0003J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nj\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bH¨\u0006I"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", "", "code", "", SocialConstants.PARAM_APP_DESC, "key", "default", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "getCode", "()Ljava/lang/String;", "getDefault", "()Ljava/lang/Object;", "getDesc", "getKey", "getValue", "setValue", "", "any", "TimingLogin", "OpenK3", "EnableNonPerceiveLogin", "ShowLanguage", "GearType", "BackGearType", "EnableGps", "EnableSundial", "B2HeadType", "ClassDevice", "ChangeStep", "ShowTrace", "GlobalError", "GlobalRemind", "ShowMap", "SwitchStep", "JudgePress", "CalibrateWheel", "AutoTeach", "RecommendedGuide", "OtherCarIntrudeTip", "AutoAssist", "HelpTeach", "Highlight", "SpeedBrake", "WheelBrake", "ShowRadar", "RingRadar", "FenceAdvanceTime", "BeidouEnableSafe", "HelpTeachAdvanceTime", "RainMode", "EnableDrive", "EnableFace", "EnableStart", "EnableWheelNone", "EnableWheelSingle", "EnableDoor", "EnableCall", "EnableDrink", "EnableSmoke", "EnableFatigue", "EnableNightClose", "EnableAi", "EnableHandCross", "EnableEmotionCheck", "EnableSitTilt", "AiStaticCheck", "VoiceGrade", "PushSourceFromAi", "PushTimeEnable", "PushQuality", "FaceLoginFromAi", "SundialCameraFromAi", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LocalConfig {
    private static final /* synthetic */ LocalConfig[] $VALUES;
    public static final LocalConfig AiStaticCheck;
    public static final LocalConfig AutoAssist;
    public static final LocalConfig AutoTeach;
    public static final LocalConfig B2HeadType;
    public static final LocalConfig BackGearType;
    public static final LocalConfig BeidouEnableSafe;
    public static final LocalConfig CalibrateWheel;
    public static final LocalConfig ChangeStep;
    public static final LocalConfig ClassDevice;
    public static final LocalConfig EnableAi;
    public static final LocalConfig EnableCall;
    public static final LocalConfig EnableDoor;
    public static final LocalConfig EnableDrink;
    public static final LocalConfig EnableDrive;
    public static final LocalConfig EnableEmotionCheck;
    public static final LocalConfig EnableFace;
    public static final LocalConfig EnableFatigue;
    public static final LocalConfig EnableGps;
    public static final LocalConfig EnableHandCross;
    public static final LocalConfig EnableNightClose;
    public static final LocalConfig EnableNonPerceiveLogin;
    public static final LocalConfig EnableSitTilt;
    public static final LocalConfig EnableSmoke;
    public static final LocalConfig EnableStart;
    public static final LocalConfig EnableSundial;
    public static final LocalConfig EnableWheelNone;
    public static final LocalConfig EnableWheelSingle;
    public static final LocalConfig FaceLoginFromAi;
    public static final LocalConfig FenceAdvanceTime;
    public static final LocalConfig GearType;
    public static final LocalConfig GlobalError;
    public static final LocalConfig GlobalRemind;
    public static final LocalConfig HelpTeach;
    public static final LocalConfig HelpTeachAdvanceTime;
    public static final LocalConfig Highlight;
    public static final LocalConfig JudgePress;
    public static final LocalConfig OpenK3;
    public static final LocalConfig OtherCarIntrudeTip;
    public static final LocalConfig PushQuality;
    public static final LocalConfig PushSourceFromAi;
    public static final LocalConfig PushTimeEnable;
    public static final LocalConfig RainMode;
    public static final LocalConfig RecommendedGuide;
    public static final LocalConfig RingRadar;
    public static final LocalConfig ShowLanguage;
    public static final LocalConfig ShowMap;
    public static final LocalConfig ShowRadar;
    public static final LocalConfig ShowTrace;
    public static final LocalConfig SpeedBrake;
    public static final LocalConfig SundialCameraFromAi;
    public static final LocalConfig SwitchStep;
    public static final LocalConfig TimingLogin;
    public static final LocalConfig VoiceGrade;
    public static final LocalConfig WheelBrake;
    private final String code;
    private final Object default;
    private final String desc;
    private final String key;

    private static final /* synthetic */ LocalConfig[] $values() {
        return new LocalConfig[]{TimingLogin, OpenK3, EnableNonPerceiveLogin, ShowLanguage, GearType, BackGearType, EnableGps, EnableSundial, B2HeadType, ClassDevice, ChangeStep, ShowTrace, GlobalError, GlobalRemind, ShowMap, SwitchStep, JudgePress, CalibrateWheel, AutoTeach, RecommendedGuide, OtherCarIntrudeTip, AutoAssist, HelpTeach, Highlight, SpeedBrake, WheelBrake, ShowRadar, RingRadar, FenceAdvanceTime, BeidouEnableSafe, HelpTeachAdvanceTime, RainMode, EnableDrive, EnableFace, EnableStart, EnableWheelNone, EnableWheelSingle, EnableDoor, EnableCall, EnableDrink, EnableSmoke, EnableFatigue, EnableNightClose, EnableAi, EnableHandCross, EnableEmotionCheck, EnableSitTilt, AiStaticCheck, VoiceGrade, PushSourceFromAi, PushTimeEnable, PushQuality, FaceLoginFromAi, SundialCameraFromAi};
    }

    static {
        Boolean bool = Boolean.FALSE;
        TimingLogin = new LocalConfig("TimingLogin", 0, "11001", "是否开启第三方计时登录", "", bool);
        OpenK3 = new LocalConfig("OpenK3", 1, "11002", "是否开启科三", "", bool);
        EnableNonPerceiveLogin = new LocalConfig("EnableNonPerceiveLogin", 2, "11004", "是否开启无感人脸登录", "key_enable_feel_not_face_login", bool);
        Boolean bool2 = Boolean.TRUE;
        ShowLanguage = new LocalConfig("ShowLanguage", 3, "11005", "是否显示多语言切换", "", bool2);
        GearType = new LocalConfig("GearType", 4, "10001", "档位类型", "keyGearType", Integer.valueOf(GearType.auto.type));
        BackGearType = new LocalConfig("BackGearType", 5, "10002", "倒挡位置", "keyBackGearType", Integer.valueOf(BackGearType.RightDown.type));
        EnableGps = new LocalConfig("EnableGps", 6, "10003", "是否启用GPS速度", "", "");
        EnableSundial = new LocalConfig("EnableSundial", 7, "10004", "是否开启计时", "key_enable_sundial", bool);
        B2HeadType = new LocalConfig("B2HeadType", 8, "10005", "大车模型设置", "keyB2HeadType", 1);
        ClassDevice = new LocalConfig("ClassDevice", 9, "10006", "是否为约课设备", "keyClassDevice", bool);
        ChangeStep = new LocalConfig("ChangeStep", 10, "20001", "是否开启库位项目切换", "debugChangeStep", bool);
        ShowTrace = new LocalConfig("ShowTrace", 11, "20002", "是否展示轨迹教学", "debugShowTrace", bool);
        GlobalError = new LocalConfig("GlobalError", 12, "20003", "是否播放全局纠错语音", "keyPlayGlobalError", bool2);
        GlobalRemind = new LocalConfig("GlobalRemind", 13, "20004", "是否播放全局提醒语音", "keyPlayGlobalRemind", bool2);
        ShowMap = new LocalConfig("ShowMap", 14, "20005", "是否开启地图导览", "keyUnityShowMap", bool2);
        SwitchStep = new LocalConfig("SwitchStep", 15, "20006", "正常倒库，步骤5从7-8线挂倒挡是否切换步骤2", "keySwitchStep", bool2);
        JudgePress = new LocalConfig("JudgePress", 16, "20007", "倒车入库步骤5，挂倒挡之后，是否评判1-8线压线", "keyJudgePress", bool2);
        CalibrateWheel = new LocalConfig("CalibrateWheel", 17, "20008", "是否开启方向盘自动校准功能", "keyWheelCalibrate", bool2);
        AutoTeach = new LocalConfig("AutoTeach", 18, "20009", "是否开启自动驾驶", "keyAutoTeach", bool);
        RecommendedGuide = new LocalConfig("RecommendedGuide", 19, "20010", "是否开启导训推荐", "RecommendedGuide", bool);
        OtherCarIntrudeTip = new LocalConfig("OtherCarIntrudeTip", 20, "20012", "是否开启车辆侵入提示", "key_other_car_intrude_tip", bool2);
        AutoAssist = new LocalConfig("AutoAssist", 21, "20013", "是否开启自动辅助", "key_auto_assist", bool);
        HelpTeach = new LocalConfig("HelpTeach", 22, "20015", "是否开启辅助示教", "keyHelpTeach", bool);
        Highlight = new LocalConfig("Highlight", 23, "20050", "是否开启精彩时刻", "keyOpenHighlight", bool);
        SpeedBrake = new LocalConfig("SpeedBrake", 24, "30001", "是否启用硬件限制车速", "keySafeSpeedBrake", bool2);
        WheelBrake = new LocalConfig("WheelBrake", 25, "30002", "行驶中双手离开方向盘", "keySafeWheelBrake", bool);
        ShowRadar = new LocalConfig("ShowRadar", 26, "30003", "是否显示雷达探测效果图", "keySafeShowRadar", bool2);
        RingRadar = new LocalConfig("RingRadar", 27, "30004", "是否启用雷达报警声", "keySafeRingRadar", bool2);
        FenceAdvanceTime = new LocalConfig("FenceAdvanceTime", 28, "30005", "电子围栏提前刹车时间", "", "");
        BeidouEnableSafe = new LocalConfig("BeidouEnableSafe", 29, "30006", "阿尔法北斗是否开启安全模式", "key_safe_beidou_enable_safe", bool);
        HelpTeachAdvanceTime = new LocalConfig("HelpTeachAdvanceTime", 30, "30007", "辅助教学提前刹车时间", "", "");
        RainMode = new LocalConfig("RainMode", 31, "30008", "雨天模式配置", "", 100);
        EnableDrive = new LocalConfig("EnableDrive", 32, "40001", "是否开启驾驶行为检测", "KEY_ENABLE_DRIVE", bool2);
        EnableFace = new LocalConfig("EnableFace", 33, "40002", "是否开启行驶中低头检测", "KEY_ENABLE_FACE", bool2);
        EnableStart = new LocalConfig("EnableStart", 34, "40003", "是否开启行驶中摆头检测", "KEY_ENABLE_START", bool2);
        EnableWheelNone = new LocalConfig("EnableWheelNone", 35, "40004", "是否开启行驶中双手离开方向盘检测", "KEY_ENABLE_WHEEL_NONE", bool2);
        EnableWheelSingle = new LocalConfig("EnableWheelSingle", 36, "40005", "是否开启行驶中单手打方向盘检测", "KEY_ENABLE_WHEEL_SINGLE", bool2);
        EnableDoor = new LocalConfig("EnableDoor", 37, "40006", "是否开启单手开车门检测", "KEY_ENABLE_DOOR", bool2);
        EnableCall = new LocalConfig("EnableCall", 38, "40007", "是否开启行驶中接打电话检测", "KEY_ENABLE_CALL", bool2);
        EnableDrink = new LocalConfig("EnableDrink", 39, "40008", "是否开启行驶中喝水检测", "KEY_ENABLE_DRINK", bool2);
        EnableSmoke = new LocalConfig("EnableSmoke", 40, "40009", "是否开启行驶中抽烟检测", "KEY_ENABLE_SMOKE", bool2);
        EnableFatigue = new LocalConfig("EnableFatigue", 41, "40010", "是否开启行驶中疲劳驾驶检测", "KEY_ENABLE_FATIGUE", bool2);
        EnableNightClose = new LocalConfig("EnableNightClose", 42, "40011", "晚上是否自动关闭驾驶行为检测（日落前1小时关闭，日出后1小时开启）", "KEY_ENABLE_NIGHT_CLOSE", bool2);
        EnableAi = new LocalConfig("EnableAi", 43, "40012", "是否启用AI模块", "__key_ai_open", bool);
        EnableHandCross = new LocalConfig("EnableHandCross", 44, "40013", "是否开启行驶中双手交叉打方向检测", "KEY_ENABLE_HAND_CROSS", bool2);
        EnableEmotionCheck = new LocalConfig("EnableEmotionCheck", 45, "40014", "是否开启表情检测", "KEY_ENABLE_EMOTION_CHECK", bool2);
        EnableSitTilt = new LocalConfig("EnableSitTilt", 46, "40015", "是否开启坐姿倾斜检测", "KEY_ENABLE_SIT_TILT", bool2);
        Boolean bool3 = Boolean.FALSE;
        AiStaticCheck = new LocalConfig("AiStaticCheck", 47, "40016", "是否静态展示AI功能", "key_ai_static", bool3);
        VoiceGrade = new LocalConfig("VoiceGrade", 48, "50001", "语音速度级别", "", "");
        PushSourceFromAi = new LocalConfig("PushSourceFromAi", 49, "60001", "是否是AI推流", "key_video_source_ai", bool3);
        PushTimeEnable = new LocalConfig("PushTimeEnable", 50, "60002", "是否显示时间", "key_show_time", bool3);
        PushQuality = new LocalConfig("PushQuality", 51, "60003", "清晰度", "key_quality", 240);
        FaceLoginFromAi = new LocalConfig("FaceLoginFromAi", 52, "70001", "是否是AI人脸登录", "key_face_source_from_ai", bool3);
        SundialCameraFromAi = new LocalConfig("SundialCameraFromAi", 53, "70002", "是否是AI计时拍照", "key_sundial_camera_from_ai", Boolean.TRUE);
        $VALUES = $values();
    }

    private LocalConfig(String str, int i, String str2, String str3, String str4, Object obj) {
        super(str, i);
        this.code = str2;
        this.desc = str3;
        this.key = str4;
        this.default = obj;
    }

    public static LocalConfig valueOf(String str) {
        return (LocalConfig) Enum.valueOf(LocalConfig.class, str);
    }

    public static LocalConfig[] values() {
        return (LocalConfig[]) $VALUES.clone();
    }

    public final String getCode() {
        return this.code;
    }

    public final Object getDefault() {
        return this.default;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getValue() {
        if (this == EnableGps) {
            return String.valueOf(i.a());
        }
        if (this == VoiceGrade) {
            return String.valueOf(TtsConfig.e());
        }
        if (this == FenceAdvanceTime) {
            return String.valueOf(FenceDetector.f());
        }
        if (this == HelpTeachAdvanceTime) {
            return String.valueOf(cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.f());
        }
        if (this == RainMode) {
            return "100";
        }
        Object obj = this.default;
        if (obj instanceof Integer) {
            return String.valueOf(i0.d(this.key, ((Number) obj).intValue()));
        }
        return obj instanceof Float ? String.valueOf(i0.c(this.key, ((Number) obj).floatValue())) : String.valueOf(i0.b(this.key, ((Boolean) obj).booleanValue()));
    }

    public final void setValue(String any) {
        Object objM139constructorimpl;
        Object objM139constructorimpl2;
        r.e(any, "any");
        f.o("修改配置,code:" + this.code + ",name:" + name() + ",oldValue:" + getValue() + ",newValue:" + any);
        if (this == EnableGps) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(Boolean.parseBoolean(any)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(k.a(th));
            }
            Boolean bool = (Boolean) (Result.m145isFailureimpl(objM139constructorimpl) ? null : objM139constructorimpl);
            if (bool == null) {
                return;
            }
            i.b(bool.booleanValue());
            return;
        }
        if (this == VoiceGrade) {
            Integer numJ = s.j(any);
            if (numJ == null) {
                return;
            }
            TtsConfig.f(numJ.intValue());
            return;
        }
        if (this == FenceAdvanceTime) {
            Float fI = kotlin.text.r.i(any);
            if (fI == null) {
                return;
            }
            FenceDetector.j(fI.floatValue());
            return;
        }
        if (this == HelpTeachAdvanceTime) {
            Float fI2 = kotlin.text.r.i(any);
            if (fI2 == null) {
                return;
            }
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.p(fI2.floatValue());
            return;
        }
        if (this == RainMode) {
            Integer numJ2 = s.j(any);
            if (numJ2 == null) {
                return;
            }
            RainModeMgr.h(numJ2.intValue());
            return;
        }
        if (this.default instanceof Integer) {
            String str = this.key;
            Integer numJ3 = s.j(any);
            if (numJ3 == null) {
                return;
            }
            i0.k(str, numJ3.intValue());
            return;
        }
        String str2 = this.key;
        try {
            Result.Companion companion3 = Result.INSTANCE;
            objM139constructorimpl2 = Result.m139constructorimpl(Boolean.valueOf(Boolean.parseBoolean(any)));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM139constructorimpl2 = Result.m139constructorimpl(k.a(th2));
        }
        Boolean bool2 = (Boolean) (Result.m145isFailureimpl(objM139constructorimpl2) ? null : objM139constructorimpl2);
        if (bool2 == null) {
            return;
        }
        i0.i(str2, bool2.booleanValue());
    }
}
