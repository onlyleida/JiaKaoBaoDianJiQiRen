package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'CheckStop' uses external variables
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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\b\u0086\u0001\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;", "", "type", "", SocialConstants.PARAM_APP_DESC, "", "(Ljava/lang/String;IILjava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getType", "()I", "CheckStop", "CheckPos", "CheckSignal", "TeachStart", "TeachResume", "TeachPause", "TeachEnd", "CheckEnd", "CheckGps", "CheckType", "CheckRoute", "Navi", "Waiting", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoTeachStatus {
    private static final /* synthetic */ AutoTeachStatus[] $VALUES;
    public static final AutoTeachStatus CheckEnd;
    public static final AutoTeachStatus CheckGps;
    public static final AutoTeachStatus CheckPos;
    public static final AutoTeachStatus CheckRoute;
    public static final AutoTeachStatus CheckSignal;
    public static final AutoTeachStatus CheckStop;
    public static final AutoTeachStatus CheckType;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final AutoTeachStatus Navi;
    public static final AutoTeachStatus TeachEnd;
    public static final AutoTeachStatus TeachPause;
    public static final AutoTeachStatus TeachResume;
    public static final AutoTeachStatus TeachStart;
    public static final AutoTeachStatus Waiting;
    private String desc;
    private final int type;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$Companion;", "", "()V", "getStatus", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;", "status", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final AutoTeachStatus a(int i) {
            for (AutoTeachStatus autoTeachStatus : AutoTeachStatus.values()) {
                if (autoTeachStatus.getType() == i) {
                    return autoTeachStatus;
                }
            }
            return AutoTeachStatus.CheckStop;
        }
    }

    private static final /* synthetic */ AutoTeachStatus[] $values() {
        return new AutoTeachStatus[]{CheckStop, CheckPos, CheckSignal, TeachStart, TeachResume, TeachPause, TeachEnd, CheckEnd, CheckGps, CheckType, CheckRoute, Navi, Waiting};
    }

    static {
        String strA = k0.a(R.string.teachbase_check_start_stop_button);
        r.d(strA, "getString(R.string.teach…_check_start_stop_button)");
        CheckStop = new AutoTeachStatus("CheckStop", 0, 1, strA);
        String strA2 = k0.a(R.string.teachbase_check_car_location);
        r.d(strA2, "getString(R.string.teachbase_check_car_location)");
        CheckPos = new AutoTeachStatus("CheckPos", 1, 2, strA2);
        String strA3 = k0.a(R.string.teachbase_check_car_status);
        r.d(strA3, "getString(R.string.teachbase_check_car_status)");
        CheckSignal = new AutoTeachStatus("CheckSignal", 2, 3, strA3);
        String strA4 = k0.a(R.string.teachbase_start_teach);
        r.d(strA4, "getString(R.string.teachbase_start_teach)");
        TeachStart = new AutoTeachStatus("TeachStart", 3, 4, strA4);
        String strA5 = k0.a(R.string.teachbase_resume_teach);
        r.d(strA5, "getString(R.string.teachbase_resume_teach)");
        TeachResume = new AutoTeachStatus("TeachResume", 4, 5, strA5);
        String strA6 = k0.a(R.string.teachbase_pause_teach);
        r.d(strA6, "getString(R.string.teachbase_pause_teach)");
        TeachPause = new AutoTeachStatus("TeachPause", 5, 6, strA6);
        String strA7 = k0.a(R.string.teachbase_end_teach);
        r.d(strA7, "getString(R.string.teachbase_end_teach)");
        TeachEnd = new AutoTeachStatus("TeachEnd", 6, 7, strA7);
        String strA8 = k0.a(R.string.teachbase_check_end_signal);
        r.d(strA8, "getString(R.string.teachbase_check_end_signal)");
        CheckEnd = new AutoTeachStatus("CheckEnd", 7, 8, strA8);
        String strA9 = k0.a(R.string.teachbase_check_gps);
        r.d(strA9, "getString(R.string.teachbase_check_gps)");
        CheckGps = new AutoTeachStatus("CheckGps", 8, 9, strA9);
        String strA10 = k0.a(R.string.teachbase_select_teach_type);
        r.d(strA10, "getString(R.string.teachbase_select_teach_type)");
        CheckType = new AutoTeachStatus("CheckType", 9, 10, strA10);
        String strA11 = k0.a(R.string.teachbase_select_route);
        r.d(strA11, "getString(R.string.teachbase_select_route)");
        CheckRoute = new AutoTeachStatus("CheckRoute", 10, 11, strA11);
        String strA12 = k0.a(R.string.teachbase_navigation_outside_step);
        r.d(strA12, "getString(R.string.teach…_navigation_outside_step)");
        Navi = new AutoTeachStatus("Navi", 11, 12, strA12);
        String strA13 = k0.a(R.string.teachbase_wait_select_route);
        r.d(strA13, "getString(R.string.teachbase_wait_select_route)");
        Waiting = new AutoTeachStatus("Waiting", 12, 13, strA13);
        $VALUES = $values();
        INSTANCE = new Companion(null);
    }

    private AutoTeachStatus(String str, int i, int i2, String str2) {
        super(str, i);
        this.type = i2;
        this.desc = str2;
    }

    public static final AutoTeachStatus getStatus(int i) {
        return INSTANCE.a(i);
    }

    public static AutoTeachStatus valueOf(String str) {
        return (AutoTeachStatus) Enum.valueOf(AutoTeachStatus.class, str);
    }

    public static AutoTeachStatus[] values() {
        return (AutoTeachStatus[]) $VALUES.clone();
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getType() {
        return this.type;
    }

    public final void setDesc(String str) {
        r.e(str, "<set-?>");
        this.desc = str;
    }
}
