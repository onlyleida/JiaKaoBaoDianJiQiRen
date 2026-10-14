package cn.mucang.android.jiakaoyi.exam.k3.common;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseFinishEvent<T extends BaseStepConfig> extends d<T> {
    protected boolean isJudgeGlobalSpeed;

    public BaseFinishEvent(T t, Deduct deduct) {
        super(t, deduct);
    }

    protected abstract float configDistance();

    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
    }

    protected abstract StringValue finishVoiceTips();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public f handle(e eVar, ExamProcessor examProcessor, b bVar) {
        StringValue stringValueFinishVoiceTips;
        T t;
        if (this.noInited) {
            this.noInited = false;
            initArgs(eVar, examProcessor, bVar);
        }
        doFixed(eVar, examProcessor, bVar);
        if (!isEnd(eVar, examProcessor, bVar)) {
            return null;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("Step end " + bVar.f3142e + " ; estimateTotalDistance " + eVar.d().C);
        GlobalStateData.isStepFinish = true;
        this.doNotExecute = true;
        if (needVoiceTip() && (t = (stringValueFinishVoiceTips = finishVoiceTips()).value) != 0) {
            TtsGrade ttsGrade = TtsGrade.ExamTip;
            int i = stringValueFinishVoiceTips.ruleId;
            TtsManager.t((String) t, ttsGrade, i, l.d(i));
        }
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.d dVarF = bVar.f();
        if (dVarF instanceof K3BaseStepData) {
            K3BaseStepData k3BaseStepData = (K3BaseStepData) dVarF;
            k3BaseStepData.isEnd = true;
            k3BaseStepData.onCheckEnd(eVar, bVar, examProcessor);
        }
        return new f(this.deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected final boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        K3GlobalStepConfig k3GlobalStepConfig = (K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global);
        if (k3GlobalStepConfig != null) {
            this.isJudgeGlobalSpeed = !Arrays.asList(((String) k3GlobalStepConfig.p200264.value).split(",")).contains(String.valueOf(bVar.f3142e.type));
        }
    }

    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        float fConfigDistance;
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.d dVarF = bVar.f();
        if (bVar.n) {
            fConfigDistance = configDistance();
        } else {
            fConfigDistance = bVar.f3143f.f3088h;
            if (fConfigDistance < BitmapDescriptorFactory.HUE_RED) {
                fConfigDistance = configDistance();
            }
        }
        return eVar.d().C >= dVarF.startEstimateDistance + fConfigDistance;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        bVar.n = z;
        return super.isTrigger(eVar, examProcessor, bVar, z);
    }

    protected abstract boolean needVoiceTip();
}
