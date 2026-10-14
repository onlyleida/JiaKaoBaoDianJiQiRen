package cn.mucang.android.jiakaoyi.exam.k3.childstep;

import android.os.SystemClock;
import cn.mucang.android.core.utils.n0;
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
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class PlayingLineStepChecker extends ChildStepChecker<K3ShangCheStepConfig> {
    private boolean isPlayingLineVoice;
    private long playingLineVoiceEndTime;
    private ShangCheStepData shangCheStepData;

    public PlayingLineStepChecker(ShangCheStepData shangCheStepData, K3ShangCheStepConfig k3ShangCheStepConfig, ChildStepData childStepData, c.b bVar) {
        super(k3ShangCheStepConfig, childStepData, bVar);
        this.shangCheStepData = shangCheStepData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepChecker
    public void onChange(e eVar, b bVar, ExamProcessor examProcessor) {
        if (this.childStepData.isEnd) {
            return;
        }
        if (!this.childStepData.isStart) {
            this.childStepData.setStart(null);
        }
        if (!this.childStepData.finish) {
            String str = examProcessor.f3104a.m.routeName;
            String str2 = (String) ((K3ShangCheStepConfig) this.config).p201159.value;
            if (n0.e(str)) {
                str = "";
            }
            String strReplace = str2.replace(Marker.ANY_MARKER, str);
            if (!n0.g(strReplace)) {
                this.childStepData.setFinish();
            } else if (!this.isPlayingLineVoice && this.playingLineVoiceEndTime == 0) {
                this.isPlayingLineVoice = true;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.PlayingLineStepChecker.1
                    @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                    public void onSpeakEnd() {
                        super.onSpeakEnd();
                        PlayingLineStepChecker.this.isPlayingLineVoice = false;
                        PlayingLineStepChecker.this.playingLineVoiceEndTime = SystemClock.elapsedRealtime();
                        PlayingLineStepChecker.this.childStepData.setFinish();
                    }
                };
                T t = this.config;
                TtsManager.w(strReplace, ttsGrade, simpleTtsListener, ((K3ShangCheStepConfig) t).p201159.ruleId, l.d(((K3ShangCheStepConfig) t).p201159.ruleId));
            }
        }
        if (!this.childStepData.finish || this.childStepData.isEnd) {
            return;
        }
        this.childStepData.setEnd();
    }
}
