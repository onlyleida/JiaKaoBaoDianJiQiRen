package cn.mucang.android.jiakaoyi.exam.k3.light;

import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;

/* JADX INFO: loaded from: classes2.dex */
public class LightStartVoiceChecker {
    private final K3DengGuangStepConfig config;
    private boolean isPlayingStartVoice = false;
    private boolean hasPlayingStartVoice = false;

    public LightStartVoiceChecker(K3DengGuangStepConfig k3DengGuangStepConfig) {
        this.config = k3DengGuangStepConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean checkPlayingFinish() {
        if (!this.hasPlayingStartVoice) {
            this.hasPlayingStartVoice = true;
            this.isPlayingStartVoice = true;
            String str = (String) this.config.p202100.value;
            TtsGrade ttsGrade = TtsGrade.ExamTip;
            SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.LightStartVoiceChecker.1
                @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                public void onSpeakEnd() {
                    super.onSpeakEnd();
                    LightStartVoiceChecker.this.isPlayingStartVoice = false;
                }
            };
            int i = this.config.p202100.ruleId;
            TtsManager.w(str, ttsGrade, simpleTtsListener, i, l.d(i));
        }
        return !this.isPlayingStartVoice;
    }
}
