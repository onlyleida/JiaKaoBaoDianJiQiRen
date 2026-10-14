package cn.mucang.android.jiakaoyi.exam.k3.data;

import android.os.SystemClock;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.ChaoCheAngleOffsetChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.LeftRightLineCalHelper;
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.HpBianDaoChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.TurnState;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class ChaoCheStateData extends K3BaseStepData<K3ChaoCheStepConfig> {
    private final cn.mucang.android.jiakaoyi.signal.f.a byGyro;
    public float chaoCheDaoInDistance;
    public float chaocheDistance;
    public float chaochePlayDistance;
    public long chaochePlayTime;
    public long chaocheTime;
    public cn.mucang.android.jiakaoyi.framework.h.b<ChaoCheStateData> dialogCallback;
    public boolean firstGpsFrame;
    public boolean hadTurnLeft;
    public boolean hadTurnRight;
    public boolean hasHpInit;
    public boolean hasPlayingBack;
    private boolean hasPlayingLeave;
    private boolean hasPlayingStartChaoChe;
    public final HpBianDaoChecker hpBianDaoChecker;
    private boolean isCancelDialog;
    public volatile boolean isChaoCheDao;
    public volatile boolean isChaoCheDaoIn;
    public boolean isFinishTurnLight;
    public boolean isOnlyCheckTurnLight;
    private boolean isShowDialog;
    public boolean laba;
    public boolean labaBefore;
    public boolean labaChacheDao;
    public State lastState;
    private TurnState lastTurnState;
    private float leaveChaoCheDaoDistance;
    private long leftLightStartTime;
    private final ChaoCheAngleOffsetChecker offsetChecker;
    private long rightLightStartTime;
    private LeftRightLineCalHelper rightLineCalHelper;
    private boolean sendLpCahoCheDao;
    public boolean startTurningLeft;
    public boolean startTurningRight;
    public State state;
    public boolean turnRightNotAllow;
    public boolean turningLeft;
    public boolean turningRight;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State = iArr;
            try {
                iArr[State.before.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[State.preTurnLeft.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[State.turnLeft.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[State.turnRight.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[State.chaoCheDao.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[State.turnRightToBack.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[State.after.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum State {
        before,
        turnRight,
        preTurnLeft,
        turnLeft,
        chaoCheDao,
        turnRightToBack,
        after
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChaoCheStateData(K3ChaoCheStepConfig k3ChaoCheStepConfig) {
        super(k3ChaoCheStepConfig);
        this.turningLeft = false;
        this.startTurningLeft = false;
        this.turningRight = false;
        this.startTurningRight = false;
        this.byGyro = new cn.mucang.android.jiakaoyi.signal.f.a(2.0f);
        this.isOnlyCheckTurnLight = false;
        this.isFinishTurnLight = false;
        this.sendLpCahoCheDao = false;
        this.firstGpsFrame = false;
        this.hasHpInit = false;
        this.isChaoCheDaoIn = false;
        this.isChaoCheDao = false;
        this.state = State.before;
        this.offsetChecker = new ChaoCheAngleOffsetChecker(((Integer) k3ChaoCheStepConfig.p206113.value).intValue());
        this.hpBianDaoChecker = new HpBianDaoChecker();
        this.rightLineCalHelper = new LeftRightLineCalHelper();
    }

    private void changeState(State state) {
        this.lastState = this.state;
        this.state = state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkBackRightPlayingVoice(final e eVar, ExamProcessor examProcessor) {
        if (this.state == State.chaoCheDao) {
            if (this.chaocheDistance <= BitmapDescriptorFactory.HUE_RED) {
                this.chaocheDistance = eVar.d().C;
            }
            if (this.chaocheTime == 0) {
                this.chaocheTime = SystemClock.elapsedRealtime();
            }
            if (!((Boolean) ((K3ChaoCheStepConfig) this.config).p206107.value).booleanValue() || !((Boolean) ((K3ChaoCheStepConfig) this.config).p206108.value).booleanValue() || (eVar.d().C - this.chaocheDistance) - ((Integer) ((K3ChaoCheStepConfig) this.config).p206111.value).intValue() < BitmapDescriptorFactory.HUE_RED || examProcessor.i - this.chaocheTime <= ((Integer) ((K3ChaoCheStepConfig) this.config).p206112.value).intValue() * 1000 || this.hasPlayingBack) {
                return;
            }
            this.hasPlayingBack = true;
            if (this.engineType == 1) {
                String str = (String) ((K3ChaoCheStepConfig) this.config).p206109.value;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData.1
                    @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                    public void onSpeakEnd() {
                        super.onSpeakEnd();
                        ChaoCheStateData chaoCheStateData = ChaoCheStateData.this;
                        if (chaoCheStateData.chaochePlayTime == 0) {
                            chaoCheStateData.chaochePlayTime = SystemClock.elapsedRealtime();
                        }
                        ChaoCheStateData chaoCheStateData2 = ChaoCheStateData.this;
                        if (chaoCheStateData2.chaochePlayDistance <= BitmapDescriptorFactory.HUE_RED) {
                            chaoCheStateData2.chaochePlayDistance = eVar.d().C;
                        }
                    }
                };
                T t = this.config;
                TtsManager.w(str, ttsGrade, simpleTtsListener, ((K3ChaoCheStepConfig) t).p206109.ruleId, l.d(((K3ChaoCheStepConfig) t).p206109.ruleId));
                return;
            }
            if (this.chaochePlayTime == 0) {
                this.chaochePlayTime = SystemClock.elapsedRealtime();
            }
            if (this.chaochePlayDistance <= BitmapDescriptorFactory.HUE_RED) {
                this.chaochePlayDistance = eVar.d().C;
            }
        }
    }

    private boolean checkChaoCheDao(e eVar) {
        this.rightLineCalHelper.check(eVar, true, false);
        K3CollisionModel k3CollisionModel = this.rightLineCalHelper.leftLine;
        if (k3CollisionModel != null) {
            if (k3CollisionModel instanceof i) {
                return true;
            }
            if (k3CollisionModel instanceof j) {
                j jVar = (j) k3CollisionModel;
                if (!jVar.k && jVar.f3882a == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkLeaveChaoCheDaoVoice(e eVar, ExamProcessor examProcessor) {
        if (this.isChaoCheDaoIn) {
            if (this.chaoCheDaoInDistance == BitmapDescriptorFactory.HUE_RED) {
                this.chaoCheDaoInDistance = eVar.d().C;
            }
            if (!((Boolean) ((K3ChaoCheStepConfig) this.config).p206127.value).booleanValue() || this.hasPlayingLeave) {
                return;
            }
            this.hasPlayingLeave = true;
            this.leaveChaoCheDaoDistance = BitmapDescriptorFactory.HUE_RED;
            if (this.engineType == 1) {
                T t = this.config;
                TtsManager.t((String) ((K3ChaoCheStepConfig) t).p206128.value, TtsGrade.ExamTip, ((K3ChaoCheStepConfig) t).p206128.ruleId, l.d(((K3ChaoCheStepConfig) t).p206128.ruleId));
            }
        }
    }

    private void checkLpChaoChe(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        this.offsetChecker.couldTurnRight = this.isChaoCheDao;
        this.offsetChecker.onSignalFrame(eVar, bVar);
        ChaoCheAngleOffsetChecker chaoCheAngleOffsetChecker = this.offsetChecker;
        State state = chaoCheAngleOffsetChecker.state;
        this.state = state;
        this.turnRightNotAllow = chaoCheAngleOffsetChecker.turnRightNotAllow;
        boolean z = true;
        if (state == State.before) {
            this.labaBefore = this.labaBefore || eVar.d().l;
        }
        State state2 = this.state;
        if (state2 == State.turnRight) {
            this.labaBefore = false;
        }
        if (state2 == State.preTurnLeft) {
            this.labaBefore = this.labaBefore || eVar.d().l;
        }
        if (this.state == State.chaoCheDao) {
            if (!this.labaChacheDao && !eVar.d().l) {
                z = false;
            }
            this.labaChacheDao = z;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void beforeStart(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.beforeStart(eVar, bVar, examProcessor);
        this.byGyro.b(eVar);
        this.offsetChecker.onBefore(eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (!this.sendLpCahoCheDao) {
            this.sendLpCahoCheDao = true;
            if (!K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3ChaoCheStepConfig) this.config).p206126.value).booleanValue()) {
                LiveBus.d(ChaoCheStateData.class).l(this);
            }
        }
        if (!eVar.d().h()) {
            this.firstGpsFrame = false;
        } else if (K3CollisionManager.getInstance().hasHpCollision(eVar) && this.state == State.before) {
            if (!this.hasHpInit) {
                this.hasHpInit = true;
                this.firstGpsFrame = true;
            }
            this.isChaoCheDao = checkChaoCheDao(eVar);
            if (this.firstGpsFrame) {
                this.isChaoCheDaoIn = this.isChaoCheDao;
            }
        }
        if (eVar.d().b < ((Integer) ((K3ChaoCheStepConfig) this.config).p206142.value).intValue()) {
            examProcessor.n.c(ConflictSignal.GearSpeedNotMatch);
            examProcessor.n.c(ConflictSignal.HighRpm);
        } else {
            examProcessor.n.a(ConflictSignal.GearSpeedNotMatch);
            examProcessor.n.a(ConflictSignal.HighRpm);
        }
        if (!this.laba) {
            this.laba = eVar.d().l;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            TurnState turnStateCheck = this.hpBianDaoChecker.check(eVar, examProcessor);
            TurnState turnState = TurnState.turnLeft;
            this.turningLeft = turnStateCheck == turnState;
            TurnState turnState2 = TurnState.turnRight;
            this.turningRight = turnStateCheck == turnState2;
            TurnState turnState3 = this.lastTurnState;
            this.startTurningLeft = turnState3 != turnState && turnStateCheck == turnState;
            this.startTurningRight = turnState3 != turnState2 && turnStateCheck == turnState2;
            switch (AnonymousClass2.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[this.state.ordinal()]) {
                case 1:
                case 2:
                    if (((Boolean) ((K3ChaoCheStepConfig) this.config).p206124.value).booleanValue() && !this.hasPlayingStartChaoChe && this.hasPlayingLeave && this.leaveChaoCheDaoDistance > BitmapDescriptorFactory.HUE_RED) {
                        this.hasPlayingStartChaoChe = true;
                        if (this.engineType == 1) {
                            T t = this.config;
                            TtsManager.t((String) ((K3ChaoCheStepConfig) t).p206100.value, TtsGrade.ExamTip, ((K3ChaoCheStepConfig) t).p206100.ruleId, l.d(((K3ChaoCheStepConfig) t).p206100.ruleId));
                        }
                    }
                    if (this.turningLeft) {
                        changeState(State.turnLeft);
                    } else if (this.turningRight) {
                        if (this.state == State.before && !this.isChaoCheDao) {
                            this.turnRightNotAllow = true;
                        }
                        changeState(State.turnRight);
                    }
                    this.labaBefore = this.labaBefore || eVar.d().l;
                    break;
                case 3:
                    if (this.lastState != State.turnLeft) {
                        u.h("检测到向左变道");
                    }
                    if (this.lastTurnState == turnState) {
                        if (turnStateCheck == TurnState.after) {
                            changeState(State.chaoCheDao);
                        }
                        if (turnStateCheck == TurnState.before) {
                            changeState(this.lastState);
                        }
                    }
                    break;
                case 4:
                    if (this.lastState != State.turnRight) {
                        u.h("检测到向右变道");
                    }
                    if (this.lastTurnState == turnState2) {
                        if (turnStateCheck == TurnState.after) {
                            changeState(State.preTurnLeft);
                            if (this.hasPlayingLeave) {
                                this.leaveChaoCheDaoDistance = eVar.d().C;
                            }
                        }
                        if (turnStateCheck == TurnState.before) {
                            changeState(this.lastState);
                        }
                    }
                    break;
                case 5:
                    TurnState turnState4 = this.lastTurnState;
                    if ((turnState4 == TurnState.after || turnState4 == TurnState.before) && turnStateCheck == turnState2) {
                        changeState(State.turnRightToBack);
                    }
                    this.labaChacheDao = this.labaChacheDao || eVar.d().l;
                    break;
                case 6:
                    if (this.lastState != State.turnRightToBack) {
                        u.h("检测到向右变道");
                    }
                    if (this.lastTurnState == turnState2) {
                        if (turnStateCheck == TurnState.after) {
                            changeState(State.after);
                        }
                        if (turnStateCheck == TurnState.before) {
                            changeState(this.lastState);
                        }
                    }
                    break;
            }
            if (this.lastTurnState != turnStateCheck) {
                f.o("超车是车辆转向状态 lastTurnState " + this.lastTurnState + " ; turnState " + turnStateCheck + " ; estimateTotalDistance " + eVar.d().C);
            }
            this.lastTurnState = turnStateCheck;
        } else {
            checkLpChaoChe(eVar, bVar, examProcessor);
            State state = this.lastState;
            State state2 = State.turnLeft;
            if (state != state2 && this.state == state2) {
                u.h("检测到向左变道");
            }
            State state3 = this.lastState;
            State state4 = State.turnRight;
            if (state3 != state4 && this.state == state4) {
                u.h("检测到向右变道");
            }
            State state5 = this.lastState;
            State state6 = State.turnRightToBack;
            if (state5 != state6 && this.state == state6) {
                u.h("检测到向右变道");
            }
        }
        checkBackRightPlayingVoice(eVar, examProcessor);
        checkLeaveChaoCheDaoVoice(eVar, examProcessor);
        State state7 = this.state;
        if (state7 == State.turnRight) {
            this.hadTurnRight = true;
        } else if (state7 == State.turnLeft) {
            this.hadTurnLeft = true;
            cn.mucang.android.jiakaoyi.framework.h.b<ChaoCheStateData> bVar2 = this.dialogCallback;
            if (bVar2 != null && this.isShowDialog && !this.isCancelDialog) {
                this.isCancelDialog = true;
                bVar2.callback(this);
            }
        }
        cn.mucang.android.jiakaoyi.framework.h.b<ChaoCheStateData> bVar3 = this.dialogCallback;
        if (bVar3 != null && this.state != State.turnLeft && !this.isShowDialog) {
            this.isShowDialog = true;
            bVar3.callback(this);
        }
        if (((Boolean) ((K3ChaoCheStepConfig) this.config).p206147.value).booleanValue()) {
            int iIntValue = ((Integer) ((K3ChaoCheStepConfig) this.config).p206148.value).intValue();
            if (iIntValue == 0) {
                this.isOnlyCheckTurnLight = true;
            } else if (iIntValue == 1) {
                this.isOnlyCheckTurnLight = this.state == State.chaoCheDao;
            }
        }
        if (this.isOnlyCheckTurnLight) {
            if (!eVar.d().j(Light.TurnLeftLight)) {
                this.leftLightStartTime = 0L;
            } else if (this.leftLightStartTime == 0) {
                this.leftLightStartTime = eVar.d().L;
            }
            if (!eVar.d().j(Light.TurnRightLight)) {
                this.rightLightStartTime = 0L;
            } else if (this.rightLightStartTime == 0) {
                this.rightLightStartTime = eVar.d().L;
            }
            if (!this.isFinishTurnLight && this.leftLightStartTime > 0 && eVar.d().L - this.leftLightStartTime > ((Integer) ((K3ChaoCheStepConfig) this.config).p206149.value).intValue() * 1000) {
                this.isFinishTurnLight = true;
            }
            if (!this.isFinishTurnLight && this.rightLightStartTime > 0 && eVar.d().L - this.rightLightStartTime > ((Integer) ((K3ChaoCheStepConfig) this.config).p206149.value).intValue() * 1000) {
                this.isFinishTurnLight = true;
            }
        }
        if (this.lastState != this.state) {
            f.o("超车状态 lastState " + this.lastState + " ; state " + this.state + " ; estimateTotalDistance " + eVar.d().C);
        }
        this.lastState = this.state;
    }
}
