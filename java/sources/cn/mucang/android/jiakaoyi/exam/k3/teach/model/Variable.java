package cn.mucang.android.jiakaoyi.exam.k3.teach.model;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Variable implements Serializable {
    public int level;
    public Integer ruleCode;
    public int type;
    public Double value;

    public Variable addRuleCode(int i) {
        this.ruleCode = Integer.valueOf(i);
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Variable variable = (Variable) obj;
        return this.type == variable.type && this.ruleCode == variable.ruleCode && this.level == variable.level && this.value.equals(variable.value);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.type), this.ruleCode, Integer.valueOf(this.level), this.value);
    }
}
