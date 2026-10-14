package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceModel;", "Ljava/io/Serializable;", "()V", "deductResult", "", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;", "getDeductResult", "()Ljava/util/List;", "setDeductResult", "(Ljava/util/List;)V", "stepResult", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/StepResultModel;", "getStepResult", "setStepResult", "teachResult", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;", "getTeachResult", "setTeachResult", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachAcceptanceModel implements Serializable {
    private List<TeachDeductModel> deductResult;
    private List<StepResultModel> stepResult;
    private List<TeachResultModel> teachResult;

    public final List<TeachDeductModel> getDeductResult() {
        return this.deductResult;
    }

    public final List<StepResultModel> getStepResult() {
        return this.stepResult;
    }

    public final List<TeachResultModel> getTeachResult() {
        return this.teachResult;
    }

    public final void setDeductResult(List<TeachDeductModel> list) {
        this.deductResult = list;
    }

    public final void setStepResult(List<StepResultModel> list) {
        this.stepResult = list;
    }

    public final void setTeachResult(List<TeachResultModel> list) {
        this.teachResult = list;
    }
}
