package cn.mucang.android.jiakaoyi.teachingk2.level;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.serenegiant.net.SocketChannelDataLink;
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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\u0001\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0019B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;", "", "title", "", "serverCode", "", "pageCode", "(Ljava/lang/String;ILjava/lang/String;II)V", "getPageCode", "()I", "getServerCode", "getTitle", "()Ljava/lang/String;", "None", "Video", "BasicTrain", "FirstPractice", "DaoKuTrain", "ShangPoTrain", "ZhiJiaoTrain", "CeFangTrain", "QuXianTrain", "CircleTrain", "ComplexTrain", "Exam", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TutorialLevel {
    private static final /* synthetic */ TutorialLevel[] $VALUES;
    public static final TutorialLevel BasicTrain;
    public static final TutorialLevel CeFangTrain;
    public static final TutorialLevel CircleTrain;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final TutorialLevel ComplexTrain;
    public static final TutorialLevel DaoKuTrain;
    public static final TutorialLevel Exam;
    public static final TutorialLevel FirstPractice;
    public static final TutorialLevel None = new TutorialLevel("None", 0, "", 0, -1);
    public static final TutorialLevel QuXianTrain;
    public static final TutorialLevel ShangPoTrain;
    public static final TutorialLevel Video;
    public static final TutorialLevel ZhiJiaoTrain;
    private static final TutorialLevel[] caches;
    private final int pageCode;
    private final int serverCode;
    private final String title;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.TutorialLevel$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tR\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$Companion;", "", "()V", "caches", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;", "[Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;", "getTutorialLevel", "code", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final TutorialLevel a(int i) {
            for (TutorialLevel tutorialLevel : TutorialLevel.caches) {
                if (tutorialLevel.getServerCode() == i) {
                    return tutorialLevel;
                }
            }
            return TutorialLevel.None;
        }
    }

    private static final /* synthetic */ TutorialLevel[] $values() {
        return new TutorialLevel[]{None, Video, BasicTrain, FirstPractice, DaoKuTrain, ShangPoTrain, ZhiJiaoTrain, CeFangTrain, QuXianTrain, CircleTrain, ComplexTrain, Exam};
    }

    static {
        String strA = k0.a(R.string.teachbase_video_teach);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_video_teach)");
        Video = new TutorialLevel("Video", 1, strA, 3000, 4000);
        String strA2 = k0.a(R.string.teachbase_base_train);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_base_train)");
        BasicTrain = new TutorialLevel("BasicTrain", 2, strA2, 4000, 3000);
        String strA3 = k0.a(R.string.teachbase_fp_test);
        kotlin.jvm.internal.r.d(strA3, "getString(R.string.teachbase_fp_test)");
        FirstPractice = new TutorialLevel("FirstPractice", 3, strA3, 9270, 9000);
        String strA4 = k0.a(R.string.teachbase_daoku);
        kotlin.jvm.internal.r.d(strA4, "getString(R.string.teachbase_daoku)");
        DaoKuTrain = new TutorialLevel("DaoKuTrain", 4, strA4, 102, -1);
        String strA5 = k0.a(R.string.teachbase_shangpoqibu);
        kotlin.jvm.internal.r.d(strA5, "getString(R.string.teachbase_shangpoqibu)");
        ShangPoTrain = new TutorialLevel("ShangPoTrain", 5, strA5, 103, -1);
        String strA6 = k0.a(R.string.teachbase_zhijiaozhuanwan);
        kotlin.jvm.internal.r.d(strA6, "getString(R.string.teachbase_zhijiaozhuanwan)");
        ZhiJiaoTrain = new TutorialLevel("ZhiJiaoTrain", 6, strA6, 104, -1);
        String strA7 = k0.a(R.string.teachbase_cefangtingche);
        kotlin.jvm.internal.r.d(strA7, "getString(R.string.teachbase_cefangtingche)");
        CeFangTrain = new TutorialLevel("CeFangTrain", 7, strA7, 105, -1);
        String strA8 = k0.a(R.string.teachbase_qvxianxingshi);
        kotlin.jvm.internal.r.d(strA8, "getString(R.string.teachbase_qvxianxingshi)");
        QuXianTrain = new TutorialLevel("QuXianTrain", 8, strA8, 106, -1);
        String strA9 = k0.a(R.string.teachbase_loop_train);
        kotlin.jvm.internal.r.d(strA9, "getString(R.string.teachbase_loop_train)");
        CircleTrain = new TutorialLevel("CircleTrain", 9, strA9, 9260, 2000);
        String strA10 = k0.a(R.string.teachbase_complex_train);
        kotlin.jvm.internal.r.d(strA10, "getString(R.string.teachbase_complex_train)");
        ComplexTrain = new TutorialLevel("ComplexTrain", 10, strA10, 9280, 2000);
        String strA11 = k0.a(R.string.teachbase_simulate_test);
        kotlin.jvm.internal.r.d(strA11, "getString(R.string.teachbase_simulate_test)");
        Exam = new TutorialLevel("Exam", 11, strA11, 9250, SocketChannelDataLink.DEFAULT_SERVER_PORT);
        $VALUES = $values();
        INSTANCE = new Companion(null);
        caches = values();
    }

    private TutorialLevel(String str, int i, String str2, int i2, int i3) {
        super(str, i);
        this.title = str2;
        this.serverCode = i2;
        this.pageCode = i3;
    }

    public static TutorialLevel valueOf(String str) {
        return (TutorialLevel) Enum.valueOf(TutorialLevel.class, str);
    }

    public static TutorialLevel[] values() {
        return (TutorialLevel[]) $VALUES.clone();
    }

    public final int getPageCode() {
        return this.pageCode;
    }

    public final int getServerCode() {
        return this.serverCode;
    }

    public final String getTitle() {
        return this.title;
    }
}
