package cn.mucang.android.jiakaoyi.engine.config.route;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class RouteConfig implements Serializable {
    public long examSiteId;
    public String mapMd5;
    public String mapSiteId;
    public String routeId;
    public String routeName;
    public Map<Step, StepConfig> steps;

    public <T extends BaseStepConfig> T getConfig(Step step) {
        T t;
        StepConfig stepConfig = this.steps.get(step);
        if (stepConfig == null || (t = (T) stepConfig.stepConfig) == null) {
            return null;
        }
        return t;
    }

    public Deduct getDeduct(Step step, int i) {
        StepConfig stepConfig = this.steps.get(step);
        if (stepConfig == null) {
            return null;
        }
        return stepConfig.deductConfig.get(Integer.valueOf(i));
    }

    public StepConfig getStepConfig(Step step) {
        return this.steps.get(step);
    }

    public Deduct getDeduct(int i) {
        Deduct deduct;
        Iterator<StepConfig> it = this.steps.values().iterator();
        while (it.hasNext()) {
            Map<Integer, Deduct> map = it.next().deductConfig;
            if (map != null && (deduct = map.get(Integer.valueOf(i))) != null) {
                return deduct;
            }
        }
        return null;
    }
}
