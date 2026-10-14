package cn.mucang.android.jiakaoyi.exam.k3.helper.biandao;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.BianDaoDirection;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.BianDaoResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoStateChecker;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class HpBianDaoChecker {
    public BianDaoResult bianDaoResult;
    private K3GlobalStepConfig globalStepConfig;
    public BianDaoDirection lastFrameBianDaoDirection = BianDaoDirection.None;
    public TurnState state = TurnState.before;
    private final LinkedList<Pos> records = new LinkedList<>();
    private BianDaoStateChecker checker = new BianDaoStateChecker();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.HpBianDaoChecker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$biandao$TurnState;

        static {
            int[] iArr = new int[TurnState.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$biandao$TurnState = iArr;
            try {
                iArr[TurnState.before.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$biandao$TurnState[TurnState.turnLeft.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$biandao$TurnState[TurnState.turnRight.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$biandao$TurnState[TurnState.after.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TurnState check(e eVar, ExamProcessor examProcessor) {
        if (this.globalStepConfig == null) {
            this.globalStepConfig = (K3GlobalStepConfig) examProcessor.r(Step.K3_Global);
        }
        K3GlobalStepConfig k3GlobalStepConfig = this.globalStepConfig;
        boolean zBooleanValue = k3GlobalStepConfig != null ? ((Boolean) k3GlobalStepConfig.p200255.value).booleanValue() : true;
        this.bianDaoResult = K3CollisionManager.getInstance().calculateBiandao(eVar);
        if (this.checker == null) {
            this.checker = new BianDaoStateChecker();
        }
        CarPos carPosC = eVar.c();
        if (this.records.size() > 5) {
            this.records.removeLast();
        }
        Pos posMeanWith = new Pos(carPosC.wheelRightFront).meanWith(carPosC.wheelLeftFront);
        this.records.addFirst(posMeanWith);
        this.checker.check(this.bianDaoResult);
        BianDaoStateChecker bianDaoStateChecker = this.checker;
        BianDaoDirection bianDaoDirection = bianDaoStateChecker.bianDaoDirection;
        BianDaoState bianDaoState = bianDaoStateChecker.state;
        int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$biandao$TurnState[this.state.ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                if (bianDaoState == BianDaoState.after) {
                    this.state = TurnState.after;
                } else if (bianDaoState == BianDaoState.before) {
                    this.state = TurnState.before;
                }
            } else if (i == 4) {
                this.state = TurnState.before;
            }
        } else if (bianDaoState == BianDaoState.turnLeft) {
            if (zBooleanValue && eVar.d().j(Light.TurnLeftLight)) {
                this.state = TurnState.turnLeft;
            } else if (this.checker.collisionLine != null) {
                c cVar = carPosC.carRect;
                Pos posVectorTo = cVar.f5821d.vectorTo(cVar.c);
                BianDaoStateChecker bianDaoStateChecker2 = this.checker;
                double dCross = posVectorTo.cross(a.n(posMeanWith, bianDaoStateChecker2.start, bianDaoStateChecker2.end).vectorTo(posMeanWith));
                if (dCross <= 0.0d && dCross < 0.0d) {
                    if (!isStraightLine(this.checker.collisionLine) || this.records.size() <= 5) {
                        this.state = TurnState.turnLeft;
                    } else {
                        BianDaoStateChecker bianDaoStateChecker3 = this.checker;
                        Pos posS = a.s(bianDaoStateChecker3.start, bianDaoStateChecker3.end, 1500.0d);
                        BianDaoStateChecker bianDaoStateChecker4 = this.checker;
                        if (a.C(a.s(bianDaoStateChecker4.end, bianDaoStateChecker4.start, 1500.0d), posS, this.records.getFirst(), this.records.getLast())) {
                            this.state = TurnState.turnLeft;
                        }
                    }
                }
            }
        } else if (bianDaoState == BianDaoState.turnRight) {
            if (zBooleanValue && eVar.d().j(Light.TurnRightLight)) {
                this.state = TurnState.turnRight;
            } else if (this.checker.collisionLine != null) {
                c cVar2 = carPosC.carRect;
                Pos posVectorTo2 = cVar2.f5820a.vectorTo(cVar2.b);
                BianDaoStateChecker bianDaoStateChecker5 = this.checker;
                if (posVectorTo2.cross(a.n(posMeanWith, bianDaoStateChecker5.start, bianDaoStateChecker5.end).vectorTo(posMeanWith)) > 0.0d) {
                    if (!isStraightLine(this.checker.collisionLine) || this.records.size() <= 5) {
                        this.state = TurnState.turnRight;
                    } else {
                        BianDaoStateChecker bianDaoStateChecker6 = this.checker;
                        Pos posS2 = a.s(bianDaoStateChecker6.start, bianDaoStateChecker6.end, 1500.0d);
                        BianDaoStateChecker bianDaoStateChecker7 = this.checker;
                        if (a.C(a.s(bianDaoStateChecker7.end, bianDaoStateChecker7.start, 1500.0d), posS2, this.records.getFirst(), this.records.getLast())) {
                            this.state = TurnState.turnRight;
                        }
                    }
                }
            }
        }
        this.lastFrameBianDaoDirection = bianDaoDirection;
        return this.state;
    }

    public boolean isStraightLine(K3CollisionModel k3CollisionModel) {
        if (k3CollisionModel instanceof j) {
            return !((j) k3CollisionModel).j;
        }
        if (k3CollisionModel instanceof i) {
            return !((i) k3CollisionModel).f3917h;
        }
        return false;
    }

    public void reset() {
        this.state = TurnState.before;
        this.checker = null;
        this.lastFrameBianDaoDirection = BianDaoDirection.None;
    }
}
