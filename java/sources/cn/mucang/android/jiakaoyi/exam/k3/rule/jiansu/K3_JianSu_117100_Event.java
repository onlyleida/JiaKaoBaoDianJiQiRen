package cn.mucang.android.jiakaoyi.exam.k3.rule.jiansu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JianSuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeVoiceHelper;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JianSu_117100_Event extends d<K3JianSuStepConfig> {
    private FootBrakeVoiceHelper footBrakeVoiceHelper;
    private boolean needBreak;

    public K3_JianSu_117100_Event(K3JianSuStepConfig k3JianSuStepConfig, Deduct deduct) {
        super(k3JianSuStepConfig, deduct);
        this.needBreak = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3JianSuStepConfig) this.config).p217103.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        FootBrakeVoiceHelper footBrakeVoiceHelper = this.footBrakeVoiceHelper;
        if (footBrakeVoiceHelper != null) {
            footBrakeVoiceHelper.checkPlayVoice(eVar.d().f5269g);
        }
        if (eVar.d().f5269g) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().b >= ((Integer) ((K3JianSuStepConfig) this.config).p217104.value).intValue()) {
            this.needBreak = true;
        }
        return (bVar.j() && this.needBreak) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        if (((Boolean) ((K3JianSuStepConfig) this.config).p217103.value).booleanValue() && FootBrakeVoiceHelper.INSTANCE.isSpecialStep()) {
            this.footBrakeVoiceHelper = new FootBrakeVoiceHelper();
        }
    }
}
