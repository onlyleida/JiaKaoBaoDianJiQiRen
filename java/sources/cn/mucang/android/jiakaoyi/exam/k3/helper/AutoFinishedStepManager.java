package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.busmodel.AutoFinishStep;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AutoFinishedStepManager {
    private final AutoChaoCheChecker autoChaoCheChecker;
    public boolean finishAutoBianDao = false;
    private GlobalStateData globalData;
    private GlobalJiaJianDangChecker globalJiaJianDangChecker;
    private K3JiaJianDangStepConfig jiaJianDangStepConfig;
    private final K3GlobalStepConfig k3GlobalStepConfig;

    public AutoFinishedStepManager(GlobalStateData globalStateData) {
        this.globalData = globalStateData;
        T t = globalStateData.config;
        this.k3GlobalStepConfig = (K3GlobalStepConfig) t;
        this.autoChaoCheChecker = new AutoChaoCheChecker((K3GlobalStepConfig) t);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004f  */
    /* JADX WARN: Multi-variable type inference failed */
    public void startCheck(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        HashMap map;
        if (this.jiaJianDangStepConfig == null) {
            this.jiaJianDangStepConfig = (K3JiaJianDangStepConfig) examProcessor.r(Step.K3_JiaJianDang);
        }
        boolean zBooleanValue = ((Boolean) this.k3GlobalStepConfig.p200240.value).booleanValue();
        if (f.b()) {
            zBooleanValue = !((Boolean) this.jiaJianDangStepConfig.p212155.value).booleanValue();
        }
        K3JiaJianDangStepConfig k3JiaJianDangStepConfig = this.jiaJianDangStepConfig;
        if (k3JiaJianDangStepConfig == null || !zBooleanValue) {
            map = null;
        } else {
            if (this.globalJiaJianDangChecker == null) {
                this.globalJiaJianDangChecker = new GlobalJiaJianDangChecker(this.k3GlobalStepConfig, k3JiaJianDangStepConfig);
            }
            HashMap<Step, Boolean> mapOnChange = this.globalJiaJianDangChecker.onChange(eVar, bVar, examProcessor);
            if (mapOnChange != null) {
                map = new HashMap(mapOnChange);
            } else {
                map = null;
            }
        }
        HashMap<Step, Boolean> mapCheck = this.autoChaoCheChecker.check(eVar, examProcessor, bVar, this.globalData.state);
        this.finishAutoBianDao = this.autoChaoCheChecker.finishAutoBianDao;
        if (mapCheck != null) {
            if (map == null) {
                map = new HashMap(mapCheck);
            } else {
                map.putAll(mapCheck);
            }
        }
        if (map != null) {
            LiveBus.d(AutoFinishStep.class).l(new AutoFinishStep(map));
        }
    }
}
