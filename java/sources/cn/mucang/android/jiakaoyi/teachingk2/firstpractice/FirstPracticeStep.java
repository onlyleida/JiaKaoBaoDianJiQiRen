package cn.mucang.android.jiakaoyi.teachingk2.firstpractice;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DaoKu_Line' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class FirstPracticeStep {
    private static final /* synthetic */ FirstPracticeStep[] $VALUES;
    public static final FirstPracticeStep DaoKu_Done;
    public static final FirstPracticeStep DaoKu_Left;
    public static final FirstPracticeStep DaoKu_Line;
    public static final FirstPracticeStep DaoKu_Right;
    public static final FirstPracticeStep None;
    public final String desc;
    public int passCount;
    public final String standard;
    public final Step step;
    public final int subCode;
    public int totalCount;

    static {
        FirstPracticeStep firstPracticeStep = new FirstPracticeStep("None", 0, Step.K2_Global, 0, k0.a(R.string.teachingk2_daoku_initial_stat), "");
        None = firstPracticeStep;
        Step step = Step.K2_DaoCheRuKu;
        FirstPracticeStep firstPracticeStep2 = new FirstPracticeStep("DaoKu_Line", 1, step, 9271, k0.a(R.string.teachingk2_in_out_project_straight), k0.a(R.string.teachingk2_front_back_pass));
        DaoKu_Line = firstPracticeStep2;
        FirstPracticeStep firstPracticeStep3 = new FirstPracticeStep("DaoKu_Right", 2, step, 9272, k0.a(R.string.teachingk2_in_out_project_right), k0.a(R.string.teachingk2_right_pass));
        DaoKu_Right = firstPracticeStep3;
        FirstPracticeStep firstPracticeStep4 = new FirstPracticeStep("DaoKu_Left", 3, step, 9273, k0.a(R.string.teachingk2_in_out_project_left), k0.a(R.string.teachingk2_left_pass));
        DaoKu_Left = firstPracticeStep4;
        FirstPracticeStep firstPracticeStep5 = new FirstPracticeStep("DaoKu_Done", 4, step, -1, k0.a(R.string.teachingk2_daoku_done), "");
        DaoKu_Done = firstPracticeStep5;
        $VALUES = new FirstPracticeStep[]{firstPracticeStep, firstPracticeStep2, firstPracticeStep3, firstPracticeStep4, firstPracticeStep5};
    }

    private FirstPracticeStep(String str, int i, Step step, int i2, String str2, String str3) {
        super(str, i);
        this.totalCount = 3;
        this.passCount = 2;
        this.step = step;
        this.subCode = i2;
        this.desc = str2;
        this.standard = str3;
    }

    public static FirstPracticeStep findByCode(int i) {
        for (FirstPracticeStep firstPracticeStep : values()) {
            if (firstPracticeStep.subCode == i) {
                return firstPracticeStep;
            }
        }
        return None;
    }

    public static FirstPracticeStep valueOf(String str) {
        return (FirstPracticeStep) Enum.valueOf(FirstPracticeStep.class, str);
    }

    public static FirstPracticeStep[] values() {
        return (FirstPracticeStep[]) $VALUES.clone();
    }

    public String matchSubStep(int i) {
        if (this == DaoKu_Line) {
            if (i == SubStep.Step8.ordinal()) {
                return k0.a(R.string.teachingk2_first_test_straight_out);
            }
            return i == SubStep.Step9.ordinal() ? k0.a(R.string.teachingk2_first_test_straight_in) : "";
        }
        if (this == DaoKu_Left) {
            if (i == SubStep.Step3.ordinal()) {
                return k0.a(R.string.teachingk2_first_test_left_out);
            }
            return i == SubStep.Step4.ordinal() ? k0.a(R.string.teachingk2_first_test_left_in) : "";
        }
        if (this != DaoKu_Right) {
            return "";
        }
        if (i == SubStep.Step5.ordinal()) {
            return k0.a(R.string.teachingk2_first_test_right_out);
        }
        return i == SubStep.Step2.ordinal() ? k0.a(R.string.teachingk2_first_test_right_in) : "";
    }

    public void setConfigCount(int i, int i2) {
        this.totalCount = i;
        this.passCount = i2;
    }
}
