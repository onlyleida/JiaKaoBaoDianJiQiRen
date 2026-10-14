package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class StepOrderItem implements Serializable {
    public String content;
    public long id;
    public String name;
    public String stepAliasName;
    public int stepId;

    public StepOrderItem() {
    }

    public void copy(StepOrderItem stepOrderItem) {
        this.stepId = stepOrderItem.stepId;
        this.name = stepOrderItem.name;
        this.stepAliasName = stepOrderItem.stepAliasName;
        this.content = stepOrderItem.content;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StepOrderItem stepOrderItem = (StepOrderItem) obj;
        return this.id == stepOrderItem.id && this.stepId == stepOrderItem.stepId && Objects.equals(this.name, stepOrderItem.name) && Objects.equals(this.stepAliasName, stepOrderItem.stepAliasName) && Objects.equals(this.content, stepOrderItem.content);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.id), Integer.valueOf(this.stepId), this.name, this.stepAliasName, this.content);
    }

    public StepOrderItem(Step step) {
        this.stepId = step.type;
        String str = step.stepName;
        this.name = str;
        this.stepAliasName = str;
    }
}
