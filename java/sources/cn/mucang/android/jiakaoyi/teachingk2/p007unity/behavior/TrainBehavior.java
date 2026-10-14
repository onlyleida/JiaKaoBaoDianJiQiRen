package cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.iflytek.cloud.SpeechEvent;
import com.mobile.auth.BuildConfig;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.opencv.videoio.Videoio;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Behavior10001' uses external variables
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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B?\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fj\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;", "", "code", "", "zhTitle", "", "zhDesc", "zhStandard", "title", SocialConstants.PARAM_APP_DESC, BuildConfig.FLAVOR_feat, "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCode", "()I", "getDesc", "()Ljava/lang/String;", "getStandard", "getTitle", "getZhDesc", "getZhStandard", "getZhTitle", "Behavior10001", "Behavior10004", "Behavior10005", "Behavior10006", "Behavior10007", "Behavior10008", "Behavior10009", "Behavior10010", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TrainBehavior {
    private static final /* synthetic */ TrainBehavior[] $VALUES;
    public static final TrainBehavior Behavior10001;
    public static final TrainBehavior Behavior10004;
    public static final TrainBehavior Behavior10005;
    public static final TrainBehavior Behavior10006;
    public static final TrainBehavior Behavior10007;
    public static final TrainBehavior Behavior10008;
    public static final TrainBehavior Behavior10009;
    public static final TrainBehavior Behavior10010;
    private final int code;
    private final String desc;
    private final String standard;
    private final String title;
    private final String zhDesc;
    private final String zhStandard;
    private final String zhTitle;

    private static final /* synthetic */ TrainBehavior[] $values() {
        return new TrainBehavior[]{Behavior10001, Behavior10004, Behavior10005, Behavior10006, Behavior10007, Behavior10008, Behavior10009, Behavior10010};
    }

    static {
        String strA = k0.a(R.string.teachbase_speed_too_fast);
        r.d(strA, "getString(R.string.teachbase_speed_too_fast)");
        String strA2 = k0.a(R.string.teachbase_speed_too_fast_tips);
        r.d(strA2, "getString(R.string.teachbase_speed_too_fast_tips)");
        String strA3 = k0.a(R.string.teachbase_speed_too_fast_tips2);
        r.d(strA3, "getString(R.string.teachbase_speed_too_fast_tips2)");
        Behavior10001 = new TrainBehavior("Behavior10001", 0, 10001, strA, strA2, strA3, "车速过快", "车速太快啦，容易错过点位哦！", "整个项目过程中，速度超过3码的帧数占比超过60%");
        String strA4 = k0.a(R.string.teachbase_gear_error);
        r.d(strA4, "getString(R.string.teachbase_gear_error)");
        String strA5 = k0.a(R.string.teachbase_gear_error_tips);
        r.d(strA5, "getString(R.string.teachbase_gear_error_tips)");
        String strA6 = k0.a(R.string.teachbase_gear_error_tips2);
        r.d(strA6, "getString(R.string.teachbase_gear_error_tips2)");
        Behavior10004 = new TrainBehavior("Behavior10004", 1, 10004, strA4, strA5, strA6, "挂挡错误", "注意练习挂挡，挂错挡会扣分的哟！", "挂到非空档、倒挡、非1挡次数超过2次");
        String strA7 = k0.a(R.string.teachbase_stalls_many_times);
        r.d(strA7, "getString(R.string.teachbase_stalls_many_times)");
        String strA8 = k0.a(R.string.teachbase_stalls_many_times_tips);
        r.d(strA8, "getString(R.string.teach…e_stalls_many_times_tips)");
        String strA9 = k0.a(R.string.teachbase_stalls_2);
        r.d(strA9, "getString(R.string.teachbase_stalls_2)");
        Behavior10005 = new TrainBehavior("Behavior10005", 2, Videoio.CAP_PROP_GIGA_FRAME_SENS_WIDTH, strA7, strA8, strA9, "车辆熄火次数过多", "熄火次数太多啦，要注意哦！", "整个项目过程中，熄火次数超过2次");
        String strA10 = k0.a(R.string.teachbase_irregular_operation);
        r.d(strA10, "getString(R.string.teachbase_irregular_operation)");
        String strA11 = k0.a(R.string.teachbase_starting_tips);
        r.d(strA11, "getString(R.string.teachbase_starting_tips)");
        String strA12 = k0.a(R.string.teachbase_starting_tips2);
        r.d(strA12, "getString(R.string.teachbase_starting_tips2)");
        Behavior10006 = new TrainBehavior("Behavior10006", 3, 10006, strA10, strA11, strA12, "起步前操作不规范", "起步前注意放手刹、关车门、系安全带哦！", "起步前未放手刹或未关车门或未系安全带，满足一个即可");
        String strA13 = k0.a(R.string.teachbase_ignition_error);
        r.d(strA13, "getString(R.string.teachbase_ignition_error)");
        String strA14 = k0.a(R.string.teachbase_ignition_error_tips);
        r.d(strA14, "getString(R.string.teachbase_ignition_error_tips)");
        String strA15 = k0.a(R.string.teachbase_ignition_error_tips2);
        r.d(strA15, "getString(R.string.teachbase_ignition_error_tips2)");
        Behavior10007 = new TrainBehavior("Behavior10007", 4, SpeechEvent.EVENT_IST_CACHE_LEFT, strA13, strA14, strA15, "点火时未回空档拉手刹", "车辆点火前，注意回空档拉手刹，保证安全哦！", "车辆熄火后重新点火时，未处于空档手刹拉起状态");
        String strA16 = k0.a(R.string.teachbase_head_down_driving);
        r.d(strA16, "getString(R.string.teachbase_head_down_driving)");
        String strA17 = k0.a(R.string.teachbase_head_down_driving_tips);
        r.d(strA17, "getString(R.string.teach…e_head_down_driving_tips)");
        String strA18 = k0.a(R.string.teachbase_head_down_driving_tips2);
        r.d(strA18, "getString(R.string.teach…_head_down_driving_tips2)");
        Behavior10008 = new TrainBehavior("Behavior10008", 5, SpeechEvent.EVENT_IST_RESULT_TIME, strA16, strA17, strA18, "行驶中低头", "车辆行驶中，注意目视前方不要低头哦！", "车辆有速度时，识别到低头超过3次");
        String strA19 = k0.a(R.string.teachbase_pos_not_standard);
        r.d(strA19, "getString(R.string.teachbase_pos_not_standard)");
        String strA20 = k0.a(R.string.teachbase_pos_not_standard_tips);
        r.d(strA20, "getString(R.string.teach…se_pos_not_standard_tips)");
        String strA21 = k0.a(R.string.teachbase_pos_not_standard_tips2);
        r.d(strA21, "getString(R.string.teach…e_pos_not_standard_tips2)");
        Behavior10009 = new TrainBehavior("Behavior10009", 6, SpeechEvent.EVENT_IST_SYNC_ID, strA19, strA20, strA21, "坐姿不标准", "坐姿不标准容易导致点位错误，联系前记得调整哦！", "整个项目过程中，识别到坐姿不标准（前倾、后倾、左倾、右倾）超过3次");
        String strA22 = k0.a(R.string.teachbase_start_un_observer);
        r.d(strA22, "getString(R.string.teachbase_start_un_observer)");
        String strA23 = k0.a(R.string.teachbase_start_un_observer_tips);
        r.d(strA23, "getString(R.string.teach…e_start_un_observer_tips)");
        String strA24 = k0.a(R.string.teachbase_no_swing_head);
        r.d(strA24, "getString(R.string.teachbase_no_swing_head)");
        Behavior10010 = new TrainBehavior("Behavior10010", 7, SpeechEvent.EVENT_SESSION_BEGIN, strA22, strA23, strA24, "起步前未左右观察", "起步前记得左右观察，保证安全后起步哦！", "车辆从0到有速度时，未识别到左/右摆头各1次及以上");
        $VALUES = $values();
    }

    private TrainBehavior(String str, int i, int i2, String str2, String str3, String str4, String str5, String str6, String str7) {
        super(str, i);
        this.code = i2;
        this.zhTitle = str2;
        this.zhDesc = str3;
        this.zhStandard = str4;
        this.title = str5;
        this.desc = str6;
        this.standard = str7;
    }

    public static TrainBehavior valueOf(String str) {
        return (TrainBehavior) Enum.valueOf(TrainBehavior.class, str);
    }

    public static TrainBehavior[] values() {
        return (TrainBehavior[]) $VALUES.clone();
    }

    public final int getCode() {
        return this.code;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getStandard() {
        return this.standard;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getZhDesc() {
        return this.zhDesc;
    }

    public final String getZhStandard() {
        return this.zhStandard;
    }

    public final String getZhTitle() {
        return this.zhTitle;
    }
}
