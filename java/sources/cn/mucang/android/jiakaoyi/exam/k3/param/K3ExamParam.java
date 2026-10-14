package cn.mucang.android.jiakaoyi.exam.k3.param;

import cn.mucang.android.jiakaoyi.engine.config.param.ExamParam;
import cn.mucang.android.jiakaoyi.engine.config.param.a;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.framework.utils.i0;

/* JADX INFO: loaded from: classes2.dex */
public class K3ExamParam extends ExamParam<K3GlobalStepConfig> implements a {
    public IntegerValue p200161;
    public IntegerValue p200185;
    public IntegerValue p200186;
    public BooleanValue p200257;
    public IntegerValue p200260;
    public boolean practiceModel;
    private final boolean needOrderExe = d.d();
    private final boolean onlyUseDistance = d.e();
    private boolean isPlayTeachVoice = i0.b("K3TeachVoiceSwitch", true);

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public boolean canCheckGlobalEvent() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    protected boolean checkComplete() {
        return (this.p200185 == null || this.p200186 == null) ? false : true;
    }

    public void enableTeachVoice(boolean z) {
        this.isPlayTeachVoice = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public boolean enableTwoChannel() {
        BooleanValue booleanValue = this.p200257;
        return booleanValue != null ? ((Boolean) booleanValue.value).booleanValue() : super.enableTwoChannel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public int getMisFireRpm() {
        return ((Integer) this.p200260.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public int getMisFireTime() {
        return ((Integer) this.p200185.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public int getPassScore() {
        IntegerValue integerValue = this.p200161;
        return integerValue != null ? ((Integer) integerValue.value).intValue() : super.getPassScore();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public boolean isPlayTeachVoice() {
        return this.isPlayTeachVoice;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public boolean needOrderExe() {
        return this.needOrderExe;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.a
    public boolean onlyUseDistance() {
        return this.onlyUseDistance;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.config.param.ExamParam
    public ExamParam fillGlobalConfig(K3GlobalStepConfig k3GlobalStepConfig) {
        this.p200260 = k3GlobalStepConfig.p200260;
        this.p200185 = k3GlobalStepConfig.p200185;
        this.p200186 = k3GlobalStepConfig.p200186;
        this.p200161 = k3GlobalStepConfig.p200161;
        this.p200257 = k3GlobalStepConfig.p200257;
        if (checkComplete()) {
            return this;
        }
        throw new IllegalStateException("K3ExamParam 参数属性创建异常请检查。。");
    }
}
