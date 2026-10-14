package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearDistanceLimitChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100178_Event extends d<K3GlobalStepConfig> {
    private final GearDistanceLimitChecker distanceLimitChecker;
    private List<Step> steps;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100178_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.steps = new ArrayList();
        this.distanceLimitChecker = new GearDistanceLimitChecker(Gear.Gear1, ((Integer) k3GlobalStepConfig.p200105.value).intValue(), ((Boolean) k3GlobalStepConfig.p200173.value).booleanValue());
        for (String str : ((String) k3GlobalStepConfig.p200248.value).split(",")) {
            try {
                Step stepFindWithType = Step.findWithType(Integer.parseInt(str));
                if (stepFindWithType != null) {
                    this.steps.add(stepFindWithType);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                u.h("p200248 以下项目不对1挡的行驶距离进行评判 配置错误");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (!this.steps.isEmpty()) {
            Iterator<Step> it = this.steps.iterator();
            while (it.hasNext()) {
                if (examProcessor.y(it.next())) {
                    this.distanceLimitChecker.clear();
                    return true;
                }
            }
        }
        if (!((Boolean) ((K3GlobalStepConfig) this.config).p200215.value).booleanValue() || !globalStateData.carStop) {
            return !this.distanceLimitChecker.check(eVar, examProcessor);
        }
        this.distanceLimitChecker.clear();
        return true;
    }
}
