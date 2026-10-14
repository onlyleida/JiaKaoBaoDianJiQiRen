package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2ETCConfig extends BaseStepConfig {
    public StringValue p413100;
    public BooleanValue p413101;
    public StringValue p413102;
    public BooleanValue p413103;
    public StringValue p413104;
    public BooleanValue p413105;
    public IntegerValue p413106;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p413105.value).booleanValue() ? this.p413104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p413100;
    }
}
