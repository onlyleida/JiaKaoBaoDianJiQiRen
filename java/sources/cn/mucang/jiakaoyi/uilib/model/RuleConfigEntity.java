package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.FloatValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class RuleConfigEntity extends IdEntity {
    private boolean allowUserSet;
    private String areaCode;
    private String deductIds;
    private long examSiteId;
    private boolean hadSetByUser;
    private int level;
    private int maxValue;
    private int maxValue2;
    private int minValue;
    private int minValue2;
    private String name;
    private transient List<String> optionList;
    private String options;
    private int position;
    private int ruleId;
    private int stepId;
    public transient long updateTime;
    private String userId;
    private String value;
    private int value2;
    private int valueType;

    public void copy(RuleConfigEntity ruleConfigEntity) {
        copy(ruleConfigEntity, false);
    }

    @Override // cn.mucang.android.core.db.IdEntity
    public boolean equals(Object obj) {
        if (getValue() == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RuleConfigEntity) || !super.equals(obj)) {
            return false;
        }
        RuleConfigEntity ruleConfigEntity = (RuleConfigEntity) obj;
        return ruleConfigEntity.getValue() != null && getStepId() == ruleConfigEntity.getStepId() && getExamSiteId() == ruleConfigEntity.getExamSiteId() && getRuleId() == ruleConfigEntity.getRuleId() && getValueType() == ruleConfigEntity.getValueType() && getValue2() == ruleConfigEntity.getValue2() && getValue().equals(ruleConfigEntity.getValue());
    }

    public String getAreaCode() {
        return this.areaCode;
    }

    public String getDeductIds() {
        return this.deductIds;
    }

    public long getExamSiteId() {
        return this.examSiteId;
    }

    public int getLevel() {
        return this.level;
    }

    public int getMaxValue() {
        return this.maxValue;
    }

    public int getMaxValue2() {
        return this.maxValue2;
    }

    public int getMinValue() {
        return this.minValue;
    }

    public int getMinValue2() {
        return this.minValue2;
    }

    public String getName() {
        return this.name;
    }

    public List<String> getOptionList() {
        if (cn.mucang.android.core.utils.g.b(this.optionList) && n0.g(this.options)) {
            this.optionList = new ArrayList(Arrays.asList(this.options.split(",")));
        }
        return this.optionList;
    }

    public String getOptions() {
        return this.options;
    }

    public int getPosition() {
        return this.position;
    }

    public int getRuleId() {
        return this.ruleId;
    }

    public int getStepId() {
        return this.stepId;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getValue() {
        return this.value;
    }

    public int getValue2() {
        return this.value2;
    }

    public int getValueType() {
        return this.valueType;
    }

    @Override // cn.mucang.android.core.db.IdEntity
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(getStepId()), Long.valueOf(getExamSiteId()), Integer.valueOf(getRuleId()), Integer.valueOf(getValueType()), getValue(), Integer.valueOf(getValue2()));
    }

    public boolean isAllowUserSet() {
        return this.allowUserSet;
    }

    public boolean isHadSetByUser() {
        return this.hadSetByUser;
    }

    public void setAllowUserSet(boolean z) {
        this.allowUserSet = z;
    }

    public void setAreaCode(String str) {
        this.areaCode = str;
    }

    public void setDeductIds(String str) {
        this.deductIds = str;
    }

    public void setExamSiteId(long j) {
        this.examSiteId = j;
    }

    public void setHadSetByUser(boolean z) {
        this.hadSetByUser = z;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public void setMaxValue(int i) {
        this.maxValue = i;
    }

    public void setMaxValue2(int i) {
        this.maxValue2 = i;
    }

    public void setMinValue(int i) {
        this.minValue = i;
    }

    public void setMinValue2(int i) {
        this.minValue2 = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOptions(String str) {
        this.options = str;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setRuleId(int i) {
        this.ruleId = i;
    }

    public void setStepId(int i) {
        this.stepId = i;
    }

    public void setUserId(String str) {
        if (AppUtils.k()) {
            return;
        }
        this.userId = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public void setValue2(int i) {
        this.value2 = i;
    }

    public void setValueType(int i) {
        this.valueType = i;
    }

    public String toString() {
        return "RuleConfigEntity{stepId=" + this.stepId + ", deductIds='" + this.deductIds + "', examSiteId=" + this.examSiteId + ", ruleId=" + this.ruleId + ", valueType=" + this.valueType + ", value='" + this.value + "', allowUserSet=" + this.allowUserSet + ", name='" + this.name + "', value2=" + this.value2 + ", minValue=" + this.minValue + ", maxValue=" + this.maxValue + ", minValue2=" + this.minValue2 + ", maxValue2=" + this.maxValue2 + ", options='" + this.options + "', optionList=" + this.optionList + ", uid='" + this.userId + "', hadSetByUser=" + this.hadSetByUser + ", level=" + this.level + '}';
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0130 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x0131  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v17, types: [T, java.lang.Float] */
    /* JADX WARN: Type inference failed for: r2v23, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r2v26, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r2v32, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v37, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r2v40, types: [T, java.lang.Boolean] */
    public RuleConfig transform() {
        ?? r1;
        try {
            r1 = this.valueType;
            try {
                if (r1 == 3) {
                    BooleanValue booleanValue = new BooleanValue();
                    booleanValue.value = Boolean.valueOf(Boolean.parseBoolean(this.value));
                    r1 = booleanValue;
                } else if (r1 == 1) {
                    IntegerValue integerValue = new IntegerValue();
                    integerValue.minValue = this.minValue;
                    integerValue.maxValue = this.maxValue;
                    integerValue.value = Integer.valueOf(Integer.parseInt(this.value));
                    r1 = integerValue;
                } else if (r1 == 2) {
                    StringValue stringValue = new StringValue();
                    stringValue.value = this.value;
                    r1 = stringValue;
                } else if (r1 == 5) {
                    RangeValue rangeValue = new RangeValue();
                    rangeValue.value = Integer.valueOf(Integer.parseInt(this.value));
                    rangeValue.value2 = this.value2;
                    rangeValue.minValue = this.minValue;
                    rangeValue.maxValue = this.maxValue;
                    rangeValue.minValue2 = this.minValue2;
                    rangeValue.maxValue2 = this.maxValue2;
                    r1 = rangeValue;
                } else {
                    if (r1 != 4) {
                        if (r1 == 6) {
                            FloatValue floatValue = new FloatValue();
                            floatValue.minValue = this.minValue;
                            floatValue.maxValue = this.maxValue;
                            floatValue.value = Float.valueOf(Float.parseFloat(this.value));
                            r1 = floatValue;
                        } else {
                            r1 = 0;
                        }
                        if (r1 == 0) {
                            return null;
                        }
                        r1.ruleId = this.ruleId;
                        r1.step = Step.findWithType(this.stepId);
                        r1.name = this.name;
                        r1.deductIds = this.deductIds;
                        r1.level = this.level;
                        return r1;
                    }
                    OptionsValue optionsValue = new OptionsValue();
                    String[] strArrSplit = this.options.split(",");
                    ArrayList arrayList = new ArrayList();
                    optionsValue.options = arrayList;
                    arrayList.addAll(Arrays.asList(strArrSplit));
                    optionsValue.value = Integer.valueOf(Integer.parseInt(this.value));
                    r1 = optionsValue;
                }
            } catch (Throwable th) {
                th = th;
                cn.mucang.android.jiakaoyi.framework.log.f.o("数据转换发生错误: ruleId:" + this.ruleId + " stepId:" + this.stepId + " name:" + this.name + " , error:" + th.getLocalizedMessage());
                StringBuilder sb = new StringBuilder();
                sb.append("数据转换发生错误:");
                sb.append(th.getLocalizedMessage());
                u.h(sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(th.getLocalizedMessage());
                sb2.append(" : ");
                sb2.append(toString());
                t.d("TAG", sb2.toString());
            }
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
        }
        if (r1 == 0) {
            return null;
        }
        r1.ruleId = this.ruleId;
        r1.step = Step.findWithType(this.stepId);
        r1.name = this.name;
        r1.deductIds = this.deductIds;
        r1.level = this.level;
        return r1;
    }

    public void copy(RuleConfigEntity ruleConfigEntity, boolean z) {
        this.value = ruleConfigEntity.value;
        this.value2 = ruleConfigEntity.value2;
        this.maxValue = ruleConfigEntity.maxValue;
        this.minValue = ruleConfigEntity.minValue;
        this.maxValue2 = ruleConfigEntity.maxValue2;
        this.minValue2 = ruleConfigEntity.minValue2;
        this.hadSetByUser = ruleConfigEntity.hadSetByUser;
        this.optionList = null;
        this.ruleId = ruleConfigEntity.ruleId;
        if (z) {
            this.level = ruleConfigEntity.level;
            this.name = ruleConfigEntity.name;
            this.userId = ruleConfigEntity.userId;
            this.position = ruleConfigEntity.position;
            this.areaCode = ruleConfigEntity.areaCode;
            this.options = ruleConfigEntity.options;
            this.allowUserSet = ruleConfigEntity.allowUserSet;
            this.stepId = ruleConfigEntity.stepId;
            this.examSiteId = ruleConfigEntity.examSiteId;
            this.valueType = ruleConfigEntity.valueType;
            this.deductIds = ruleConfigEntity.deductIds;
        }
    }
}
