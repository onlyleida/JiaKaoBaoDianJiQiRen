package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010\u0014R\u001c\u0010!\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010\u0014¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;", "Ljava/io/Serializable;", "()V", "grade", "", "getGrade", "()I", "setGrade", "(I)V", "hasTrigger", "", "getHasTrigger", "()Z", "setHasTrigger", "(Z)V", "playText", "", "getPlayText", "()Ljava/lang/String;", "setPlayText", "(Ljava/lang/String;)V", "step", "getStep", "setStep", "stepName", "getStepName", "setStepName", "subStep", "getSubStep", "setSubStep", "subStepName", "getSubStepName", "setSubStepName", "teachModelId", "getTeachModelId", "setTeachModelId", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachResultModel implements Serializable {
    private int grade;
    private boolean hasTrigger;
    private String playText;
    private int step;
    private String stepName;
    private int subStep;
    private String subStepName;
    private String teachModelId;

    public final int getGrade() {
        return this.grade;
    }

    public final boolean getHasTrigger() {
        return this.hasTrigger;
    }

    public final String getPlayText() {
        return this.playText;
    }

    public final int getStep() {
        return this.step;
    }

    public final String getStepName() {
        return this.stepName;
    }

    public final int getSubStep() {
        return this.subStep;
    }

    public final String getSubStepName() {
        return this.subStepName;
    }

    public final String getTeachModelId() {
        return this.teachModelId;
    }

    public final void setGrade(int i) {
        this.grade = i;
    }

    public final void setHasTrigger(boolean z) {
        this.hasTrigger = z;
    }

    public final void setPlayText(String str) {
        this.playText = str;
    }

    public final void setStep(int i) {
        this.step = i;
    }

    public final void setStepName(String str) {
        this.stepName = str;
    }

    public final void setSubStep(int i) {
        this.subStep = i;
    }

    public final void setSubStepName(String str) {
        this.subStepName = str;
    }

    public final void setTeachModelId(String str) {
        this.teachModelId = str;
    }
}
