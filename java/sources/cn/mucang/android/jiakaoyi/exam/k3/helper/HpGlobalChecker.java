package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.HpBianDaoChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.TurnState;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class HpGlobalChecker {
    public final HpBianDaoChecker hpBianDaoChecker;
    public GlobalStateData.State lastState;
    private TurnState lastTurnState;
    public boolean startTurningLeft;
    public boolean startTurningRight;
    public GlobalStateData.State state;
    public boolean turningLeft;
    public boolean turningRight;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.HpGlobalChecker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State;

        static {
            int[] iArr = new int[GlobalStateData.State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State = iArr;
            try {
                iArr[GlobalStateData.State.before.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.turnLeft.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.turnRight.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.after.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public HpGlobalChecker() {
        GlobalStateData.State state = GlobalStateData.State.before;
        this.state = state;
        this.lastState = state;
        this.hpBianDaoChecker = new HpBianDaoChecker();
    }

    private void changeState(GlobalStateData.State state) {
        this.lastState = state;
        this.state = state;
    }

    public void check(e eVar, ExamProcessor examProcessor) {
        TurnState turnStateCheck = this.hpBianDaoChecker.check(eVar, examProcessor);
        TurnState turnState = TurnState.turnLeft;
        boolean z = false;
        this.turningLeft = turnStateCheck == turnState;
        TurnState turnState2 = TurnState.turnRight;
        this.turningRight = turnStateCheck == turnState2;
        TurnState turnState3 = this.lastTurnState;
        this.startTurningLeft = turnState3 != turnState && turnStateCheck == turnState;
        if (turnState3 != turnState2 && turnStateCheck == turnState2) {
            z = true;
        }
        this.startTurningRight = z;
        int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[this.state.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        changeState(GlobalStateData.State.before);
                    }
                } else if (this.lastTurnState == turnState2) {
                    if (turnStateCheck == TurnState.after) {
                        changeState(GlobalStateData.State.after);
                    }
                    if (turnStateCheck == TurnState.before) {
                        changeState(this.lastState);
                    }
                }
            } else if (this.lastTurnState == turnState) {
                if (turnStateCheck == TurnState.after) {
                    changeState(GlobalStateData.State.after);
                }
                if (turnStateCheck == TurnState.before) {
                    changeState(this.lastState);
                }
            }
        } else if (this.turningLeft) {
            changeState(GlobalStateData.State.turnLeft);
        } else if (this.turningRight) {
            changeState(GlobalStateData.State.turnRight);
        }
        if (this.lastTurnState != turnStateCheck) {
            f.o("Global是车辆转向状态 lastTurnState " + this.lastTurnState + " ; turnState " + turnStateCheck + " ; estimateTotalDistance " + eVar.d().C);
        }
        this.lastTurnState = turnStateCheck;
    }
}
