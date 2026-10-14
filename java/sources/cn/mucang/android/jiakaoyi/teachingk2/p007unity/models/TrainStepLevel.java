package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel;", "Ljava/io/Serializable;", "()V", "value", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;", "getValue", "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;", "setValue", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;)V", "StepLevel", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TrainStepLevel implements Serializable {
    private StepLevel value;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;", "Ljava/io/Serializable;", "()V", DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, "", "getLevel", "()I", "setLevel", "(I)V", "step", "getStep", "setStep", "stepName", "", "getStepName", "()Ljava/lang/String;", "setStepName", "(Ljava/lang/String;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class StepLevel implements Serializable {
        private int level;
        private int step;
        private String stepName;

        public final int getLevel() {
            return this.level;
        }

        public final int getStep() {
            return this.step;
        }

        public final String getStepName() {
            return this.stepName;
        }

        public final void setLevel(int i) {
            this.level = i;
        }

        public final void setStep(int i) {
            this.step = i;
        }

        public final void setStepName(String str) {
            this.stepName = str;
        }
    }

    public final StepLevel getValue() {
        return this.value;
    }

    public final void setValue(StepLevel stepLevel) {
        this.value = stepLevel;
    }
}
