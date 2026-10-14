package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ShangChe_Starter extends K3BaseStarter<K3ShangCheStepConfig> {
    private boolean cancelCloseEngineDialog;
    private boolean haveEngineStart;
    private boolean isPlaying;
    private boolean isPlayingCloseEngineVoice;
    private boolean isPlayingStartVoiceAfter;
    private long playingCloseEngineVoice;
    private boolean playingEnd;

    public K3_ShangChe_Starter(K3ShangCheStepConfig k3ShangCheStepConfig, Deduct deduct, Location location) {
        super(k3ShangCheStepConfig, deduct, location, null, null, k3ShangCheStepConfig.p201101);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void playCloseEngineVoice(e eVar, int i) {
        if (!eVar.d().f() || this.isPlayingCloseEngineVoice || SystemClock.elapsedRealtime() <= this.playingCloseEngineVoice + ((long) (i * 1000))) {
            return;
        }
        this.isPlayingCloseEngineVoice = true;
        TtsManager.u((String) ((K3ShangCheStepConfig) this.config).p201169.value, TtsGrade.ExamTip, new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.starter.K3_ShangChe_Starter.2
            @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakEnd() {
                super.onSpeakEnd();
                K3_ShangChe_Starter.this.isPlayingCloseEngineVoice = false;
                K3_ShangChe_Starter.this.playingCloseEngineVoice = SystemClock.elapsedRealtime();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.starter.K3BaseStarter, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected boolean canStart(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201100.value).booleanValue() && (z || i0.b("HaveShangCheStep", true))) {
            ShangCheStepData shangCheStepData = (ShangCheStepData) bVar.f();
            if (eVar.d().f()) {
                this.haveEngineStart = true;
                if (this.playingCloseEngineVoice == 0) {
                    if (!shangCheStepData.isDialogCloseEngine) {
                        shangCheStepData.isDialogCloseEngine = true;
                        shangCheStepData.callEvent(ShangCheStepData.EventType.showCloseEngine, shangCheStepData.shangcheMainStep, "请关闭发动机", false);
                    }
                    playCloseEngineVoice(eVar, ((Integer) ((K3ShangCheStepConfig) this.config).p201153.value).intValue());
                } else if (((Boolean) ((K3ShangCheStepConfig) this.config).p201152.value).booleanValue()) {
                    playCloseEngineVoice(eVar, ((Integer) ((K3ShangCheStepConfig) this.config).p201153.value).intValue());
                }
                return false;
            }
            if (!this.cancelCloseEngineDialog && shangCheStepData.isDialogCloseEngine) {
                this.cancelCloseEngineDialog = true;
                shangCheStepData.callEvent(ShangCheStepData.EventType.dismissCloseEngine, shangCheStepData.shangcheMainStep, "请关闭发动机", false);
            }
            if (this.haveEngineStart && ((Boolean) ((K3ShangCheStepConfig) this.config).p201154.value).booleanValue()) {
                if (!this.isPlaying && !this.playingEnd) {
                    this.isPlaying = true;
                    TtsManager.u(k0.a(R.string.exam_continue_complete_exam), TtsGrade.ExamTip, new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.starter.K3_ShangChe_Starter.1
                        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                        public void onSpeakEnd() {
                            super.onSpeakEnd();
                            K3_ShangChe_Starter.this.playingEnd = true;
                            K3_ShangChe_Starter.this.isPlaying = false;
                        }
                    });
                }
                return this.playingEnd;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.starter.K3BaseStarter, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected void playingStartVoiceAfter(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        super.playingStartVoiceAfter(eVar, examProcessor, bVar, z);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected boolean reachStartPos(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        if (z) {
            return true;
        }
        return i0.b("HaveShangCheStep", true);
    }
}
