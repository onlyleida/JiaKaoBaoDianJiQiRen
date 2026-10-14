package cn.mucang.android.jiakaoyi.examk2.config;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K2DaoCheRuKuConfig extends BaseStepConfig {
    public StringValue p402100;
    public BooleanValue p402101;
    public StringValue p402102;
    public BooleanValue p402103;
    public StringValue p402104;
    public BooleanValue p402105;
    public IntegerValue p402107;
    public BooleanValue p402108;
    public IntegerValue p402109;
    public BooleanValue p402110;
    public IntegerValue p402111;
    public IntegerValue p402112;
    public BooleanValue p402113;
    public BooleanValue p402116;
    public BooleanValue p402117;
    public IntegerValue p402118;
    public IntegerValue p402120;
    public BooleanValue p402123;
    public BooleanValue p402124;
    public OptionsValue p402125;
    public IntegerValue p402127;
    public BooleanValue p402128;
    public BooleanValue p402129;
    public BooleanValue p402130;
    public IntegerValue p402131;
    public BooleanValue p402132;
    public BooleanValue p402133;
    public BooleanValue p402134;
    public BooleanValue p402135;
    public BooleanValue p402136;
    public BooleanValue p402137;
    public OptionsValue p402139;
    public OptionsValue p402140;
    public BooleanValue p402141;
    public BooleanValue p402142;
    public IntegerValue p402143;
    public BooleanValue p402144;
    public BooleanValue p402145;
    public StringValue p402146;
    public BooleanValue p402147;
    public IntegerValue p402148;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public int getCountDownTime() {
        return ((Integer) this.p402107.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getEndVoiceValue() {
        return ((Boolean) this.p402105.value).booleanValue() ? this.p402104 : super.getEndVoiceValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public StringValue getReportVoiceValue() {
        return this.p402100;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig
    public boolean isShowCountDown() {
        return ((Boolean) this.p402137.value).booleanValue();
    }
}
