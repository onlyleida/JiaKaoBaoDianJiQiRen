package cn.mucang.android.jiakaoyi.engine.config.param;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ExamParam<T extends BaseStepConfig> implements Serializable {
    public abstract boolean canCheckGlobalEvent();

    protected abstract boolean checkComplete();

    public boolean enableTwoChannel() {
        return false;
    }

    public abstract ExamParam<T> fillGlobalConfig(T t);

    public int getMisFireRpm() {
        return 30;
    }

    public int getMisFireTime() {
        return 1;
    }

    public int getPassScore() {
        return (AppUtils.f() || AppUtils.l()) ? 80 : 90;
    }

    public int getTotalScore() {
        return 100;
    }

    public boolean isPlayTeachVoice() {
        return true;
    }

    public boolean needOrderExe() {
        return false;
    }
}
