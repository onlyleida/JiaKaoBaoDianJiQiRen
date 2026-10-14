package cn.mucang.android.jiakaoyi.engine.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class StepAlias implements Serializable {
    public String name;
    public String stepAliasName;
    public int type;
    public String zhName;

    public StepAlias() {
    }

    public StepAlias(Step step) {
        this.type = step.type;
        String str = step.stepName;
        this.name = str;
        this.zhName = step.zhStepName;
        this.stepAliasName = str;
    }

    public StepAlias(Step step, String str) {
        this.type = step.type;
        this.name = step.stepName;
        this.zhName = step.zhStepName;
        this.stepAliasName = str;
    }
}
