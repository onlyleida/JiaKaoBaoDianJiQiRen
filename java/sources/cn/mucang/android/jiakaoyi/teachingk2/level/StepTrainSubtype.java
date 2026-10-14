package cn.mucang.android.jiakaoyi.teachingk2.level;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import kotlin.Metadata;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Video' uses external variables
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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0001\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;", "", "title", "", "serverCode", "", "(Ljava/lang/String;ILjava/lang/String;I)V", "getServerCode", "()I", "getTitle", "()Ljava/lang/String;", "None", "Video", "HelpTeach", "Train", "Exam", "DaoKuLeft", "DaoKuRight", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepTrainSubtype {
    private static final /* synthetic */ StepTrainSubtype[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final StepTrainSubtype DaoKuLeft;
    public static final StepTrainSubtype DaoKuRight;
    public static final StepTrainSubtype Exam;
    public static final StepTrainSubtype HelpTeach;
    public static final StepTrainSubtype None = new StepTrainSubtype("None", 0, "", -1);
    public static final StepTrainSubtype Train;
    public static final StepTrainSubtype Video;
    private static final StepTrainSubtype[] caches;
    private final int serverCode;
    private final String title;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.StepTrainSubtype$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tR\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype$Companion;", "", "()V", "caches", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;", "[Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;", "getSubtype", "code", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final StepTrainSubtype a(int i) {
            for (StepTrainSubtype stepTrainSubtype : StepTrainSubtype.caches) {
                if (stepTrainSubtype.getServerCode() == i) {
                    return stepTrainSubtype;
                }
            }
            return StepTrainSubtype.None;
        }
    }

    private static final /* synthetic */ StepTrainSubtype[] $values() {
        return new StepTrainSubtype[]{None, Video, HelpTeach, Train, Exam, DaoKuLeft, DaoKuRight};
    }

    static {
        String strA = k0.a(R.string.teachbase_video_teach);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_video_teach)");
        Video = new StepTrainSubtype("Video", 1, strA, 10);
        String strA2 = k0.a(R.string.teachbase_assist_teach);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_assist_teach)");
        HelpTeach = new StepTrainSubtype("HelpTeach", 2, strA2, 20);
        String strA3 = k0.a(R.string.teachbase_special_exercise);
        kotlin.jvm.internal.r.d(strA3, "getString(R.string.teachbase_special_exercise)");
        Train = new StepTrainSubtype("Train", 3, strA3, 30);
        String strA4 = k0.a(R.string.teachbase_simulate_test);
        kotlin.jvm.internal.r.d(strA4, "getString(R.string.teachbase_simulate_test)");
        Exam = new StepTrainSubtype("Exam", 4, strA4, 40);
        String strA5 = k0.a(R.string.teachbase_zuodanbian);
        kotlin.jvm.internal.r.d(strA5, "getString(R.string.teachbase_zuodanbian)");
        DaoKuLeft = new StepTrainSubtype("DaoKuLeft", 5, strA5, 50);
        String strA6 = k0.a(R.string.teachbase_youdanbian);
        kotlin.jvm.internal.r.d(strA6, "getString(R.string.teachbase_youdanbian)");
        DaoKuRight = new StepTrainSubtype("DaoKuRight", 6, strA6, 60);
        $VALUES = $values();
        INSTANCE = new Companion(null);
        caches = values();
    }

    private StepTrainSubtype(String str, int i, String str2, int i2) {
        super(str, i);
        this.title = str2;
        this.serverCode = i2;
    }

    public static StepTrainSubtype valueOf(String str) {
        return (StepTrainSubtype) Enum.valueOf(StepTrainSubtype.class, str);
    }

    public static StepTrainSubtype[] values() {
        return (StepTrainSubtype[]) $VALUES.clone();
    }

    public final int getServerCode() {
        return this.serverCode;
    }

    public final String getTitle() {
        return this.title;
    }
}
