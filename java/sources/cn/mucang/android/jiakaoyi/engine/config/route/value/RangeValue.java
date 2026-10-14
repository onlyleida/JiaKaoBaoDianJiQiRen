package cn.mucang.android.jiakaoyi.engine.config.route.value;

import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class RangeValue extends RuleConfig<Integer> {
    public int maxValue;
    public int maxValue2;
    public int minValue;
    public int minValue2;
    public int value2;

    @Override // cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RangeValue) && super.equals(obj) && this.value2 == ((RangeValue) obj).value2;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.ruleId), this.step, this.value, Integer.valueOf(this.value2));
    }
}
