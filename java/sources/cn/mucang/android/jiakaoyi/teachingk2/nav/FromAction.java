package cn.mucang.android.jiakaoyi.teachingk2.nav;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'GO_STRAIGHT' uses external variables
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
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\tj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;", "", "zhReportVoice", "", "zhOperateVoice", "reportVoice", "operateVoice", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getOperateVoice", "()Ljava/lang/String;", "getReportVoice", "getZhOperateVoice", "getZhReportVoice", "NONE", "GO_STRAIGHT", "TURN_LEFT", "TURN_RIGHT", "TURN_ROUND", "CHANGE_TO_LEFT", "CHANGE_TO_RIGHT", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FromAction {
    private static final /* synthetic */ FromAction[] $VALUES;
    public static final FromAction CHANGE_TO_LEFT;
    public static final FromAction CHANGE_TO_RIGHT;
    public static final FromAction GO_STRAIGHT;
    public static final FromAction NONE = new FromAction("NONE", 0, "", "", "", "");
    public static final FromAction TURN_LEFT;
    public static final FromAction TURN_RIGHT;
    public static final FromAction TURN_ROUND;
    private final String operateVoice;
    private final String reportVoice;
    private final String zhOperateVoice;
    private final String zhReportVoice;

    private static final /* synthetic */ FromAction[] $values() {
        return new FromAction[]{NONE, GO_STRAIGHT, TURN_LEFT, TURN_RIGHT, TURN_ROUND, CHANGE_TO_LEFT, CHANGE_TO_RIGHT};
    }

    static {
        String strA = k0.a(R.string.teachbase_going_straight);
        r.d(strA, "getString(R.string.teachbase_going_straight)");
        GO_STRAIGHT = new FromAction("GO_STRAIGHT", 1, "", "请保持直行", "", strA);
        String strA2 = k0.a(R.string.teachbase_turn_left);
        r.d(strA2, "getString(R.string.teachbase_turn_left)");
        String strA3 = k0.a(R.string.teachbase_start_turn_left);
        r.d(strA3, "getString(R.string.teachbase_start_turn_left)");
        TURN_LEFT = new FromAction("TURN_LEFT", 2, "前方即将左转", "开始左转", strA2, strA3);
        String strA4 = k0.a(R.string.teachbase_turn_right);
        r.d(strA4, "getString(R.string.teachbase_turn_right)");
        String strA5 = k0.a(R.string.teachbase_start_turn_right);
        r.d(strA5, "getString(R.string.teachbase_start_turn_right)");
        TURN_RIGHT = new FromAction("TURN_RIGHT", 3, "前方即将右转", "开始右转", strA4, strA5);
        String strA6 = k0.a(R.string.teachbase_ahead_turn);
        r.d(strA6, "getString(R.string.teachbase_ahead_turn)");
        String strA7 = k0.a(R.string.teachbase_turn);
        r.d(strA7, "getString(R.string.teachbase_turn)");
        TURN_ROUND = new FromAction("TURN_ROUND", 4, "前方即将掉头", "开始掉头", strA6, strA7);
        CHANGE_TO_LEFT = new FromAction("CHANGE_TO_LEFT", 5, "", "", "", "");
        CHANGE_TO_RIGHT = new FromAction("CHANGE_TO_RIGHT", 6, "", "", "", "");
        $VALUES = $values();
    }

    private FromAction(String str, int i, String str2, String str3, String str4, String str5) {
        super(str, i);
        this.zhReportVoice = str2;
        this.zhOperateVoice = str3;
        this.reportVoice = str4;
        this.operateVoice = str5;
    }

    public static FromAction valueOf(String str) {
        return (FromAction) Enum.valueOf(FromAction.class, str);
    }

    public static FromAction[] values() {
        return (FromAction[]) $VALUES.clone();
    }

    public final String getOperateVoice() {
        return this.operateVoice;
    }

    public final String getReportVoice() {
        return this.reportVoice;
    }

    public final String getZhOperateVoice() {
        return this.zhOperateVoice;
    }

    public final String getZhReportVoice() {
        return this.zhReportVoice;
    }
}
