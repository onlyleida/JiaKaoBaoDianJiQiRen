package cn.mucang.android.jiakaoyi.exam.k3.rule.shangche;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepData;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.TeachingProcessor;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ShangChe_Step1 extends BaseFinishEvent<K3ShangCheStepConfig> {
    private boolean isEnd;
    private boolean isPlaying;
    private boolean playingEnd;

    public K3_ShangChe_Step1(K3ShangCheStepConfig k3ShangCheStepConfig, Deduct deduct) {
        super(k3ShangCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean checkIsEnd(ExamProcessor examProcessor, b bVar) {
        ShangCheStepData shangCheStepData = (ShangCheStepData) bVar.f();
        if (shangCheStepData.engineType != 2 || !AppUtils.k()) {
            ChildStepData childStepData = shangCheStepData.shangcheMainStep;
            return childStepData.isEnd && examProcessor.i - childStepData.endTime > ((long) (((Integer) ((K3ShangCheStepConfig) this.config).p201119.value).intValue() * 1000));
        }
        TeachingProcessor teachingProcessor = shangCheStepData.teachingProcessor;
        if (teachingProcessor != null) {
            return teachingProcessor.isEnd();
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.TurnLight);
        examProcessor.n.c(ConflictSignal.TurnLightError);
        examProcessor.n.c(ConflictSignal.TurnLightLongDistance);
        examProcessor.n.c(ConflictSignal.TurnLightLongTime);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3ShangCheStepConfig) this.config).p201102;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!this.isEnd) {
            this.isEnd = checkIsEnd(examProcessor, bVar);
        }
        if (!((Boolean) ((K3ShangCheStepConfig) this.config).p201121.value).booleanValue() || !this.isEnd) {
            return this.isEnd;
        }
        if (!this.isPlaying && !this.playingEnd) {
            this.isPlaying = true;
            StringValue stringValueFinishVoiceTips = finishVoiceTips();
            String str = (String) stringValueFinishVoiceTips.value;
            TtsGrade ttsGrade = TtsGrade.ExamTip;
            SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.rule.shangche.K3_ShangChe_Step1.1
                @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                public void onSpeakEnd() {
                    super.onSpeakEnd();
                    K3_ShangChe_Step1.this.playingEnd = true;
                    K3_ShangChe_Step1.this.isPlaying = false;
                }
            };
            int i = stringValueFinishVoiceTips.ruleId;
            TtsManager.w(str, ttsGrade, simpleTtsListener, i, l.d(i));
        }
        return this.playingEnd;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return false;
    }
}
