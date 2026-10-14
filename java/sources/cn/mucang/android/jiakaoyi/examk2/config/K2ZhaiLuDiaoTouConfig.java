package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2ZhaiLuDiaoTouConfig extends BaseStepConfig {
    public StringValue p409100;
    public BooleanValue p409101;
    public StringValue p409102;
    public BooleanValue p409103;
    public StringValue p409104;
    public BooleanValue p409105;
    public IntegerValue p409106;
    public IntegerValue p409107;
    public IntegerValue p409108;
    public BooleanValue p409109;
    public IntegerValue p409110;
    public IntegerValue p409111;
    public IntegerValue p409112;
    public IntegerValue p409113;
    public StringValue p409114;
    public OptionsValue p409115;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public int getCountDownTime() {
        return ((Integer) this.p409108.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p409105.value).booleanValue() ? this.p409104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p409100;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public boolean isShowCountDown() {
        return true;
    }
}
