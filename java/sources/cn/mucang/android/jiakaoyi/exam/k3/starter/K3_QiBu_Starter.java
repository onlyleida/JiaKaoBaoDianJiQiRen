package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_Starter extends K3BaseStarter<K3QiBuStepConfig> {
    public static volatile boolean start = false;
    private boolean hasSpeaking;

    public K3_QiBu_Starter(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct, Location location) {
        super(k3QiBuStepConfig, deduct, location, k3QiBuStepConfig.p203113, null, k3QiBuStepConfig.p203100, k3QiBuStepConfig.p203122, k3QiBuStepConfig.p203102);
        this.hasSpeaking = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.starter.K3BaseStarter, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        boolean zIsTrigger = super.isTrigger(eVar, examProcessor, bVar, z);
        if (zIsTrigger && ((Boolean) ((K3QiBuStepConfig) this.config).p203105.value).booleanValue() && !eVar.d().f() && !this.hasSpeaking) {
            TtsManager.r(k0.a(R.string.exam_open_engine), TtsGrade.ExamTip);
            this.hasSpeaking = true;
        }
        return zIsTrigger;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected boolean reachStartPos(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        if (z) {
            return true;
        }
        return start;
    }
}
