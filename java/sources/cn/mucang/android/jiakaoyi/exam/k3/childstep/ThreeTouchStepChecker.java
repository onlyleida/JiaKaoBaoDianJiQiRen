package cn.mucang.android.jiakaoyi.exam.k3.childstep;

import android.os.SystemClock;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
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
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.TouchSensor;
import cn.mucang.android.jiakaoyi.signal.d.j.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ThreeTouchStepChecker extends ChildStepChecker<K3ShangCheStepConfig> {
    private boolean canPlayThreeTouchVoice;
    public boolean countError;
    private TouchSensor firstTouchSensor;
    private int lastTouchSensor;
    public boolean orderError;
    public ArrayList<Integer> orderList;
    private TouchSensor playingSensor;
    private long playingThreeTouchVoiceEndTime;
    private ShangCheStepData shangCheStepData;
    public List<TouchSensor> touchSensorList;

    /* JADX WARN: Multi-variable type inference failed */
    public ThreeTouchStepChecker(ShangCheStepData shangCheStepData, K3ShangCheStepConfig k3ShangCheStepConfig, ChildStepData childStepData, c.b bVar) {
        super(k3ShangCheStepConfig, childStepData, bVar);
        this.touchSensorList = new ArrayList();
        this.canPlayThreeTouchVoice = true;
        this.orderList = new ArrayList<>();
        this.orderError = false;
        this.countError = false;
        this.shangCheStepData = shangCheStepData;
        if (((Integer) k3ShangCheStepConfig.p201129.value).intValue() != 1) {
            this.orderList.add(1);
            this.orderList.add(2);
            this.orderList.add(3);
            return;
        }
        String str = (String) k3ShangCheStepConfig.p201130.value;
        if (n0.e(str)) {
            return;
        }
        for (char c : str.toCharArray()) {
            int i = c - '0';
            if (i >= 1 && i <= 3) {
                this.orderList.add(Integer.valueOf(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void callbackDialog() {
        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201149.value).booleanValue()) {
            ChildStepData childStepData = this.childStepData;
            if (childStepData.isShowDialog) {
                return;
            }
            childStepData.isShowDialog = true;
            this.shangCheStepData.callEvent(ShangCheStepData.EventType.startThreeTouch, childStepData, "请开始三摸", false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkOrder() {
        if (((Integer) ((K3ShangCheStepConfig) this.config).p201129.value).intValue() != 1 || this.orderList.isEmpty() || this.touchSensorList.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.touchSensorList.size() && i < this.orderList.size(); i++) {
            if (this.touchSensorList.get(i).id + 1 != this.orderList.get(i).intValue()) {
                this.orderError = true;
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void playThreeTouchTone(TouchSensor touchSensor) {
        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201116.value).booleanValue()) {
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
                stringValue = ((K3ShangCheStepConfig) this.config).p201114;
            } else if (touchSensor == TouchSensor.OutsideMirror) {
                stringValue = ((K3ShangCheStepConfig) this.config).p201113;
            } else if (touchSensor == TouchSensor.InsideMirror) {
                stringValue = ((K3ShangCheStepConfig) this.config).p201112;
            }
            if (stringValue != null) {
                String str = (String) stringValue.value;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.ThreeTouchStepChecker.2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                    public void onSpeakEnd() {
                        super.onSpeakEnd();
                        ThreeTouchStepChecker threeTouchStepChecker = ThreeTouchStepChecker.this;
                        threeTouchStepChecker.canPlayThreeTouchVoice = ((Boolean) ((K3ShangCheStepConfig) threeTouchStepChecker.config).p201150.value).booleanValue();
                        ThreeTouchStepChecker.this.playingThreeTouchVoiceEndTime = SystemClock.elapsedRealtime();
                    }
                };
                int i = stringValue.ruleId;
                TtsManager.w(str, ttsGrade, simpleTtsListener, i, l.d(i));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
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
                    if (!this.touchSensorList.contains(touchSensor)) {
                        playThreeTouchTone(touchSensor);
                    }
                    this.touchSensorList.add(touchSensor);
                }
                if (!((Boolean) ((K3ShangCheStepConfig) this.config).p201150.value).booleanValue()) {
                    break;
                }
                playThreeTouchTone(touchSensor);
                break;
            }
        }
        this.lastTouchSensor = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepChecker
    public void onChange(e eVar, b bVar, ExamProcessor examProcessor) {
        if (this.childStepData.isEnd) {
            if (this.orderList.size() > 0) {
                this.countError = this.touchSensorList.size() != this.orderList.size();
                return;
            }
            return;
        }
        if (!this.childStepData.isStart) {
            if (!((Boolean) ((K3ShangCheStepConfig) this.config).p201122.value).booleanValue() || this.shangCheStepData.engineType != 1) {
                this.childStepData.setStart(((K3ShangCheStepConfig) this.config).p201137);
                callbackDialog();
                return;
            }
            ChildStepData childStepData = this.childStepData;
            if (!childStepData.isPlayStartVoice) {
                childStepData.isPlayStartVoice = true;
                String str = (String) ((K3ShangCheStepConfig) this.config).p201120.value;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.ThreeTouchStepChecker.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                    public void onSpeakEnd() {
                        super.onSpeakEnd();
                        ChildStepData childStepData2 = ThreeTouchStepChecker.this.childStepData;
                        childStepData2.isPlayStartVoice = false;
                        childStepData2.playingStartVoiceEnd = SystemClock.elapsedRealtime();
                        if (((Integer) ((K3ShangCheStepConfig) ThreeTouchStepChecker.this.config).p201151.value).intValue() == 0) {
                            ThreeTouchStepChecker threeTouchStepChecker = ThreeTouchStepChecker.this;
                            threeTouchStepChecker.childStepData.setStart(((K3ShangCheStepConfig) threeTouchStepChecker.config).p201115);
                            ThreeTouchStepChecker.this.callbackDialog();
                        }
                    }
                };
                T t = this.config;
                TtsManager.w(str, ttsGrade, simpleTtsListener, ((K3ShangCheStepConfig) t).p201120.ruleId, l.d(((K3ShangCheStepConfig) t).p201120.ruleId));
            }
            if (((Integer) ((K3ShangCheStepConfig) this.config).p201151.value).intValue() == 1) {
                this.childStepData.setStart(((K3ShangCheStepConfig) this.config).p201115);
                callbackDialog();
                return;
            }
            return;
        }
        threeTouch(eVar.d());
        checkOrder();
        if (this.orderError) {
            this.childStepData.setFinish();
            this.childStepData.setEnd();
        } else if (((Integer) ((K3ShangCheStepConfig) this.config).p201129.value).intValue() == 1) {
            if (this.touchSensorList.size() == this.orderList.size()) {
                this.childStepData.setFinish();
                this.childStepData.setEnd();
            }
        } else if (this.touchSensorList.contains(TouchSensor.Seat) && this.touchSensorList.contains(TouchSensor.OutsideMirror) && this.touchSensorList.contains(TouchSensor.InsideMirror)) {
            this.childStepData.setFinish();
            this.childStepData.setEnd();
        }
        if (SystemClock.elapsedRealtime() - this.childStepData.startTime > ((Integer) ((K3ShangCheStepConfig) this.config).p201115.value).intValue() * 1000) {
            ChildStepData childStepData2 = this.childStepData;
            childStepData2.isTimeOut = true;
            childStepData2.setEnd();
        }
        if (this.childStepData.isEnd) {
            if (this.orderList.size() > 0) {
                this.countError = this.touchSensorList.size() != this.orderList.size();
            }
            this.shangCheStepData.callEvent(ShangCheStepData.EventType.dismissThreeTouch, this.childStepData, "取消开始三摸弹窗", false);
        }
    }
}
