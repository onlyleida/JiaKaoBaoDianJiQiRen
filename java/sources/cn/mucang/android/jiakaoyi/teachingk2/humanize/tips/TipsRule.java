package cn.mucang.android.jiakaoyi.teachingk2.humanize.tips;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import com.amap.api.fence.GeoFence;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'GUIDE_100100' uses external variables
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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\bn\b\u0086\u0001\u0018\u0000 \u0081\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0081\u0001B\u001f\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001f\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nB'\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rB/\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012B7\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015B7\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0016R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001c\"\u0004\b-\u0010\u001eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bvj\u0002\bwj\u0002\bxj\u0002\byj\u0002\bzj\u0002\b{j\u0002\b|j\u0002\b}j\u0002\b~j\u0002\b\u007fj\u0003\b\u0080\u0001¨\u0006\u0082\u0001"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;", "", "ruleCode", "", "summaryType", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "(Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V", SocialConstants.PARAM_APP_DESC, "(Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;Ljava/lang/String;)V", "onceADay", "", "(Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;Ljava/lang/String;Z)V", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;", "grade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "(Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V", "cueCount", "", "(Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V", "(Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Z)V", "getCueCount", "()I", "setCueCount", "(I)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getGrade", "()Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "setGrade", "(Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V", "getOnceADay", "()Z", "setOnceADay", "(Z)V", "recordEvent", "getRecordEvent", "()Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;", "setRecordEvent", "(Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;)V", "getRuleCode", "setRuleCode", "getStep", "()Lcn/mucang/android/jiakaoyi/engine/model/Step;", "setStep", "(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V", "getSummaryType", "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;", "setSummaryType", "(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;)V", "GUIDE_100100", "GUIDE_100101", "GUIDE_100102", "GUIDE_100103", "GUIDE_100104", "GUIDE_100105", "GUIDE_100106", "GUIDE_100107", "GUIDE_100108", "GUIDE_100109", "GUIDE_130101", "GUIDE_130102", "GUIDE_130103", "GUIDE_130104", "GUIDE_130106", "GUIDE_130107", "ACHIEVE_200100", "ACHIEVE_200101", "ACHIEVE_200102", "ACHIEVE_200103", "ACHIEVE_200104", "ACHIEVE_200105", "ACHIEVE_200106", "ACHIEVE_200107", "ACHIEVE_200108", "ACHIEVE_230100", "ACHIEVE_230101", "ACHIEVE_230102", "ACHIEVE_230103", "ACHIEVE_230104", "GLOBAL_300100", "GLOBAL_300101", "GLOBAL_300102", "GLOBAL_300103", "GLOBAL_300104", "GLOBAL_300105", "GLOBAL_300106", "GLOBAL_300107", "GLOBAL_300108", "GLOBAL_300109", "GLOBAL_300110", "GLOBAL_300111", "GLOBAL_300112", "GLOBAL_300113", "GLOBAL_300114", "GLOBAL_300115", "GLOBAL_300116", "GLOBAL_300117", "GLOBAL_300118", "GLOBAL_300119", "GLOBAL_300120", "GLOBAL_300121", "GLOBAL_300122", "GLOBAL_300123", "GLOBAL_300124", "GLOBAL_300125", "GLOBAL_300126", "GLOBAL_300127", "GLOBAL_300128", "ATTEND_400100", "ATTEND_400101", "ATTEND_400102", "ATTEND_400103", "ATTEND_400104", "ATTEND_400105", "ATTEND_400106", "ATTEND_400107", "ATTEND_400108", "ATTEND_430101", "ATTEND_430104", "ATTEND_430105", "ATTEND_430106", "FEATURE_500100", "FEATURE_500101", "FEATURE_500102", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TipsRule {
    private static final /* synthetic */ TipsRule[] $VALUES;
    public static final TipsRule ACHIEVE_200100;
    public static final TipsRule ACHIEVE_200101;
    public static final TipsRule ACHIEVE_200102;
    public static final TipsRule ACHIEVE_200103;
    public static final TipsRule ACHIEVE_200104;
    public static final TipsRule ACHIEVE_200105;
    public static final TipsRule ACHIEVE_200106;
    public static final TipsRule ACHIEVE_200107;
    public static final TipsRule ACHIEVE_200108;
    public static final TipsRule ACHIEVE_230100;
    public static final TipsRule ACHIEVE_230101;
    public static final TipsRule ACHIEVE_230102;
    public static final TipsRule ACHIEVE_230103;
    public static final TipsRule ACHIEVE_230104;
    public static final TipsRule ATTEND_400100;
    public static final TipsRule ATTEND_400101;
    public static final TipsRule ATTEND_400102;
    public static final TipsRule ATTEND_400103;
    public static final TipsRule ATTEND_400104;
    public static final TipsRule ATTEND_400105;
    public static final TipsRule ATTEND_400106;
    public static final TipsRule ATTEND_400107;
    public static final TipsRule ATTEND_400108;
    public static final TipsRule ATTEND_430101;
    public static final TipsRule ATTEND_430104;
    public static final TipsRule ATTEND_430105;
    public static final TipsRule ATTEND_430106;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final TipsRule FEATURE_500100;
    public static final TipsRule FEATURE_500101;
    public static final TipsRule FEATURE_500102;
    public static final TipsRule GLOBAL_300100;
    public static final TipsRule GLOBAL_300101;
    public static final TipsRule GLOBAL_300102;
    public static final TipsRule GLOBAL_300103;
    public static final TipsRule GLOBAL_300104;
    public static final TipsRule GLOBAL_300105;
    public static final TipsRule GLOBAL_300106;
    public static final TipsRule GLOBAL_300107;
    public static final TipsRule GLOBAL_300108;
    public static final TipsRule GLOBAL_300109;
    public static final TipsRule GLOBAL_300110;
    public static final TipsRule GLOBAL_300111;
    public static final TipsRule GLOBAL_300112;
    public static final TipsRule GLOBAL_300113;
    public static final TipsRule GLOBAL_300114;
    public static final TipsRule GLOBAL_300115;
    public static final TipsRule GLOBAL_300116;
    public static final TipsRule GLOBAL_300117;
    public static final TipsRule GLOBAL_300118;
    public static final TipsRule GLOBAL_300119;
    public static final TipsRule GLOBAL_300120;
    public static final TipsRule GLOBAL_300121;
    public static final TipsRule GLOBAL_300122;
    public static final TipsRule GLOBAL_300123;
    public static final TipsRule GLOBAL_300124;
    public static final TipsRule GLOBAL_300125;
    public static final TipsRule GLOBAL_300126;
    public static final TipsRule GLOBAL_300127;
    public static final TipsRule GLOBAL_300128;
    public static final TipsRule GUIDE_100100;
    public static final TipsRule GUIDE_100101;
    public static final TipsRule GUIDE_100102;
    public static final TipsRule GUIDE_100103;
    public static final TipsRule GUIDE_100104;
    public static final TipsRule GUIDE_100105;
    public static final TipsRule GUIDE_100106;
    public static final TipsRule GUIDE_100107;
    public static final TipsRule GUIDE_100108;
    public static final TipsRule GUIDE_100109;
    public static final TipsRule GUIDE_130101;
    public static final TipsRule GUIDE_130102;
    public static final TipsRule GUIDE_130103;
    public static final TipsRule GUIDE_130104;
    public static final TipsRule GUIDE_130106;
    public static final TipsRule GUIDE_130107;
    private int cueCount;
    private String desc;
    private TtsGrade grade;
    private boolean onceADay;
    private RecordEvent recordEvent;
    private String ruleCode;
    private Step step;
    private UserSummaryType summaryType;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.TipsRule$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\u0007J\u0018\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule$Companion;", "", "()V", "getRule", "", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;", "summaryType", "", "getRuleByEvent", "eventCode", "getRuleByStep", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;", "step", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final TipsRule a(int i) {
            for (TipsRule tipsRule : TipsRule.values()) {
                RecordEvent recordEvent = tipsRule.getRecordEvent();
                if (recordEvent != null && recordEvent.getCode() == i) {
                    return tipsRule;
                }
            }
            return null;
        }
    }

    private static final /* synthetic */ TipsRule[] $values() {
        return new TipsRule[]{GUIDE_100100, GUIDE_100101, GUIDE_100102, GUIDE_100103, GUIDE_100104, GUIDE_100105, GUIDE_100106, GUIDE_100107, GUIDE_100108, GUIDE_100109, GUIDE_130101, GUIDE_130102, GUIDE_130103, GUIDE_130104, GUIDE_130106, GUIDE_130107, ACHIEVE_200100, ACHIEVE_200101, ACHIEVE_200102, ACHIEVE_200103, ACHIEVE_200104, ACHIEVE_200105, ACHIEVE_200106, ACHIEVE_200107, ACHIEVE_200108, ACHIEVE_230100, ACHIEVE_230101, ACHIEVE_230102, ACHIEVE_230103, ACHIEVE_230104, GLOBAL_300100, GLOBAL_300101, GLOBAL_300102, GLOBAL_300103, GLOBAL_300104, GLOBAL_300105, GLOBAL_300106, GLOBAL_300107, GLOBAL_300108, GLOBAL_300109, GLOBAL_300110, GLOBAL_300111, GLOBAL_300112, GLOBAL_300113, GLOBAL_300114, GLOBAL_300115, GLOBAL_300116, GLOBAL_300117, GLOBAL_300118, GLOBAL_300119, GLOBAL_300120, GLOBAL_300121, GLOBAL_300122, GLOBAL_300123, GLOBAL_300124, GLOBAL_300125, GLOBAL_300126, GLOBAL_300127, GLOBAL_300128, ATTEND_400100, ATTEND_400101, ATTEND_400102, ATTEND_400103, ATTEND_400104, ATTEND_400105, ATTEND_400106, ATTEND_400107, ATTEND_400108, ATTEND_430101, ATTEND_430104, ATTEND_430105, ATTEND_430106, FEATURE_500100, FEATURE_500101, FEATURE_500102};
    }

    static {
        UserSummaryType userSummaryType = UserSummaryType.GUIDE;
        GUIDE_100100 = new TipsRule("GUIDE_100100", 0, "100100", userSummaryType, "新用户第一次登录车机端APP进入首页");
        GUIDE_100101 = new TipsRule("GUIDE_100101", 1, "100101", userSummaryType, "用户第一次进入专项练习");
        GUIDE_100102 = new TipsRule("GUIDE_100102", 2, "100102", userSummaryType, "用户第一次使用视频教学");
        GUIDE_100103 = new TipsRule("GUIDE_100103", 3, "100103", userSummaryType, "第一次使用基础练习");
        GUIDE_100104 = new TipsRule("GUIDE_100104", 4, "100104", userSummaryType, "第一次使用模拟考试（点击模拟考试到模拟考试页面后）");
        GUIDE_100105 = new TipsRule("GUIDE_100105", 5, "100105", userSummaryType, "学员登录成功后语音提示（首次登录不播报）");
        GUIDE_100106 = new TipsRule("GUIDE_100106", 6, "100106", userSummaryType, "学员在首页停留时间超过60秒，模拟考试时长小于10分钟", true);
        GUIDE_100107 = new TipsRule("GUIDE_100107", 7, "100107", userSummaryType, "学员在首页停留时间超过60秒，模拟考试时长大于或等于10分钟", true);
        GUIDE_100108 = new TipsRule("GUIDE_100108", 8, "100108", userSummaryType, "在模拟考试未考试，持续30秒无点击/唤醒操作（开始考试、轨迹回放、呼叫）", true);
        GUIDE_100109 = new TipsRule("GUIDE_100109", 9, "100109", userSummaryType, "单次登陆超过一定时长未唤起主动提醒提示可以打开帮助页，", true);
        GUIDE_130101 = new TipsRule("GUIDE_130101", 10, "130101", userSummaryType, "k3用户第一次进入上车准备");
        GUIDE_130102 = new TipsRule("GUIDE_130102", 11, "130102", userSummaryType, "k3用户第一次使用灯光练习  ");
        GUIDE_130103 = new TipsRule("GUIDE_130103", 12, "130103", userSummaryType, "k3第一次使用专项练习");
        GUIDE_130104 = new TipsRule("GUIDE_130104", 13, "130104", userSummaryType, "k3第一次使用模拟考试");
        GUIDE_130106 = new TipsRule("GUIDE_130106", 14, "130106", userSummaryType, "k3学员在首页停留时间超过60秒，模拟考试时长小于10分钟", true);
        GUIDE_130107 = new TipsRule("GUIDE_130107", 15, "130107", userSummaryType, "k3学员在首页停留时间超过60秒，模拟考试时长大于或等于10分钟", true);
        UserSummaryType userSummaryType2 = UserSummaryType.ACHIEVE;
        ACHIEVE_200100 = new TipsRule("ACHIEVE_200100", 16, "200100", userSummaryType2, "当前学员在专项练习（项目内时间）累计时间超*小时，退出专项练习后");
        ACHIEVE_200101 = new TipsRule("ACHIEVE_200101", 17, "200101", userSummaryType2, "单个项目每次出现无纠错和扣分，项目结束后");
        ACHIEVE_200102 = new TipsRule("ACHIEVE_200102", 18, "200102", userSummaryType2, "单个项目每次出现有纠错和扣分，项目结束后");
        ACHIEVE_200103 = new TipsRule("ACHIEVE_200103", 19, "200103", userSummaryType2, "单个项目连续【*】次无纠错和扣分，项目结束后");
        ACHIEVE_200104 = new TipsRule("ACHIEVE_200104", 20, "200104", userSummaryType2, "当用户考试总时长超过【*】小时，考试结束播放完结束语音后提示");
        ACHIEVE_200105 = new TipsRule("ACHIEVE_200105", 21, "200105", userSummaryType2, "单个项目首次未出现扣分，考试结束语音播完后");
        ACHIEVE_200106 = new TipsRule("ACHIEVE_200106", 22, "200106", userSummaryType2, "单个项目连续【*】次考试合格，考试结束语音播完后");
        ACHIEVE_200107 = new TipsRule("ACHIEVE_200107", 23, "200107", userSummaryType2, "综合模拟首次考试合格，考试结束语音播报后");
        ACHIEVE_200108 = new TipsRule("ACHIEVE_200108", 24, "200108", userSummaryType2, "综合模拟连续【*】次考试合格，考试结束语音播完后");
        ACHIEVE_230100 = new TipsRule("ACHIEVE_230100", 25, "230100", userSummaryType2, "k3当前学员在专项练习（项目内时间）累计时间超*小时，退出专项练习后");
        ACHIEVE_230101 = new TipsRule("ACHIEVE_230101", 26, "230101", userSummaryType2, "k3单个项目每次出现无纠错和扣分，项目结束后");
        ACHIEVE_230102 = new TipsRule("ACHIEVE_230102", 27, "230102", userSummaryType2, "k3单个项目每次出现有纠错和扣分，项目结束后");
        ACHIEVE_230103 = new TipsRule("ACHIEVE_230103", 28, "230103", userSummaryType2, "k3单个项目连续【*】次无纠错和扣分，项目结束后");
        ACHIEVE_230104 = new TipsRule("ACHIEVE_230104", 29, "230104", userSummaryType2, "k3当用户考试总时长超过【*】小时，考试结束播放完结束语音后提示");
        UserSummaryType userSummaryType3 = UserSummaryType.GLOBAL;
        RecordEvent recordEvent = RecordEvent.Radar;
        TtsGrade ttsGrade = TtsGrade.ActiveRemember;
        GLOBAL_300100 = new TipsRule("GLOBAL_300100", 30, "300100", userSummaryType3, recordEvent, "触碰障碍物刹车", ttsGrade, true);
        GLOBAL_300101 = new TipsRule("GLOBAL_300101", 31, "300101", userSummaryType3, RecordEvent.Fence, "遇到电子围栏刹车", ttsGrade, true);
        RecordEvent recordEvent2 = RecordEvent.Speed;
        TtsGrade ttsGrade2 = TtsGrade.GlobalError;
        GLOBAL_300102 = new TipsRule("GLOBAL_300102", 32, "300102", userSummaryType3, recordEvent2, "超限制速度行驶", ttsGrade2, true);
        GLOBAL_300103 = new TipsRule("GLOBAL_300103", 33, "300103", userSummaryType3, RecordEvent.Belt, "行驶中未系安全带", ttsGrade2);
        GLOBAL_300104 = new TipsRule("GLOBAL_300104", 34, "300104", userSummaryType3, RecordEvent.OpenDoor, "行驶中开车门", ttsGrade2);
        RecordEvent recordEvent3 = RecordEvent.FlameOut;
        TtsGrade ttsGrade3 = TtsGrade.GlobalRemind;
        GLOBAL_300105 = new TipsRule("GLOBAL_300105", 35, "300105", userSummaryType3, recordEvent3, "熄火提醒", ttsGrade3);
        GLOBAL_300106 = new TipsRule("GLOBAL_300106", 36, "300106", userSummaryType3, RecordEvent.WheelLoss, "原地打方向盘", ttsGrade3);
        GLOBAL_300107 = new TipsRule("GLOBAL_300107", 37, "300107", userSummaryType3, RecordEvent.HeadDown, "低头驾驶", ttsGrade2);
        GLOBAL_300108 = new TipsRule("GLOBAL_300108", 38, "300108", userSummaryType3, RecordEvent.OffHand, "双手离开方向盘", ttsGrade2, 2);
        GLOBAL_300109 = new TipsRule("GLOBAL_300109", 39, "300109", userSummaryType3, RecordEvent.OneHand, "单手打方向盘", ttsGrade2);
        GLOBAL_300110 = new TipsRule("GLOBAL_300110", 40, "300110", userSummaryType3, RecordEvent.OneHandOpenDoor, "单手开车门", ttsGrade2, 2);
        GLOBAL_300111 = new TipsRule("GLOBAL_300111", 41, "300111", userSummaryType3, RecordEvent.Fatigue, "疲劳驾驶", ttsGrade3);
        GLOBAL_300112 = new TipsRule("GLOBAL_300112", 42, "300112", userSummaryType3, RecordEvent.Smoke, "抽烟", ttsGrade3);
        GLOBAL_300113 = new TipsRule("GLOBAL_300113", 43, "300113", userSummaryType3, RecordEvent.Drink, "喝水", ttsGrade3);
        GLOBAL_300114 = new TipsRule("GLOBAL_300114", 44, "300114", userSummaryType3, RecordEvent.Call, "接打电话", ttsGrade3);
        GLOBAL_300115 = new TipsRule("GLOBAL_300115", 45, "300115", userSummaryType3, RecordEvent.Start, "起步未观察", ttsGrade3);
        GLOBAL_300116 = new TipsRule("GLOBAL_300116", 46, "300116", userSummaryType3, RecordEvent.Bow2Left, "低头左摆头", ttsGrade2);
        GLOBAL_300117 = new TipsRule("GLOBAL_300117", 47, "300117", userSummaryType3, RecordEvent.Bow2Right, "低头右摆头挂挡", ttsGrade2);
        GLOBAL_300118 = new TipsRule("GLOBAL_300118", 48, "300118", userSummaryType3, RecordEvent.SitTiltForward, "坐姿前倾", ttsGrade2);
        GLOBAL_300119 = new TipsRule("GLOBAL_300119", 49, "300119", userSummaryType3, RecordEvent.SitTiltLeft, "坐姿左偏", ttsGrade3);
        GLOBAL_300120 = new TipsRule("GLOBAL_300120", 50, "300120", userSummaryType3, RecordEvent.SitTiltRight, "坐姿右偏", ttsGrade3);
        GLOBAL_300121 = new TipsRule("GLOBAL_300121", 51, "300121", userSummaryType3, RecordEvent.Happy, "高兴", ttsGrade3);
        GLOBAL_300122 = new TipsRule("GLOBAL_300122", 52, "300122", userSummaryType3, RecordEvent.Amazed, "惊讶", ttsGrade3);
        GLOBAL_300123 = new TipsRule("GLOBAL_300123", 53, "300123", userSummaryType3, RecordEvent.Sad, "悲伤", ttsGrade3);
        UserSummaryType userSummaryType4 = UserSummaryType.GLOBAL;
        GLOBAL_300124 = new TipsRule("GLOBAL_300124", 54, "300124", userSummaryType4, RecordEvent.Angry, "生气", ttsGrade3);
        GLOBAL_300125 = new TipsRule("GLOBAL_300125", 55, "300125", userSummaryType4, RecordEvent.SingleLeftHand, "单左手打方向盘", ttsGrade2, 2);
        RecordEvent recordEvent4 = RecordEvent.SingleRightHand;
        TtsGrade ttsGrade4 = TtsGrade.GlobalError;
        GLOBAL_300126 = new TipsRule("GLOBAL_300126", 56, "300126", userSummaryType4, recordEvent4, "单右手打方向盘", ttsGrade4, 2);
        GLOBAL_300127 = new TipsRule("GLOBAL_300127", 57, "300127", userSummaryType4, RecordEvent.HandCross, "双手交叉打方向盘", ttsGrade4, 2);
        GLOBAL_300128 = new TipsRule("GLOBAL_300128", 58, "300128", userSummaryType4, RecordEvent.TwoHandOpenDoor, "双手开车门真棒", ttsGrade4);
        UserSummaryType userSummaryType5 = UserSummaryType.ATTEND;
        ATTEND_400100 = new TipsRule("ATTEND_400100", 59, "400100", userSummaryType5, "1天内专项练习，同项目未练习完退回到起点触发第一个教学点后", true);
        ATTEND_400101 = new TipsRule("ATTEND_400101", 60, "400101", userSummaryType5, "1天内模拟考试，连续两次考试不合格，语音播报结束后", true);
        ATTEND_400102 = new TipsRule("ATTEND_400102", 61, "400102", userSummaryType5, "1天内专项练习同项目同错误（纠错、扣分）出现3次后");
        ATTEND_400103 = new TipsRule("ATTEND_400103", 62, "400103", userSummaryType5, "速度变化大于5km/h2，且未熄火时");
        ATTEND_400104 = new TipsRule("ATTEND_400104", 63, "400104", userSummaryType5, "连续练习超过1小时");
        ATTEND_400105 = new TipsRule("ATTEND_400105", 64, "400105", userSummaryType5, "进入专项练习/模拟考试超过一定时长无动作时（车未动）");
        ATTEND_400106 = new TipsRule("ATTEND_400106", 65, "400106", userSummaryType5, "学员有效练车比例小于一定值时", true);
        ATTEND_400107 = new TipsRule("ATTEND_400107", 66, "400107", userSummaryType5, "不在空挡（P挡）点火后提醒（模拟考试不提醒）");
        ATTEND_400108 = new TipsRule("ATTEND_400108", 67, "400108", userSummaryType5, "行驶中手刹未松完提醒（10秒钟提示一次）");
        ATTEND_430101 = new TipsRule("ATTEND_430101", 68, "430101", userSummaryType5, "k3 1天内模拟考试，连续两次考试不合格，语音播报结束后", true);
        ATTEND_430104 = new TipsRule("ATTEND_430104", 69, "430104", userSummaryType5, "k3 连续练习超过1小时");
        ATTEND_430105 = new TipsRule("ATTEND_430105", 70, "430105", userSummaryType5, "k3 进入专项练习/模拟考试超过一定时长无动作时（车未动）");
        ATTEND_430106 = new TipsRule("ATTEND_430106", 71, "430106", userSummaryType5, "k3 学员有效练车比例小于一定值时", true);
        UserSummaryType userSummaryType6 = UserSummaryType.FEATURE;
        FEATURE_500100 = new TipsRule("FEATURE_500100", 72, "500100", userSummaryType6, "切换到初级（新手详解）模式");
        FEATURE_500101 = new TipsRule("FEATURE_500101", 73, "500101", userSummaryType6, "切换到中级（基础教学）模式");
        FEATURE_500102 = new TipsRule("FEATURE_500102", 74, "500102", userSummaryType6, "切换到高级（自主练习）模式");
        $VALUES = $values();
        INSTANCE = new Companion(null);
    }

    private TipsRule(String str, int i, String str2, UserSummaryType userSummaryType, Step step) {
        super(str, i);
        this.grade = TtsGrade.ActiveRemember;
        this.cueCount = -1;
        this.ruleCode = str2;
        this.summaryType = userSummaryType;
        this.step = step;
    }

    public static TipsRule valueOf(String str) {
        return (TipsRule) Enum.valueOf(TipsRule.class, str);
    }

    public static TipsRule[] values() {
        return (TipsRule[]) $VALUES.clone();
    }

    public final int getCueCount() {
        return this.cueCount;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final TtsGrade getGrade() {
        return this.grade;
    }

    public final boolean getOnceADay() {
        return this.onceADay;
    }

    public final RecordEvent getRecordEvent() {
        return this.recordEvent;
    }

    public final String getRuleCode() {
        return this.ruleCode;
    }

    public final Step getStep() {
        return this.step;
    }

    public final UserSummaryType getSummaryType() {
        return this.summaryType;
    }

    public final void setCueCount(int i) {
        this.cueCount = i;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setGrade(TtsGrade ttsGrade) {
        kotlin.jvm.internal.r.e(ttsGrade, "<set-?>");
        this.grade = ttsGrade;
    }

    public final void setOnceADay(boolean z) {
        this.onceADay = z;
    }

    public final void setRecordEvent(RecordEvent recordEvent) {
        this.recordEvent = recordEvent;
    }

    public final void setRuleCode(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.ruleCode = str;
    }

    public final void setStep(Step step) {
        this.step = step;
    }

    public final void setSummaryType(UserSummaryType userSummaryType) {
        kotlin.jvm.internal.r.e(userSummaryType, "<set-?>");
        this.summaryType = userSummaryType;
    }

    private TipsRule(String str, int i, String str2, UserSummaryType userSummaryType, String str3) {
        super(str, i);
        this.grade = TtsGrade.ActiveRemember;
        this.cueCount = -1;
        this.ruleCode = str2;
        this.summaryType = userSummaryType;
        this.desc = str3;
    }

    private TipsRule(String str, int i, String str2, UserSummaryType userSummaryType, String str3, boolean z) {
        super(str, i);
        this.grade = TtsGrade.ActiveRemember;
        this.cueCount = -1;
        this.ruleCode = str2;
        this.summaryType = userSummaryType;
        this.desc = str3;
        this.onceADay = z;
    }

    private TipsRule(String str, int i, String str2, UserSummaryType userSummaryType, RecordEvent recordEvent, String str3, TtsGrade ttsGrade) {
        super(str, i);
        this.grade = TtsGrade.ActiveRemember;
        this.cueCount = -1;
        this.ruleCode = str2;
        this.summaryType = userSummaryType;
        this.desc = str3;
        this.recordEvent = recordEvent;
        this.grade = ttsGrade;
    }

    private TipsRule(String str, int i, String str2, UserSummaryType userSummaryType, RecordEvent recordEvent, String str3, TtsGrade ttsGrade, int i2) {
        super(str, i);
        this.grade = TtsGrade.ActiveRemember;
        this.cueCount = -1;
        this.ruleCode = str2;
        this.summaryType = userSummaryType;
        this.desc = str3;
        this.recordEvent = recordEvent;
        this.grade = ttsGrade;
        this.cueCount = i2;
    }

    private TipsRule(String str, int i, String str2, UserSummaryType userSummaryType, RecordEvent recordEvent, String str3, TtsGrade ttsGrade, boolean z) {
        super(str, i);
        this.grade = TtsGrade.ActiveRemember;
        this.cueCount = -1;
        this.ruleCode = str2;
        this.summaryType = userSummaryType;
        this.desc = str3;
        this.recordEvent = recordEvent;
        this.grade = ttsGrade;
        this.onceADay = z;
    }
}
