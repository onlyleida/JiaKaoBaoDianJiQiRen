package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2CeFangTingCheConfig extends BaseStepConfig {
    public StringValue p406100;
    public BooleanValue p406101;
    public StringValue p406102;
    public BooleanValue p406103;
    public StringValue p406104;
    public BooleanValue p406105;
    public IntegerValue p406107;
    public IntegerValue p406108;
    public BooleanValue p406109;
    public BooleanValue p406110;
    public IntegerValue p406111;
    public BooleanValue p406112;
    public BooleanValue p406113;
    public BooleanValue p406114;
    public BooleanValue p406116;
    public IntegerValue p406119;
    public BooleanValue p406120;
    public IntegerValue p406121;
    public BooleanValue p406123;
    public BooleanValue p406124;
    public BooleanValue p406125;
    public BooleanValue p406126;
    public IntegerValue p406127;
    public BooleanValue p406128;
    public BooleanValue p406129;
    public BooleanValue p406130;
    public BooleanValue p406131;
    public OptionsValue p406133;
    public OptionsValue p406135;
    public OptionsValue p406136;
    public BooleanValue p406137;
    public BooleanValue p406138;
    public BooleanValue p406139;
    public BooleanValue p406140;
    public IntegerValue p406141;
    public IntegerValue p406142;
    public BooleanValue p406143;
    public IntegerValue p406144;
    public BooleanValue p406145;
    public BooleanValue p406146;
    public BooleanValue p406147;
    public BooleanValue p406148;
    public IntegerValue p406149;
    public OptionsValue p406150;
    public BooleanValue p406151;
    public BooleanValue p406152;
    public BooleanValue p406153;
    public OptionsValue p406154;
    public BooleanValue p406155;
    public OptionsValue p406156;
    public StringValue p406157;
    public BooleanValue p406160;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public int getCountDownTime() {
        return ((Integer) this.p406107.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p406105.value).booleanValue() ? this.p406104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p406100;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public boolean isShowCountDown() {
        return ((Boolean) this.p406130.value).booleanValue();
    }
}
