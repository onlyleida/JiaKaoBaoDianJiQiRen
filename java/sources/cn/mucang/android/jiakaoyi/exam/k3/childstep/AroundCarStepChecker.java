package cn.mucang.android.jiakaoyi.exam.k3.childstep;

import android.os.SystemClock;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.framework.utils.g0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.AroundCarSensor;
import cn.mucang.android.jiakaoyi.signal.d.j.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AroundCarStepChecker extends ChildStepChecker<K3ShangCheStepConfig> {
    public boolean aroundCountError;
    public boolean aroundOrderError;
    public List<Integer> aroundSensorOrders;
    private int aroundSize;
    public AroundCarSensor aroundStartSensor;
    public boolean[] aroundValue;
    private boolean canPlayAroundStartVoice;
    private boolean canPlayAroundVoice;
    private boolean canPlayOpenDoorVoice;
    public int closeDoorCount;
    public boolean finishAround;
    private boolean hadOpenDoor;
    private int lastAroundCarSensor;
    public boolean lastDoorClose;
    public int openDoorCount;
    private int[] orderArr;
    private long playAroundStartVoiceEndTime;
    private long playingAroundVoiceEndTime;
    private long playingOpenDoorEndTime;
    private AroundCarSensor playingSensor;
    private ShangCheStepData shangCheStepData;
    public boolean startAround;

    /* JADX WARN: Multi-variable type inference failed */
    public AroundCarStepChecker(ShangCheStepData shangCheStepData, K3ShangCheStepConfig k3ShangCheStepConfig, ChildStepData childStepData, c.b bVar) {
        super(k3ShangCheStepConfig, childStepData, bVar);
        this.finishAround = false;
        this.aroundOrderError = false;
        this.aroundCountError = false;
        int length = AroundCarSensor.values().length;
        this.aroundSize = length;
        this.aroundStartSensor = null;
        this.aroundValue = new boolean[length];
        this.aroundSensorOrders = new ArrayList();
        this.startAround = false;
        this.canPlayAroundVoice = true;
        this.canPlayOpenDoorVoice = true;
        this.lastDoorClose = false;
        this.closeDoorCount = 0;
        this.openDoorCount = 0;
        this.canPlayAroundStartVoice = true;
        this.shangCheStepData = shangCheStepData;
        if (((Integer) k3ShangCheStepConfig.p201103.value).intValue() != 4) {
            if (((Integer) k3ShangCheStepConfig.p201103.value).intValue() == 0) {
                this.orderArr = new int[2];
                this.orderArr = new int[]{3, 1};
                return;
            } else {
                if (((Integer) k3ShangCheStepConfig.p201103.value).intValue() == 1) {
                    this.orderArr = new int[4];
                    this.orderArr = new int[]{3, 4, 1, 2};
                    return;
                }
                return;
            }
        }
        String str = (String) k3ShangCheStepConfig.p201127.value;
        if (n0.e(str)) {
            return;
        }
        this.orderArr = new int[str.length()];
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            this.orderArr[i] = charArray[i] - '0';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void aroundCar(e eVar) {
        int i = eVar.d().y;
        for (AroundCarSensor aroundCarSensor : AroundCarSensor.values()) {
            if (a.c(this.lastAroundCarSensor, aroundCarSensor.id) && a.d(i, aroundCarSensor.id)) {
                if (this.aroundStartSensor == null) {
                    this.aroundStartSensor = aroundCarSensor;
                }
                if (this.aroundSensorOrders.size() > 0) {
                    List<Integer> list = this.aroundSensorOrders;
                    int iIntValue = list.get(list.size() - 1).intValue();
                    int i2 = aroundCarSensor.id;
                    if (iIntValue != i2) {
                        if (!havePressSensor(i2)) {
                            playAroundTone(aroundCarSensor);
                        }
                        this.aroundSensorOrders.add(Integer.valueOf(aroundCarSensor.id));
                    }
                } else {
                    if (!havePressSensor(aroundCarSensor.id)) {
                        playAroundTone(aroundCarSensor);
                    }
                    this.aroundSensorOrders.add(Integer.valueOf(aroundCarSensor.id));
                }
                this.aroundValue[aroundCarSensor.id - 1] = true;
                this.startAround = true;
                if (!((Boolean) ((K3ShangCheStepConfig) this.config).p201144.value).booleanValue()) {
                    break;
                }
                playAroundTone(aroundCarSensor);
                break;
            }
        }
        this.lastAroundCarSensor = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void callbackDialog() {
        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201140.value).booleanValue()) {
            ChildStepData childStepData = this.childStepData;
            if (childStepData.isShowDialog) {
                return;
            }
            childStepData.isShowDialog = true;
            t.a("AroundCarStep", "请开始绕车一周 弹窗");
            this.shangCheStepData.callEvent(ShangCheStepData.EventType.startAroundCar, this.childStepData, "请开始绕车一周", false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkAroundCar(e eVar) {
        if (this.aroundOrderError) {
            return;
        }
        int iIntValue = ((Integer) ((K3ShangCheStepConfig) this.config).p201103.value).intValue();
        if (iIntValue == 0) {
            checkOrder();
            return;
        }
        if (iIntValue == 1) {
            checkOrder();
            return;
        }
        if (iIntValue != 2) {
            if (iIntValue != 3 && iIntValue == 4) {
                checkOrder();
                return;
            }
            return;
        }
        if (this.aroundSensorOrders.isEmpty() || this.aroundSensorOrders.size() <= 1) {
            return;
        }
        for (int i = 1; i < this.aroundSensorOrders.size(); i++) {
            int iIntValue2 = this.aroundSensorOrders.get(i).intValue();
            int iIntValue3 = this.aroundSensorOrders.get(i - 1).intValue();
            if (iIntValue2 == 1) {
                if (iIntValue3 != 4) {
                    this.aroundOrderError = true;
                    return;
                }
            } else if (iIntValue2 != iIntValue3 + 1) {
                this.aroundOrderError = true;
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkAroundFinish(e eVar) {
        if (this.finishAround) {
            return;
        }
        int iIntValue = ((Integer) ((K3ShangCheStepConfig) this.config).p201128.value).intValue();
        if (iIntValue == 0) {
            if (this.aroundOrderError) {
                this.finishAround = true;
                return;
            }
            if (this.orderArr != null) {
                if (this.aroundSensorOrders.size() == this.orderArr.length) {
                    this.finishAround = true;
                    return;
                }
                return;
            }
            boolean[] zArr = this.aroundValue;
            if (zArr[0] && zArr[1] && zArr[2] && zArr[3]) {
                this.finishAround = true;
                return;
            }
            return;
        }
        boolean z = eVar.d().j;
        if (this.lastDoorClose ^ z) {
            if (z) {
                this.closeDoorCount++;
            } else {
                this.openDoorCount++;
            }
            if (iIntValue == 1) {
                if (this.openDoorCount == 1) {
                    this.finishAround = true;
                }
            } else if (iIntValue == 2) {
                if (this.openDoorCount == 2) {
                    this.finishAround = true;
                }
            } else if (iIntValue == 3 && this.closeDoorCount == 2) {
                this.finishAround = true;
            }
        }
    }

    private void checkCountError() {
        if (this.orderArr != null) {
            if (this.aroundSensorOrders.size() != this.orderArr.length) {
                this.aroundCountError = true;
                return;
            }
            return;
        }
        boolean[] zArr = this.aroundValue;
        if (zArr[0] && zArr[1] && zArr[2] && zArr[3]) {
            return;
        }
        this.aroundCountError = true;
    }

    private void checkOrder() {
        if (this.orderArr == null || this.aroundSensorOrders.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.aroundSensorOrders.size() && i < this.orderArr.length; i++) {
            if (this.aroundSensorOrders.get(i).intValue() != this.orderArr[i]) {
                this.aroundOrderError = true;
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkPlayingAroundStartVoice(e eVar) {
        if (this.startAround || !((Boolean) ((K3ShangCheStepConfig) this.config).p201142.value).booleanValue() || !this.canPlayAroundStartVoice || SystemClock.elapsedRealtime() <= this.playAroundStartVoiceEndTime + 1000) {
            return;
        }
        this.canPlayAroundStartVoice = false;
        String str = (String) ((K3ShangCheStepConfig) this.config).p201141.value;
        TtsGrade ttsGrade = TtsGrade.ExamTip;
        SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.AroundCarStepChecker.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakEnd() {
                super.onSpeakEnd();
                AroundCarStepChecker aroundCarStepChecker = AroundCarStepChecker.this;
                aroundCarStepChecker.canPlayAroundStartVoice = ((Boolean) ((K3ShangCheStepConfig) aroundCarStepChecker.config).p201143.value).booleanValue();
                AroundCarStepChecker.this.playAroundStartVoiceEndTime = SystemClock.elapsedRealtime();
            }
        };
        T t = this.config;
        TtsManager.w(str, ttsGrade, simpleTtsListener, ((K3ShangCheStepConfig) t).p201141.ruleId, l.d(((K3ShangCheStepConfig) t).p201141.ruleId));
    }

    private boolean havePressSensor(int i) {
        Iterator<Integer> it = this.aroundSensorOrders.iterator();
        while (it.hasNext()) {
            if (it.next().intValue() == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void playAroundTone(final AroundCarSensor aroundCarSensor) {
        if (this.playingSensor != aroundCarSensor) {
            this.canPlayAroundVoice = true;
            this.playingAroundVoiceEndTime = 0L;
        }
        if (!this.canPlayAroundVoice || SystemClock.elapsedRealtime() <= this.playingAroundVoiceEndTime + 1000) {
            return;
        }
        this.playingSensor = aroundCarSensor;
        this.canPlayAroundVoice = false;
        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201168.value).booleanValue()) {
            g0.c(R.raw.dingdong, new b<Boolean>() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.AroundCarStepChecker.4
                /* JADX WARN: Multi-variable type inference failed */
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public void callback(Boolean bool) {
                    if (((Boolean) ((K3ShangCheStepConfig) AroundCarStepChecker.this.config).p201108.value).booleanValue()) {
                        AroundCarStepChecker.this.playSensorVoice(aroundCarSensor);
                        return;
                    }
                    AroundCarStepChecker aroundCarStepChecker = AroundCarStepChecker.this;
                    aroundCarStepChecker.canPlayAroundVoice = ((Boolean) ((K3ShangCheStepConfig) aroundCarStepChecker.config).p201144.value).booleanValue();
                    AroundCarStepChecker.this.playingAroundVoiceEndTime = SystemClock.elapsedRealtime();
                }
            });
        } else {
            playSensorVoice(aroundCarSensor);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void playingOpenDoorVoice(e eVar) {
        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201126.value).booleanValue()) {
            if (eVar.d().j) {
                if (this.lastDoorClose) {
                    return;
                }
                TtsManager.r(k0.a(R.string.exam_close_car_door), TtsGrade.ExamTip);
            } else if (this.lastDoorClose && this.canPlayOpenDoorVoice && SystemClock.elapsedRealtime() > this.playingOpenDoorEndTime + 1000) {
                this.canPlayOpenDoorVoice = false;
                String str = (String) ((K3ShangCheStepConfig) this.config).p201145.value;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.AroundCarStepChecker.3
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                    public void onSpeakEnd() {
                        super.onSpeakEnd();
                        AroundCarStepChecker aroundCarStepChecker = AroundCarStepChecker.this;
                        aroundCarStepChecker.canPlayOpenDoorVoice = ((Boolean) ((K3ShangCheStepConfig) aroundCarStepChecker.config).p201146.value).booleanValue();
                        AroundCarStepChecker.this.playingOpenDoorEndTime = SystemClock.elapsedRealtime();
                    }
                };
                T t = this.config;
                TtsManager.w(str, ttsGrade, simpleTtsListener, ((K3ShangCheStepConfig) t).p201145.ruleId, l.d(((K3ShangCheStepConfig) t).p201145.ruleId));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepChecker
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        if (this.childStepData.isEnd) {
            return;
        }
        boolean z = eVar.d().j;
        if (this.childStepData.isStart) {
            if (!z) {
                this.hadOpenDoor = true;
            }
            if (!this.hadOpenDoor) {
                checkPlayingAroundStartVoice(eVar);
            }
            playingOpenDoorVoice(eVar);
            aroundCar(eVar);
            checkAroundCar(eVar);
            checkAroundFinish(eVar);
            if (this.finishAround) {
                checkCountError();
                this.childStepData.setFinish();
                this.childStepData.setEnd();
            }
            if (SystemClock.elapsedRealtime() - this.childStepData.startTime > ((Integer) ((K3ShangCheStepConfig) this.config).p201109.value).intValue() * 1000) {
                ChildStepData childStepData = this.childStepData;
                childStepData.isTimeOut = true;
                childStepData.setEnd();
            }
            if (this.childStepData.isEnd) {
                this.shangCheStepData.callEvent(ShangCheStepData.EventType.dismissAroundCar, this.childStepData, "取消开始绕车一周弹窗", false);
            }
        } else {
            t.a("AroundCarStep", "检测开始");
            if (((Boolean) ((K3ShangCheStepConfig) this.config).p201142.value).booleanValue() && this.shangCheStepData.engineType == 1) {
                if (this.canPlayAroundStartVoice) {
                    this.canPlayAroundStartVoice = false;
                    String str = (String) ((K3ShangCheStepConfig) this.config).p201141.value;
                    TtsGrade ttsGrade = TtsGrade.ExamTip;
                    SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.AroundCarStepChecker.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                        public void onSpeakEnd() {
                            super.onSpeakEnd();
                            AroundCarStepChecker aroundCarStepChecker = AroundCarStepChecker.this;
                            aroundCarStepChecker.canPlayAroundStartVoice = ((Boolean) ((K3ShangCheStepConfig) aroundCarStepChecker.config).p201143.value).booleanValue();
                            AroundCarStepChecker.this.playingAroundVoiceEndTime = SystemClock.elapsedRealtime();
                            if (((Integer) ((K3ShangCheStepConfig) AroundCarStepChecker.this.config).p201148.value).intValue() == 0) {
                                AroundCarStepChecker aroundCarStepChecker2 = AroundCarStepChecker.this;
                                aroundCarStepChecker2.childStepData.setStart(((K3ShangCheStepConfig) aroundCarStepChecker2.config).p201137);
                                AroundCarStepChecker.this.callbackDialog();
                            }
                        }
                    };
                    T t = this.config;
                    TtsManager.w(str, ttsGrade, simpleTtsListener, ((K3ShangCheStepConfig) t).p201141.ruleId, l.d(((K3ShangCheStepConfig) t).p201141.ruleId));
                }
                if (((Integer) ((K3ShangCheStepConfig) this.config).p201148.value).intValue() == 1) {
                    this.childStepData.setStart(((K3ShangCheStepConfig) this.config).p201137);
                    callbackDialog();
                }
            } else {
                this.childStepData.setStart(((K3ShangCheStepConfig) this.config).p201137);
                callbackDialog();
            }
        }
        this.lastDoorClose = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void playSensorVoice(AroundCarSensor aroundCarSensor) {
        StringValue stringValue;
        if (aroundCarSensor == AroundCarSensor.LeftFront) {
            stringValue = ((K3ShangCheStepConfig) this.config).p201104;
        } else if (aroundCarSensor == AroundCarSensor.LeftBack) {
            stringValue = ((K3ShangCheStepConfig) this.config).p201105;
        } else if (aroundCarSensor == AroundCarSensor.RightBack) {
            stringValue = ((K3ShangCheStepConfig) this.config).p201106;
        } else {
            stringValue = aroundCarSensor == AroundCarSensor.RightFront ? ((K3ShangCheStepConfig) this.config).p201107 : null;
        }
        if (stringValue != null) {
            String str = (String) stringValue.value;
            TtsGrade ttsGrade = TtsGrade.ExamTip;
            SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.childstep.AroundCarStepChecker.5
                /* JADX WARN: Multi-variable type inference failed */
                @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                public void onSpeakEnd() {
                    super.onSpeakEnd();
                    AroundCarStepChecker aroundCarStepChecker = AroundCarStepChecker.this;
                    aroundCarStepChecker.canPlayAroundVoice = ((Boolean) ((K3ShangCheStepConfig) aroundCarStepChecker.config).p201144.value).booleanValue();
                    AroundCarStepChecker.this.playingAroundVoiceEndTime = SystemClock.elapsedRealtime();
                }
            };
            int i = stringValue.ruleId;
            TtsManager.w(str, ttsGrade, simpleTtsListener, i, l.d(i));
        }
    }
}
