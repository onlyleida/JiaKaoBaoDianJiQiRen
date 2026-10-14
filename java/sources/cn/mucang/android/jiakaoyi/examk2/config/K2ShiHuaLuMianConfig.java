package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2ShiHuaLuMianConfig extends BaseStepConfig {
    public StringValue p411100;
    public BooleanValue p411101;
    public StringValue p411102;
    public BooleanValue p411103;
    public StringValue p411104;
    public BooleanValue p411105;
    public IntegerValue p411106;
    public IntegerValue p411107;
    public BooleanValue p411108;
    public IntegerValue p411109;
    public BooleanValue p411110;
    public IntegerValue p411111;
    public IntegerValue p411112;
    public IntegerValue p411113;
    public BooleanValue p411114;
    public IntegerValue p411115;
    public BooleanValue p411116;
    public OptionsValue p411117;
    public IntegerValue p411118;
    public BooleanValue p411119;
    public IntegerValue p411120;
    public IntegerValue p411121;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p411105.value).booleanValue() ? this.p411104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p411100;
    }
}
