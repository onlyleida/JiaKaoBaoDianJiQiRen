package cn.mucang.android.jiakaoyi.engine.config.route;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class StepConfig implements Serializable {
    public Map<Integer, Deduct> deductConfig;
    public Step step;
    public BaseStepConfig stepConfig;
}
