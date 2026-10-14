package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/StepResultModel;", "Ljava/io/Serializable;", "()V", "doneCount", "", "getDoneCount", "()I", "setDoneCount", "(I)V", "step", "getStep", "setStep", "stepName", "", "getStepName", "()Ljava/lang/String;", "setStepName", "(Ljava/lang/String;)V", "totalCount", "getTotalCount", "setTotalCount", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepResultModel implements Serializable {
    private int doneCount;
    private int step;
    private String stepName;
    private int totalCount;

    public final int getDoneCount() {
        return this.doneCount;
    }

    public final int getStep() {
        return this.step;
    }

    public final String getStepName() {
        return this.stepName;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final void setDoneCount(int i) {
        this.doneCount = i;
    }

    public final void setStep(int i) {
        this.step = i;
    }

    public final void setStepName(String str) {
        this.stepName = str;
    }

    public final void setTotalCount(int i) {
        this.totalCount = i;
    }
}
