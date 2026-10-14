package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2JinJiQingKuangConfig extends BaseStepConfig {
    public StringValue p410100;
    public BooleanValue p410101;
    public StringValue p410102;
    public BooleanValue p410103;
    public StringValue p410104;
    public BooleanValue p410105;
    public IntegerValue p410106;
    public IntegerValue p410107;
    public IntegerValue p410108;
    public IntegerValue p410109;
    public IntegerValue p410110;
    public IntegerValue p410111;
    public StringValue p410112;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p410105.value).booleanValue() ? this.p410104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p410100;
    }
}
