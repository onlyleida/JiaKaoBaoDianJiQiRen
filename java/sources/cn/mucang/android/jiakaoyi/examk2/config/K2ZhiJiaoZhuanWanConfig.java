package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2ZhiJiaoZhuanWanConfig extends BaseStepConfig {
    public StringValue p405100;
    public BooleanValue p405101;
    public StringValue p405102;
    public BooleanValue p405103;
    public StringValue p405104;
    public BooleanValue p405105;
    public BooleanValue p405106;
    public BooleanValue p405107;
    public IntegerValue p405108;
    public BooleanValue p405109;
    public BooleanValue p405110;
    public IntegerValue p405111;
    public IntegerValue p405113;
    public IntegerValue p405114;
    public BooleanValue p405115;
    public BooleanValue p405116;
    public IntegerValue p405117;
    public BooleanValue p405118;
    public IntegerValue p405119;
    public BooleanValue p405120;
    public BooleanValue p405121;
    public BooleanValue p405122;
    public IntegerValue p405123;
    public BooleanValue p405124;
    public BooleanValue p405125;
    public BooleanValue p405126;
    public BooleanValue p405127;
    public BooleanValue p405128;
    public BooleanValue p405129;
    public OptionsValue p405130;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public int getCountDownTime() {
        return ((Integer) this.p405119.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p405105.value).booleanValue() ? this.p405104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p405100;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public boolean isShowCountDown() {
        return ((Boolean) this.p405120.value).booleanValue();
    }
}
