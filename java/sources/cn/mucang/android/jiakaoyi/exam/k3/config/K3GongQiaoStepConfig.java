package cn.mucang.android.jiakaoyi.exam.k3.config;

import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;

/* JADX INFO: loaded from: classes2.dex */
public class K3GongQiaoStepConfig extends K3BaseStepConfig {
    public static int startVoice = 220100;
    public StringValue p220100;
    public StringValue p220101;
    public BooleanValue p220102;
    public BooleanValue p220103;
    public OptionsValue p220104;
    public IntegerValue p220105;
    public IntegerValue p220106;
    public BooleanValue p220107;
    public BooleanValue p220108;
    public BooleanValue p220109;
    public IntegerValue p220110;
    public BooleanValue p220116;
    public BooleanValue p220117;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.config.K3BaseStepConfig
    public IntegerValue getStepDistance() {
        return this.p220106;
    }
}
