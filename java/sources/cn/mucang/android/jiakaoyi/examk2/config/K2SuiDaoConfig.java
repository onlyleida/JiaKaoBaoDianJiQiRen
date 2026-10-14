package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2SuiDaoConfig extends BaseStepConfig {
    public StringValue p412100;
    public BooleanValue p412101;
    public StringValue p412102;
    public BooleanValue p412103;
    public StringValue p412104;
    public BooleanValue p412105;
    public BooleanValue p412106;
    public IntegerValue p412107;
    public BooleanValue p412108;
    public IntegerValue p412109;
    public IntegerValue p412110;
    public IntegerValue p412111;
    public BooleanValue p412112;
    public BooleanValue p412113;
    public IntegerValue p412114;
    public BooleanValue p412115;
    public IntegerValue p412116;
    public IntegerValue p412117;
    public OptionsValue p412118;
    public IntegerValue p412119;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p412105.value).booleanValue() ? this.p412104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p412100;
    }
}
