package cn.mucang.android.jiakaoyi.exam.k3.config;

import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K3JinTingStepConfig extends K3BaseStepConfig {
    public static int startVoice = 225100;
    public StringValue p225100;
    public StringValue p225101;
    public BooleanValue p225102;
    public IntegerValue p225103;
    public IntegerValue p225104;
    public OptionsValue p225105;
    public IntegerValue p225106;
    public IntegerValue p225107;
    public BooleanValue p225108;
    public BooleanValue p225109;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.config.K3BaseStepConfig
    public IntegerValue getStepDistance() {
        return this.p225107;
    }
}
