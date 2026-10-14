package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2SQuXianStepConfig extends BaseStepConfig {
    public StringValue p403100;
    public BooleanValue p403101;
    public StringValue p403102;
    public BooleanValue p403103;
    public StringValue p403104;
    public BooleanValue p403105;
    public IntegerValue p403106;
    public BooleanValue p403107;
    public IntegerValue p403108;
    public BooleanValue p403109;
    public BooleanValue p403110;
    public BooleanValue p403111;
    public BooleanValue p403112;
    public BooleanValue p403113;
    public BooleanValue p403114;
    public OptionsValue p403115;
    public OptionsValue p403116;
    public IntegerValue p403117;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public int getCountDownTime() {
        return ((Integer) this.p403108.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p403105.value).booleanValue() ? this.p403104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p403100;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public boolean isShowCountDown() {
        return ((Boolean) this.p403109.value).booleanValue();
    }
}
