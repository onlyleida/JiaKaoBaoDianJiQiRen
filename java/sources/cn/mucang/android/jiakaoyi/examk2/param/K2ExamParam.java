package cn.mucang.android.jiakaoyi.examk2.param;

import cn.mucang.android.jiakaoyi.engine.config.param.ExamParam;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;

/* JADX INFO: loaded from: classes2.dex */
public class K2ExamParam extends ExamParam<K2GlobalConfig> {
    public IntegerValue p401142;
    public IntegerValue p401143;
    public IntegerValue p401144;
    public BooleanValue p401145;
    public StringValue p401146;
    public BooleanValue p401147;
    public IntegerValue p401148;
    public BooleanValue p401149;
    public StringValue p401150;
    public StringValue p401151;
    public BooleanValue p401152;

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public boolean canCheckGlobalEvent() {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    protected boolean checkComplete() {
        return (this.p401142 == null || this.p401143 == null || this.p401144 == null || this.p401145 == null || this.p401146 == null || this.p401147 == null || this.p401148 == null || this.p401149 == null || this.p401150 == null || this.p401151 == null || this.p401152 == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public int getMisFireRpm() {
        IntegerValue integerValue = this.p401142;
        return integerValue != null ? ((Integer) integerValue.value).intValue() : super.getMisFireRpm();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public int getMisFireTime() {
        IntegerValue integerValue = this.p401143;
        return integerValue != null ? ((Integer) integerValue.value).intValue() : super.getMisFireTime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public int getPassScore() {
        IntegerValue integerValue = this.p401144;
        return integerValue != null ? ((Integer) integerValue.value).intValue() : super.getPassScore();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public int getTotalScore() {
        return super.getTotalScore();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public ExamParam<K2GlobalConfig> fillGlobalConfig(K2GlobalConfig k2GlobalConfig) {
        this.p401142 = k2GlobalConfig.p401142;
        this.p401143 = k2GlobalConfig.p401143;
        this.p401144 = k2GlobalConfig.p401144;
        this.p401145 = k2GlobalConfig.p401145;
        this.p401146 = k2GlobalConfig.p401146;
        this.p401147 = k2GlobalConfig.p401147;
        this.p401148 = k2GlobalConfig.p401148;
        this.p401149 = k2GlobalConfig.p401149;
        this.p401150 = k2GlobalConfig.p401150;
        this.p401151 = k2GlobalConfig.p401151;
        this.p401152 = k2GlobalConfig.p401152;
        if (checkComplete()) {
            return this;
        }
        throw new IllegalStateException("K2ExamParam 参数属性创建异常请检查。");
    }
}
