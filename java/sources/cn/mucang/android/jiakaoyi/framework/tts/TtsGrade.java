package cn.mucang.android.jiakaoyi.framework.tts;

import kotlin.Metadata;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'SpecialVoice' uses external variables
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
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "", "grade", "", "typeName", "", "speaker", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;", "(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V", "getGrade", "()I", "getSpeaker", "()Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;", "getTypeName", "()Ljava/lang/String;", "SpecialVoice", "GlobalError", "TeachError", "TeachDeduct", "GlobalRemind", "ActiveRemember", "VoiceRobot", "AutoTeach", "SuperLevel", "Teach", "ExamTip", "ExamDeduct", "GlobalTip", "SynthVoice", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TtsGrade {
    private static final /* synthetic */ TtsGrade[] $VALUES;
    public static final TtsGrade ActiveRemember;
    public static final TtsGrade AutoTeach;
    public static final TtsGrade ExamDeduct;
    public static final TtsGrade ExamTip;
    public static final TtsGrade GlobalError;
    public static final TtsGrade GlobalRemind;
    public static final TtsGrade GlobalTip;
    public static final TtsGrade SpecialVoice;
    public static final TtsGrade SuperLevel;
    public static final TtsGrade SynthVoice;
    public static final TtsGrade Teach;
    public static final TtsGrade TeachDeduct;
    public static final TtsGrade TeachError;
    public static final TtsGrade VoiceRobot;
    private final int grade;
    private final TtsSpeaker speaker;
    private final String typeName;

    private static final /* synthetic */ TtsGrade[] $values() {
        return new TtsGrade[]{SpecialVoice, GlobalError, TeachError, TeachDeduct, GlobalRemind, ActiveRemember, VoiceRobot, AutoTeach, SuperLevel, Teach, ExamTip, ExamDeduct, GlobalTip, SynthVoice};
    }

    static {
        TtsSpeaker ttsSpeaker = TtsSpeaker.XiaoYan;
        SpecialVoice = new TtsGrade("SpecialVoice", 0, 10000, "特殊语音", ttsSpeaker);
        TtsSpeaker ttsSpeaker2 = TtsSpeaker.MengMeng;
        GlobalError = new TtsGrade("GlobalError", 1, 10, "全局纠错", ttsSpeaker2);
        TeachError = new TtsGrade("TeachError", 2, 9, "教学纠错", ttsSpeaker2);
        TeachDeduct = new TtsGrade("TeachDeduct", 3, 8, "教学扣分", ttsSpeaker2);
        GlobalRemind = new TtsGrade("GlobalRemind", 4, 7, "全局提醒", ttsSpeaker2);
        ActiveRemember = new TtsGrade("ActiveRemember", 5, 6, "主动提醒", ttsSpeaker2);
        VoiceRobot = new TtsGrade("VoiceRobot", 6, 11, "语音助手", ttsSpeaker2);
        AutoTeach = new TtsGrade("AutoTeach", 7, 12, "自动示教", ttsSpeaker);
        TtsSpeaker ttsSpeaker3 = TtsSpeaker.XiaoLu;
        SuperLevel = new TtsGrade("SuperLevel", 8, 10001, "超级别语音", ttsSpeaker3);
        Teach = new TtsGrade("Teach", 9, 10, "教学语音", ttsSpeaker3);
        ExamTip = new TtsGrade("ExamTip", 10, 9, "考试提示", ttsSpeaker);
        ExamDeduct = new TtsGrade("ExamDeduct", 11, 8, "考试扣分", ttsSpeaker);
        GlobalTip = new TtsGrade("GlobalTip", 12, 7, "全局提示", ttsSpeaker3);
        SynthVoice = new TtsGrade("SynthVoice", 13, 0, "合成语音", ttsSpeaker);
        $VALUES = $values();
    }

    private TtsGrade(String str, int i, int i2, String str2, TtsSpeaker ttsSpeaker) {
        super(str, i);
        this.grade = i2;
        this.typeName = str2;
        this.speaker = ttsSpeaker;
    }

    public static TtsGrade valueOf(String str) {
        return (TtsGrade) Enum.valueOf(TtsGrade.class, str);
    }

    public static TtsGrade[] values() {
        return (TtsGrade[]) $VALUES.clone();
    }

    public final int getGrade() {
        return this.grade;
    }

    public final TtsSpeaker getSpeaker() {
        return this.speaker;
    }

    public final String getTypeName() {
        return this.typeName;
    }
}
