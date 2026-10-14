package cn.mucang.android.jiakaoyi.engine.config;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BaseStepConfig implements Serializable {
    public int getCountDownTime() {
        return 0;
    }

    public StringValue getEndVoiceValue() {
        return null;
    }

    public StringValue getReportVoiceValue() {
        return null;
    }

    public boolean isShowCountDown() {
        return false;
    }
}
