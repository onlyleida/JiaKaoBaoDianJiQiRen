package cn.mucang.android.jiakaoyi.exam.k3.childstep;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class FingerPrintStepChecker extends ChildStepChecker<K3ShangCheStepConfig> {
    public boolean isFinishFingerPrint;
    private ShangCheStepData shangCheStepData;

    public FingerPrintStepChecker(ShangCheStepData shangCheStepData, K3ShangCheStepConfig k3ShangCheStepConfig, ChildStepData childStepData, c.b bVar) {
        super(k3ShangCheStepConfig, childStepData, bVar);
        this.isFinishFingerPrint = false;
        this.shangCheStepData = shangCheStepData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepChecker
    public void onChange(e eVar, b bVar, ExamProcessor examProcessor) {
        if (this.childStepData.isEnd) {
            return;
        }
        if (!this.childStepData.isStart) {
            if (!((Boolean) ((K3ShangCheStepConfig) this.config).p201132.value).booleanValue() || this.shangCheStepData.engineType != 1) {
                this.childStepData.setStart(((K3ShangCheStepConfig) this.config).p201137);
                return;
            }
            ChildStepData childStepData = this.childStepData;
            if (!childStepData.isPlayStartVoice) {
                childStepData.isPlayStartVoice = true;
                String str = (String) ((K3ShangCheStepConfig) this.config).p201133.value;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.FingerPrintStepChecker.2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                    public void onSpeakEnd() {
                        super.onSpeakEnd();
                        if (((Integer) ((K3ShangCheStepConfig) FingerPrintStepChecker.this.config).p201139.value).intValue() == 0) {
                            FingerPrintStepChecker fingerPrintStepChecker = FingerPrintStepChecker.this;
                            fingerPrintStepChecker.childStepData.setStart(((K3ShangCheStepConfig) fingerPrintStepChecker.config).p201137);
                        }
                    }
                };
                T t = this.config;
                TtsManager.w(str, ttsGrade, simpleTtsListener, ((K3ShangCheStepConfig) t).p201133.ruleId, l.d(((K3ShangCheStepConfig) t).p201133.ruleId));
            }
            if (((Integer) ((K3ShangCheStepConfig) this.config).p201139.value).intValue() == 1) {
                this.childStepData.setStart(((K3ShangCheStepConfig) this.config).p201137);
                return;
            }
            return;
        }
        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201131.value).booleanValue()) {
            ChildStepData childStepData2 = this.childStepData;
            if (!childStepData2.isShowDialog) {
                childStepData2.isShowDialog = true;
                this.shangCheStepData.callEvent(ShangCheStepData.EventType.startFingerPrint, childStepData2, "请开始指纹验证", false);
            }
        }
        if (((Integer) ((K3ShangCheStepConfig) this.config).p201134.value).intValue() == 1 && eVar.d().s) {
            this.isFinishFingerPrint = true;
            this.childStepData.finish = true;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ChildStepData childStepData3 = this.childStepData;
        if (jElapsedRealtime > childStepData3.startTime + childStepData3.stepTime) {
            childStepData3.finish = true;
        }
        if (this.childStepData.finish) {
            this.childStepData.setFinish();
            if (((Boolean) ((K3ShangCheStepConfig) this.config).p201135.value).booleanValue()) {
                ChildStepData childStepData4 = this.childStepData;
                if (!childStepData4.isPlayEndVoice) {
                    childStepData4.isPlayEndVoice = true;
                    String str2 = (String) ((K3ShangCheStepConfig) this.config).p201136.value;
                    TtsGrade ttsGrade2 = TtsGrade.ExamTip;
                    SimpleTtsListener simpleTtsListener2 = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.FingerPrintStepChecker.1
                        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                        public void onSpeakEnd() {
                            super.onSpeakEnd();
                            FingerPrintStepChecker.this.childStepData.setEnd();
                            FingerPrintStepChecker.this.shangCheStepData.callEvent(ShangCheStepData.EventType.dismissFingerPrint, FingerPrintStepChecker.this.childStepData, "取消指纹验证弹窗", false);
                        }
                    };
                    T t2 = this.config;
                    TtsManager.w(str2, ttsGrade2, simpleTtsListener2, ((K3ShangCheStepConfig) t2).p201136.ruleId, l.d(((K3ShangCheStepConfig) t2).p201136.ruleId));
                }
            } else {
                this.childStepData.setEnd();
                this.shangCheStepData.callEvent(ShangCheStepData.EventType.dismissFingerPrint, this.childStepData, "取消指纹验证弹窗", false);
            }
        }
        if (this.childStepData.isEnd) {
            this.shangCheStepData.callEvent(ShangCheStepData.EventType.dismissFingerPrint, this.childStepData, "取消指纹验证弹窗", false);
        }
    }
}
