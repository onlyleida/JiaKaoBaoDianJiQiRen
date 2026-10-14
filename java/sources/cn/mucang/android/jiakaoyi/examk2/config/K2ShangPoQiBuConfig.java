package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2ShangPoQiBuConfig extends BaseStepConfig {
    public StringValue p404100;
    public BooleanValue p404101;
    public StringValue p404102;
    public BooleanValue p404103;
    public StringValue p404104;
    public BooleanValue p404105;
    public IntegerValue p404106;
    public BooleanValue p404107;
    public IntegerValue p404108;
    public IntegerValue p404109;
    public IntegerValue p404110;
    public IntegerValue p404111;
    public BooleanValue p404112;
    public BooleanValue p404113;
    public BooleanValue p404114;
    public IntegerValue p404115;
    public BooleanValue p404117;
    public IntegerValue p404118;
    public IntegerValue p404119;
    public IntegerValue p404120;
    public OptionsValue p404121;
    public BooleanValue p404122;
    public BooleanValue p404124;
    public IntegerValue p404125;
    public IntegerValue p404127;
    public OptionsValue p404128;
    public IntegerValue p404129;
    public BooleanValue p404130;
    public BooleanValue p404131;
    public IntegerValue p404132;
    public BooleanValue p404133;
    public IntegerValue p404134;
    public StringValue p404137;
    public OptionsValue p404138;
    public OptionsValue p404139;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public int getCountDownTime() {
        return ((Integer) this.p404127.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p404105.value).booleanValue() ? this.p404104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p404100;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public boolean isShowCountDown() {
        return ((Boolean) this.p404130.value).booleanValue();
    }
}
