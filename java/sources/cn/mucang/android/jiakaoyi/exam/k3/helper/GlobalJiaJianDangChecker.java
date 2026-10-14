package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.g0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalJiaJianDangChecker {
    private K3GlobalStepConfig config;
    private K3JiaJianDangStepConfig jiaJianDangStepConfig;
    private Gear lastGear;
    private Gear reduceGear;
    private final Gear targetGear;
    public boolean reachGear = false;
    public boolean unfinished = false;

    /* JADX WARN: Multi-variable type inference failed */
    public GlobalJiaJianDangChecker(K3GlobalStepConfig k3GlobalStepConfig, K3JiaJianDangStepConfig k3JiaJianDangStepConfig) {
        this.config = k3GlobalStepConfig;
        this.jiaJianDangStepConfig = k3JiaJianDangStepConfig;
        Integer num = (Integer) k3GlobalStepConfig.p200114.value;
        this.targetGear = Gear.parse(num.intValue());
        if (num.intValue() > 1) {
            this.reduceGear = Gear.parse(num.intValue() - 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HashMap<Step, Boolean> onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        Gear gear;
        int i;
        Gear gear2 = eVar.d().m;
        HashMap<Step, Boolean> map = null;
        if (!this.reachGear && (gear = this.reduceGear) != null && (i = gear2.gear) >= Gear.Gear1.gear && i <= Gear.Gear6.gear) {
            if (this.lastGear == this.targetGear && i <= gear.gear) {
                if (((Boolean) this.config.p200242.value).booleanValue()) {
                    g0.c(R.raw.dingdong, new cn.mucang.android.jiakaoyi.framework.h.b<Boolean>() { // from class: cn.mucang.android.jiakaoyi.exam.k3.helper.GlobalJiaJianDangChecker.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // cn.mucang.android.jiakaoyi.framework.h.b
                        public void callback(Boolean bool) {
                            if (((Boolean) GlobalJiaJianDangChecker.this.config.p200241.value).booleanValue()) {
                                TtsManager.r((String) GlobalJiaJianDangChecker.this.jiaJianDangStepConfig.p212101.value, TtsGrade.ExamTip);
                            }
                        }
                    });
                } else if (((Boolean) this.config.p200241.value).booleanValue()) {
                    TtsManager.r((String) this.jiaJianDangStepConfig.p212101.value, TtsGrade.ExamTip);
                }
                this.reachGear = true;
                HashMap<Step, Boolean> map2 = new HashMap<>();
                map2.put(Step.K3_JiaJianDang, Boolean.valueOf(this.reachGear));
                map = map2;
            }
            this.lastGear = gear2;
        }
        if (!examProcessor.w() || this.reachGear) {
            return map;
        }
        Step step = Step.K3_JiaJianDang;
        examProcessor.f(step, new int[]{112102});
        HashMap<Step, Boolean> map3 = new HashMap<>();
        map3.put(step, Boolean.valueOf(this.reachGear));
        return map3;
    }
}
