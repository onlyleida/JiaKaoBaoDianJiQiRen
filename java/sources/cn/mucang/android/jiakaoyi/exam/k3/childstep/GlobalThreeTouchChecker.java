package cn.mucang.android.jiakaoyi.exam.k3.childstep;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.TouchSensor;
import cn.mucang.android.jiakaoyi.signal.d.j.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalThreeTouchChecker {
    private K3ShangCheStepConfig config;
    private TouchSensor firstTouchSensor;
    private boolean isRepeatPlay;
    private int lastTouchSensor;
    private TouchSensor playingSensor;
    private long playingThreeTouchVoiceEndTime;
    public List<TouchSensor> touchSensorList = new ArrayList();
    private boolean canPlayThreeTouchVoice = true;

    public GlobalThreeTouchChecker(K3ShangCheStepConfig k3ShangCheStepConfig, boolean z) {
        this.config = k3ShangCheStepConfig;
        this.isRepeatPlay = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void playThreeTouchTone(TouchSensor touchSensor) {
        if (((Boolean) this.config.p201116.value).booleanValue()) {
            if (this.playingSensor != touchSensor) {
                this.canPlayThreeTouchVoice = true;
                this.playingThreeTouchVoiceEndTime = 0L;
            }
            if (!this.canPlayThreeTouchVoice || SystemClock.elapsedRealtime() <= this.playingThreeTouchVoiceEndTime + 1000) {
                return;
            }
            this.playingSensor = touchSensor;
            this.canPlayThreeTouchVoice = true;
            StringValue stringValue = null;
            if (touchSensor == TouchSensor.Seat) {
                stringValue = this.config.p201114;
            } else if (touchSensor == TouchSensor.OutsideMirror) {
                stringValue = this.config.p201113;
            } else if (touchSensor == TouchSensor.InsideMirror) {
                stringValue = this.config.p201112;
            }
            if (stringValue != null) {
                String str = (String) stringValue.value;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.GlobalThreeTouchChecker.1
                    @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                    public void onSpeakEnd() {
                        super.onSpeakEnd();
                        GlobalThreeTouchChecker globalThreeTouchChecker = GlobalThreeTouchChecker.this;
                        globalThreeTouchChecker.canPlayThreeTouchVoice = globalThreeTouchChecker.isRepeatPlay;
                        GlobalThreeTouchChecker.this.playingThreeTouchVoiceEndTime = SystemClock.elapsedRealtime();
                    }
                };
                int i = stringValue.ruleId;
                TtsManager.w(str, ttsGrade, simpleTtsListener, i, l.d(i));
            }
        }
    }

    private void threeTouch(CarModel carModel) {
        int i = carModel.z;
        for (TouchSensor touchSensor : TouchSensor.values()) {
            if (a.c(this.lastTouchSensor, touchSensor.id) && a.d(i, touchSensor.id)) {
                if (this.firstTouchSensor == null) {
                    this.firstTouchSensor = touchSensor;
                }
                if (this.touchSensorList.size() > 0) {
                    List<TouchSensor> list = this.touchSensorList;
                    if (list.get(list.size() - 1) != touchSensor) {
                        if (!this.touchSensorList.contains(touchSensor)) {
                            playThreeTouchTone(touchSensor);
                        }
                        this.touchSensorList.add(touchSensor);
                    }
                } else {
                    playThreeTouchTone(touchSensor);
                    this.touchSensorList.add(touchSensor);
                }
                if (!this.isRepeatPlay) {
                    break;
                }
                playThreeTouchTone(touchSensor);
                break;
            }
        }
        this.lastTouchSensor = i;
    }

    public void check(e eVar, b bVar, ExamProcessor examProcessor) {
        threeTouch(eVar.d());
    }
}
