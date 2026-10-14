package cn.mucang.android.jiakaoyi.exam.k3.helper;

import android.location.Location;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.BianDaoDirection;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.HpBianDaoChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.TurnState;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class BianDaoChecker {
    private static final String TAG = "BianDaoChecker";
    private float biandaoStartDistance;
    private cn.mucang.android.jiakaoyi.signal.f.a byGyro;
    private CarTurnChecker carTurnChecker;
    private IntegerValue changeAngel;
    public boolean hadTurnLeft;
    public boolean hadTurnRight;
    private final HpBianDaoChecker hpBianDaoChecker;
    private boolean isRunBeforeStart;
    private TurnState lastCarTurnSate;
    private BianDaoDirection lastDirection;
    private LinkedList<Location> lastPos;
    public BianDaoState lastState;
    private OffsetCalculator offset;
    public boolean startTurnLeft;
    public boolean startTurnRight;
    public BianDaoState state;
    private d stateData;
    public BianDaoState tempState;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoChecker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState;

        static {
            int[] iArr = new int[BianDaoState.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState = iArr;
            try {
                iArr[BianDaoState.before.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState[BianDaoState.turnLeft.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState[BianDaoState.turnRight.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState[BianDaoState.after.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BianDaoChecker(IntegerValue integerValue, d dVar) {
        BianDaoState bianDaoState = BianDaoState.before;
        this.tempState = bianDaoState;
        this.biandaoStartDistance = -1.0f;
        this.lastDirection = BianDaoDirection.None;
        this.offset = null;
        this.byGyro = new cn.mucang.android.jiakaoyi.signal.f.a(1.5f);
        this.isRunBeforeStart = false;
        this.changeAngel = integerValue;
        this.stateData = dVar;
        this.state = bianDaoState;
        this.lastPos = new LinkedList<>();
        this.carTurnChecker = new CarTurnChecker(((Integer) integerValue.value).intValue());
        this.hpBianDaoChecker = new HpBianDaoChecker();
    }

    public void beforeStart(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        this.isRunBeforeStart = true;
        this.byGyro.b(eVar);
    }

    public void check(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            TurnState turnStateCheck = this.hpBianDaoChecker.check(eVar, examProcessor);
            int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState[this.state.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 && this.lastCarTurnSate == TurnState.turnRight && (turnStateCheck == TurnState.after || turnStateCheck == TurnState.before)) {
                        this.state = BianDaoState.after;
                    }
                } else if (this.lastCarTurnSate == TurnState.turnLeft && (turnStateCheck == TurnState.after || turnStateCheck == TurnState.before)) {
                    this.state = BianDaoState.after;
                }
            } else if (turnStateCheck == TurnState.turnLeft) {
                this.state = BianDaoState.turnLeft;
            } else if (turnStateCheck == TurnState.turnRight) {
                this.state = BianDaoState.turnRight;
            }
            BianDaoState bianDaoState = this.lastState;
            if (bianDaoState == BianDaoState.turnLeft && this.state == BianDaoState.after) {
                this.hadTurnLeft = true;
            }
            if (bianDaoState == BianDaoState.turnRight && this.state == BianDaoState.after) {
                this.hadTurnRight = true;
            }
            this.lastCarTurnSate = turnStateCheck;
        } else {
            checkLpBianDao(eVar);
        }
        BianDaoState bianDaoState2 = this.lastState;
        BianDaoState bianDaoState3 = BianDaoState.turnLeft;
        if (bianDaoState2 == bianDaoState3 || this.state != bianDaoState3) {
            this.startTurnLeft = false;
        } else {
            u.h("检测到向左变道");
            this.startTurnLeft = true;
        }
        BianDaoState bianDaoState4 = this.lastState;
        BianDaoState bianDaoState5 = BianDaoState.turnRight;
        if (bianDaoState4 == bianDaoState5 || this.state != bianDaoState5) {
            this.startTurnRight = false;
        } else {
            u.h("检测到向右变道");
            this.startTurnRight = true;
        }
        if (this.lastState != this.state) {
            f.o("变道状态 lastState " + this.lastState + " ; state " + this.state + " ; estimateTotalDistance " + eVar.d().C);
        }
        this.lastState = this.state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkLpBianDao(e eVar) {
        if (!this.isRunBeforeStart) {
            throw new IllegalArgumentException("低精度变道需要调用 beforeStart 方法");
        }
        d dVar = this.stateData;
        if (dVar instanceof ChaoCheStateData) {
            throw new IllegalArgumentException("低精度变道检测不适用与超车项目");
        }
        if (this.offset == null) {
            this.offset = new OffsetCalculator(dVar.startAngel, eVar.d());
        }
        double dAbs = Math.abs(this.byGyro.c(eVar));
        if (this.state == BianDaoState.before) {
            this.carTurnChecker.onCheck(eVar, this.stateData.startAngel, eVar.d().L);
            CarTurnChecker.Direction direction = this.carTurnChecker.direction;
            if (direction == CarTurnChecker.Direction.turnLeft) {
                this.tempState = BianDaoState.turnLeft;
            } else if (direction == CarTurnChecker.Direction.turnRight) {
                this.tempState = BianDaoState.turnRight;
            } else if (Math.abs(eVar.d().D - this.stateData.startAngel) < 2.0f) {
                Location location = new Location(eVar.getCurrentPosition().f5281g);
                if (this.lastPos.size() > 0) {
                    Location last = this.lastPos.getLast();
                    if (Math.abs(last.getLatitude() - location.getLatitude()) + Math.abs(last.getLongitude() - location.getLatitude()) >= 1.0E-10d) {
                        this.lastPos.add(location);
                    }
                } else {
                    this.lastPos.add(location);
                }
                if (this.lastPos.size() > 20) {
                    this.lastPos.removeFirst();
                }
            }
            if (dAbs > 0.5d) {
                this.state = this.tempState;
            }
        }
        BianDaoState bianDaoState = this.state;
        BianDaoState bianDaoState2 = BianDaoState.turnLeft;
        if ((bianDaoState == bianDaoState2 || bianDaoState == BianDaoState.turnRight) && Math.abs(eVar.d().D - this.stateData.startAngel) < ((Integer) this.changeAngel.value).intValue()) {
            if (cn.mucang.android.jiakaoyi.exam.a.e.a(eVar.getCurrentPosition().f5281g, this.lastPos, 1.3f) || Math.abs(this.offset.onSignalFrame(eVar)) >= 1.5d || dAbs >= 1.5d) {
                BianDaoState bianDaoState3 = this.state;
                if (bianDaoState3 == BianDaoState.turnRight) {
                    this.hadTurnRight = true;
                }
                if (bianDaoState3 == bianDaoState2) {
                    this.hadTurnLeft = true;
                }
                this.state = BianDaoState.after;
            }
        }
    }
}
