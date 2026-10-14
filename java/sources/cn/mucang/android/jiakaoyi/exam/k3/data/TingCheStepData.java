package cn.mucang.android.jiakaoyi.exam.k3.data;

import android.os.SystemClock;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.CarToLineDistanceUtils;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.TingCheSideDistanceHelper;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;
import cn.mucang.android.jky.usbcamera.detectside.t;
import com.google.android.exoplayer2.DefaultRenderersFactory;

/* JADX INFO: loaded from: classes2.dex */
public class TingCheStepData extends K3BaseStepData<K3TingCheStepConfig> {
    private boolean canSpeakExamTips;
    private CarModel carModel;
    public double distance;
    public boolean hasDetectSide;
    private boolean hasPlaying;
    public boolean isCheckPressLine;
    public boolean isStopped;
    private CarModel.Direction lastDirection;
    private State lastState;
    private long lastToastTime;
    private TingCheSideDistanceHelper sideDistanceHelper;
    private long speakExamTipsEndTime;
    public boolean startJudgeDistance;
    public State state;
    public TwoSideOffsetResult twoSideOffset;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State = iArr;
            try {
                iArr[State.Start.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State[State.Stopping.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State[State.Stopped.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State[State.OpenDoor.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum State {
        Start,
        Stopping,
        Stopped,
        OpenDoor,
        CloseDoor
    }

    public TingCheStepData(K3TingCheStepConfig k3TingCheStepConfig) {
        super(k3TingCheStepConfig);
        this.hasDetectSide = false;
        State state = State.Start;
        this.state = state;
        this.lastState = state;
        this.startJudgeDistance = false;
        this.distance = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
        this.canSpeakExamTips = true;
        this.isCheckPressLine = false;
        this.lastToastTime = 0L;
        this.hasPlaying = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void checkIsSpeakExamTips() {
        if (((Integer) ((K3TingCheStepConfig) this.config).p216119.value).intValue() == 0) {
            this.canSpeakExamTips = false;
        } else if (((Integer) ((K3TingCheStepConfig) this.config).p216119.value).intValue() == 1) {
            this.canSpeakExamTips = !this.carModel.J;
        } else if (((Integer) ((K3TingCheStepConfig) this.config).p216119.value).intValue() == 2) {
            this.canSpeakExamTips = ((double) this.carModel.b) < 0.5d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setState(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        CarToLineDistanceUtils.Mode mode;
        KeyState keyState;
        if (((Integer) ((K3TingCheStepConfig) this.config).p216135.value).intValue() == 0) {
            mode = CarToLineDistanceUtils.Mode.Max;
        } else {
            mode = ((Integer) ((K3TingCheStepConfig) this.config).p216135.value).intValue() == 1 ? CarToLineDistanceUtils.Mode.FrontWheel : CarToLineDistanceUtils.Mode.BackWheel;
        }
        if (this.sideDistanceHelper == null) {
            this.sideDistanceHelper = new TingCheSideDistanceHelper();
        }
        this.distance = this.sideDistanceHelper.calSideDistance(eVar, mode, CarToLineDistanceUtils.CalLineType.TingCheFullLine);
        this.isStopped = ((TingCheStepData) bVar.f()).carStop;
        int i = AnonymousClass2.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State[this.state.ordinal()];
        if (i == 1) {
            if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 3 && !this.carModel.f5268f) {
                this.state = State.Stopped;
                return;
            } else if (this.carModel.D - this.startAngel > ((Integer) ((K3TingCheStepConfig) this.config).p216128.value).intValue()) {
                this.state = State.Stopping;
                return;
            } else {
                if (this.isStopped) {
                    this.state = State.Stopped;
                    return;
                }
                return;
            }
        }
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return;
                }
                if (this.carModel.j) {
                    this.state = State.CloseDoor;
                }
                t.a();
                return;
            }
        } else if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 3 && !this.carModel.f5268f) {
            this.state = State.Stopped;
            return;
        } else if (this.isStopped) {
            this.state = State.Stopped;
        }
        if (!this.hasPlaying) {
            if (((Integer) ((K3TingCheStepConfig) this.config).p216115.value).intValue() == 0) {
                if (!this.carModel.f5268f) {
                    this.hasPlaying = true;
                    T t = this.config;
                    TtsManager.t((String) ((K3TingCheStepConfig) t).p216116.value, TtsGrade.ExamTip, ((K3TingCheStepConfig) t).p216116.ruleId, l.d(((K3TingCheStepConfig) t).p216116.ruleId));
                }
            } else if (((Integer) ((K3TingCheStepConfig) this.config).p216115.value).intValue() == 1 && (keyState = this.carModel.p) != KeyState.ON && keyState != KeyState.Start) {
                this.hasPlaying = true;
                T t2 = this.config;
                TtsManager.t((String) ((K3TingCheStepConfig) t2).p216116.value, TtsGrade.ExamTip, ((K3TingCheStepConfig) t2).p216116.ruleId, l.d(((K3TingCheStepConfig) t2).p216116.ruleId));
            }
        }
        if (this.carModel.j) {
            return;
        }
        this.state = State.OpenDoor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void speakingQiBuExam() {
        String str = (String) ((K3TingCheStepConfig) this.config).p216118.value;
        if (n0.g(str) && this.canSpeakExamTips && SystemClock.elapsedRealtime() - this.speakExamTipsEndTime > 1000) {
            this.canSpeakExamTips = false;
            TtsGrade ttsGrade = TtsGrade.ExamTip;
            SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData.1
                @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                public void onSpeakEnd() {
                    super.onSpeakEnd();
                    TingCheStepData.this.speakExamTipsEndTime = SystemClock.elapsedRealtime();
                    TingCheStepData.this.checkIsSpeakExamTips();
                }
            };
            T t = this.config;
            TtsManager.w(str, ttsGrade, simpleTtsListener, ((K3TingCheStepConfig) t).p216118.ruleId, l.d(((K3TingCheStepConfig) t).p216118.ruleId));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        this.carModel = eVar.d();
        if (((Integer) ((K3TingCheStepConfig) this.config).p216138.value).intValue() == 0) {
            this.isCheckPressLine = true;
        } else if (((Integer) ((K3TingCheStepConfig) this.config).p216138.value).intValue() == 1 && !eVar.d().f5268f) {
            this.isCheckPressLine = true;
        }
        setState(eVar, bVar, examProcessor);
        if (((Integer) ((K3TingCheStepConfig) this.config).p216161.value).intValue() == 1) {
            this.startJudgeDistance = this.isStopped;
        } else {
            this.startJudgeDistance = !this.carModel.f5268f && this.state == State.Stopped;
        }
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().b < 4.0f && !t.c()) {
            t.k();
            if (eVar.d().L - this.lastToastTime > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                this.lastToastTime = eVar.d().L;
                u.h("开始摄像头边线检测");
            }
        }
        Integer num = (Integer) ((K3TingCheStepConfig) this.config).p216117.value;
        if (num.intValue() == 1) {
            if (this.carStop && !this.carModel.f5268f) {
                speakingQiBuExam();
            }
        } else if (num.intValue() == 2 && this.carStop && this.state == State.CloseDoor) {
            speakingQiBuExam();
        }
        CarModel.Direction direction = eVar.d().F;
        if (this.lastDirection != direction) {
            f.o("direction " + direction + "; state " + this.state + " ; speed " + eVar.d().b + " ; carStop " + this.carStop);
        }
        if (this.lastState != this.state) {
            f.o("靠边停车状态 lastState " + this.lastState + " ; state " + this.state + " ; estimateTotalDistance " + eVar.d().C);
        }
        this.lastDirection = direction;
        this.lastState = this.state;
    }
}
