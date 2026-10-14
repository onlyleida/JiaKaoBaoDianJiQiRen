package cn.mucang.android.jiakaoyi.exam.k3.config;

import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K3XianSuStepConfig extends K3BaseStepConfig {
    public static int startVoice = 218100;
    public StringValue p218100;
    public StringValue p218101;
    public BooleanValue p218102;
    public IntegerValue p218103;
    public OptionsValue p218104;
    public IntegerValue p218105;
    public IntegerValue p218106;
    public BooleanValue p218107;
    public BooleanValue p218108;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.config.K3BaseStepConfig
    public IntegerValue getStepDistance() {
        return this.p218106;
    }
}
