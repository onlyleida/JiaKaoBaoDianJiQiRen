package cn.mucang.android.jiakaoyi.engine.config.route;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class RuleConfig<T> implements Serializable {
    public static final int TypeBoolean = 3;
    public static final int TypeFloat = 6;
    public static final int TypeInteger = 1;
    public static final int TypeOptions = 4;
    public static final int TypeRange = 5;
    public static final int TypeString = 2;
    public static final int VALID_MAX = 10000;
    public static final int VALID_MIN = 0;
    public String deductIds;
    public int level;
    public String name;
    public int ruleId;
    public Step step;
    public T value;

    public boolean equals(Object obj) {
        RuleConfig ruleConfig;
        T t;
        T t2 = this.value;
        if (t2 == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return (obj instanceof RuleConfig) && (t = (ruleConfig = (RuleConfig) obj).value) != null && this.ruleId == ruleConfig.ruleId && this.step == ruleConfig.step && t2.equals(t);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.ruleId), this.step, this.value);
    }
}
