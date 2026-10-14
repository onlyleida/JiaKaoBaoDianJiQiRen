package cn.mucang.android.jiakaoyi.exam.k3.data;

import android.os.SystemClock;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.AroundCarStepChecker;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepChecker;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepData;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.FingerPrintStepChecker;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.GlobalThreeTouchChecker;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.PlayingLineStepChecker;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ThreeTouchStepChecker;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.TouchSensor;
import java.util.ArrayDeque;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ShangCheStepData extends K3BaseStepData<K3ShangCheStepConfig> {
    public AroundCarStepChecker aroundCarStepChecker;
    public ChildStepData aroundStep;
    private boolean canPlayOpenEngineVoice;
    private ArrayDeque<ChildStepChecker> checkerDeque;
    private ChildStepChecker currentStepChecker;
    public ChildStepData fingerPrintStep;
    public FingerPrintStepChecker fingerPrintStepChecker;
    private K3GlobalStepConfig globalStepConfig;
    private GlobalThreeTouchChecker globalThreeTouchChecker;
    private final boolean haveLightSimulate;
    public boolean isDialogCloseEngine;
    public boolean isDialogManualEnd;
    public boolean isDialogOpenEngine;
    public boolean isFinishGlobalThreeTouch;
    public boolean isInit;
    public boolean isInitChecker;
    private long pauseTime;
    public ChildStepData playingLineStep;
    public PlayingLineStepChecker playingLineStepChecker;
    private long playingOpenEngineVoiceEndTime;
    private ShangCheEventCallBack shangCheEventCallBack;
    public ChildStepData shangcheMainStep;
    public ChildStepData thereTouchStep;
    public ThreeTouchStepChecker threeTouchStepChecker;

    public enum EventType {
        showCloseEngine,
        dismissCloseEngine,
        showManualGoExam,
        dismissManualGoExam,
        showOpenEngine,
        dismissOpenEngine,
        startFingerPrint,
        dismissFingerPrint,
        startAroundCar,
        dismissAroundCar,
        startThreeTouch,
        dismissThreeTouch,
        startLightSimulate,
        dismissLightSimulate
    }

    public interface ShangCheEventCallBack {
        void onEvent(EventType eventType, ChildStepData childStepData, String str, boolean z);
    }

    public ShangCheStepData(K3ShangCheStepConfig k3ShangCheStepConfig) {
        super(k3ShangCheStepConfig);
        this.isInit = false;
        this.isInitChecker = false;
        this.isDialogCloseEngine = false;
        this.isDialogManualEnd = false;
        this.isDialogOpenEngine = false;
        this.canPlayOpenEngineVoice = true;
        this.shangcheMainStep = new ChildStepData(ChildStepData.ShangCheStep, "上车准备", k3ShangCheStepConfig.p201119);
        this.haveLightSimulate = i0.b("HaveLightSimulateStep", true);
        LiveBus.d(ShangCheStepData.class).l(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkShangCheFinish(e eVar) {
        int iIntValue = ((Integer) ((K3ShangCheStepConfig) this.config).p201118.value).intValue();
        if (this.shangcheMainStep.finish) {
            return;
        }
        if (iIntValue == 0) {
            if (eVar.d().f5266d) {
                this.shangcheMainStep.finish = true;
                this.shangcheMainStep.finishTime = SystemClock.elapsedRealtime();
                return;
            }
            return;
        }
        if (iIntValue == 1) {
            if (this.checkerDeque.isEmpty()) {
                ChildStepChecker childStepChecker = this.currentStepChecker;
                if (childStepChecker != null ? childStepChecker.childStepData.isEnd : true) {
                    this.shangcheMainStep.finish = true;
                    this.shangcheMainStep.finishTime = SystemClock.elapsedRealtime();
                    return;
                }
                return;
            }
            return;
        }
        if (iIntValue == 2) {
            if (eVar.d().f()) {
                this.shangcheMainStep.finish = true;
                this.shangcheMainStep.finishTime = SystemClock.elapsedRealtime();
                return;
            }
            return;
        }
        if (iIntValue == 3) {
            if (eVar.d().f5269g) {
                this.shangcheMainStep.finish = true;
                this.shangcheMainStep.finishTime = SystemClock.elapsedRealtime();
                return;
            }
            return;
        }
        if (iIntValue == 4) {
            if (eVar.d().l) {
                this.shangcheMainStep.finish = true;
                this.shangcheMainStep.finishTime = SystemClock.elapsedRealtime();
                return;
            }
            return;
        }
        if (iIntValue == 5 && this.checkerDeque.isEmpty()) {
            ChildStepChecker childStepChecker2 = this.currentStepChecker;
            if (!(childStepChecker2 != null ? childStepChecker2.childStepData.isEnd : true) || this.isDialogManualEnd) {
                return;
            }
            this.isDialogManualEnd = true;
            callEvent(EventType.showManualGoExam, this.shangcheMainStep, "请手动点击继续考试", false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean checkStartLightSimulate(ExamProcessor examProcessor) {
        K3GlobalStepConfig k3GlobalStepConfig;
        boolean z;
        if (this.haveLightSimulate) {
            if (this.globalStepConfig == null) {
                this.globalStepConfig = (K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global);
            }
            if (!this.shangcheMainStep.isFinishLightExam && (k3GlobalStepConfig = this.globalStepConfig) != null && !((Boolean) k3GlobalStepConfig.p200181.value).booleanValue()) {
                OptionsValue optionsValue = ((K3ShangCheStepConfig) this.config).p201164;
                if (((Integer) optionsValue.value).intValue() == 1) {
                    z = this.currentStepChecker instanceof FingerPrintStepChecker;
                } else if (((Integer) optionsValue.value).intValue() == 2) {
                    z = this.currentStepChecker instanceof ThreeTouchStepChecker;
                } else if (((Integer) optionsValue.value).intValue() == 3) {
                    z = this.currentStepChecker instanceof AroundCarStepChecker;
                } else {
                    z = ((Integer) optionsValue.value).intValue() == 4 ? this.currentStepChecker instanceof PlayingLineStepChecker : false;
                }
                if (z) {
                    this.shangcheMainStep.isPause = true;
                    this.pauseTime = examProcessor.i;
                    callEvent(EventType.startLightSimulate, this.shangcheMainStep, "开始灯光模拟考试", true);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void shangCheFinish(e eVar) {
        if (this.shangcheMainStep.finish) {
            if (!((Boolean) ((K3ShangCheStepConfig) this.config).p201155.value).booleanValue()) {
                this.shangcheMainStep.setEnd();
            } else if (!eVar.d().f()) {
                if (!this.isDialogOpenEngine) {
                    this.isDialogOpenEngine = true;
                    this.isDialogManualEnd = false;
                    callEvent(EventType.showOpenEngine, this.shangcheMainStep, "请启动发动机", false);
                }
                if (this.canPlayOpenEngineVoice && SystemClock.elapsedRealtime() > this.playingOpenEngineVoiceEndTime + ((long) (((Integer) ((K3ShangCheStepConfig) this.config).p201157.value).intValue() * 1000))) {
                    this.canPlayOpenEngineVoice = false;
                    TtsManager.u(k0.a(R.string.exam_open_engine), TtsGrade.ExamTip, new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData.2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                        public void onSpeakEnd() {
                            super.onSpeakEnd();
                            ShangCheStepData shangCheStepData = ShangCheStepData.this;
                            shangCheStepData.canPlayOpenEngineVoice = ((Boolean) ((K3ShangCheStepConfig) shangCheStepData.config).p201156.value).booleanValue();
                            ShangCheStepData.this.playingOpenEngineVoiceEndTime = SystemClock.elapsedRealtime();
                        }
                    });
                }
            }
            if (eVar.d().f()) {
                callEvent(EventType.dismissOpenEngine, this.shangcheMainStep, "关闭发动机弹窗", false);
                this.shangcheMainStep.setEnd();
            }
        }
    }

    public void callEvent(final EventType eventType, final ChildStepData childStepData, final String str, final boolean z) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData.1
            @Override // java.lang.Runnable
            public void run() {
                if (ShangCheStepData.this.shangCheEventCallBack != null) {
                    ShangCheStepData.this.shangCheEventCallBack.onEvent(eventType, childStepData, str, z);
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (!this.isInitChecker) {
            this.isInitChecker = true;
            String str = (String) ((K3ShangCheStepConfig) this.config).p201158.value;
            this.checkerDeque = new ArrayDeque<>();
            if (n0.g(str)) {
                for (char c : str.toCharArray()) {
                    int i = c - '0';
                    if (i == 1) {
                        if (this.fingerPrintStep == null) {
                            ChildStepData childStepData = new ChildStepData(ChildStepData.FingerPrintStep, "指纹", ((K3ShangCheStepConfig) this.config).p201138);
                            this.fingerPrintStep = childStepData;
                            FingerPrintStepChecker fingerPrintStepChecker = new FingerPrintStepChecker(this, (K3ShangCheStepConfig) this.config, childStepData, bVar.f3143f);
                            this.fingerPrintStepChecker = fingerPrintStepChecker;
                            this.checkerDeque.add(fingerPrintStepChecker);
                        }
                    } else if (i == 2) {
                        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201123.value).booleanValue() && this.aroundStep == null) {
                            ChildStepData childStepData2 = new ChildStepData(ChildStepData.AroundCarStep, "绕车", ((K3ShangCheStepConfig) this.config).p201110);
                            this.aroundStep = childStepData2;
                            AroundCarStepChecker aroundCarStepChecker = new AroundCarStepChecker(this, (K3ShangCheStepConfig) this.config, childStepData2, bVar.f3143f);
                            this.aroundCarStepChecker = aroundCarStepChecker;
                            this.checkerDeque.add(aroundCarStepChecker);
                        }
                    } else if (i == 3) {
                        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201111.value).booleanValue() && this.thereTouchStep == null && !((Boolean) ((K3ShangCheStepConfig) this.config).p201167.value).booleanValue()) {
                            ChildStepData childStepData3 = new ChildStepData(ChildStepData.ThreeTouchStep, "三摸", ((K3ShangCheStepConfig) this.config).p201117);
                            this.thereTouchStep = childStepData3;
                            ThreeTouchStepChecker threeTouchStepChecker = new ThreeTouchStepChecker(this, (K3ShangCheStepConfig) this.config, childStepData3, bVar.f3143f);
                            this.threeTouchStepChecker = threeTouchStepChecker;
                            this.checkerDeque.add(threeTouchStepChecker);
                        }
                    } else if (i == 4 && this.playingLineStep == null) {
                        ChildStepData childStepData4 = new ChildStepData(ChildStepData.PlayingLinetStep, "报线路", null);
                        this.playingLineStep = childStepData4;
                        PlayingLineStepChecker playingLineStepChecker = new PlayingLineStepChecker(this, (K3ShangCheStepConfig) this.config, childStepData4, bVar.f3143f);
                        this.playingLineStepChecker = playingLineStepChecker;
                        this.checkerDeque.add(playingLineStepChecker);
                    }
                }
            }
            if (((Boolean) ((K3ShangCheStepConfig) this.config).p201167.value).booleanValue()) {
                this.globalThreeTouchChecker = new GlobalThreeTouchChecker((K3ShangCheStepConfig) this.config, false);
            }
        }
        if (this.shangcheMainStep.isPause) {
            return;
        }
        checkShangCheFinish(eVar);
        shangCheFinish(eVar);
        if ((this.fingerPrintStepChecker == null && this.aroundCarStepChecker == null && this.threeTouchStepChecker == null && this.playingLineStepChecker == null) || this.shangcheMainStep.isEnd) {
            return;
        }
        if (!this.shangcheMainStep.isStart) {
            this.shangcheMainStep.isStart = true;
            this.shangcheMainStep.startTime = SystemClock.elapsedRealtime();
        }
        if (!this.isInit) {
            this.isInit = true;
            if (!this.checkerDeque.isEmpty()) {
                this.currentStepChecker = this.checkerDeque.pop();
            }
        }
        if (this.shangcheMainStep.finish) {
            return;
        }
        ChildStepChecker childStepChecker = this.currentStepChecker;
        if (childStepChecker != null) {
            childStepChecker.onChange(eVar, bVar, examProcessor);
        }
        GlobalThreeTouchChecker globalThreeTouchChecker = this.globalThreeTouchChecker;
        if (globalThreeTouchChecker != null && !this.isFinishGlobalThreeTouch) {
            globalThreeTouchChecker.check(eVar, bVar, examProcessor);
            List<TouchSensor> list = this.globalThreeTouchChecker.touchSensorList;
            if (list.contains(TouchSensor.Seat) && list.contains(TouchSensor.OutsideMirror) && list.contains(TouchSensor.InsideMirror)) {
                this.isFinishGlobalThreeTouch = true;
            } else {
                this.isFinishGlobalThreeTouch = false;
            }
        }
        if (this.checkerDeque.isEmpty()) {
            if (!this.currentStepChecker.childStepData.isEnd || checkStartLightSimulate(examProcessor)) {
            }
            return;
        }
        long j = this.currentStepChecker.childStepData.nextStepStartTime;
        if (j <= 0 || SystemClock.elapsedRealtime() <= j) {
            return;
        }
        if (this.currentStepChecker.childStepData.isEnd && checkStartLightSimulate(examProcessor)) {
            return;
        }
        this.currentStepChecker = this.checkerDeque.pop();
    }

    public void resume() {
        f.o("上车准备 resume");
        this.shangcheMainStep.isPause = false;
        this.shangcheMainStep.isFinishLightExam = true;
        long j = this.pauseTime;
        if (j > 0) {
            ChildStepData childStepData = this.shangcheMainStep;
            long j2 = childStepData.nextStepStartTime;
            if (j < j2) {
                childStepData.nextStepStartTime = (j2 - j) + SystemClock.elapsedRealtime();
            }
        }
    }

    public void setShangCheEventCallBack(ShangCheEventCallBack shangCheEventCallBack) {
        this.shangCheEventCallBack = shangCheEventCallBack;
    }
}
