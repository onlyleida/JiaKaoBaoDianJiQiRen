package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2QuKaConfig extends BaseStepConfig {
    public StringValue p407100;
    public BooleanValue p407101;
    public StringValue p407102;
    public BooleanValue p407103;
    public StringValue p407104;
    public BooleanValue p407105;
    public IntegerValue p407106;
    public BooleanValue p407107;
    public IntegerValue p407108;
    public BooleanValue p407109;
    public BooleanValue p407110;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p407105.value).booleanValue() ? this.p407104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p407100;
    }
}
