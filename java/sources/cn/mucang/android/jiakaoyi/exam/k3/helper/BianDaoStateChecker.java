package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.collision.BianDaoDirection;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.BianDaoResult;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class BianDaoStateChecker {
    public BianDaoDirection bianDaoDirection;
    public K3CollisionModel collisionLine;
    public Pos end;
    public BianDaoDirection lastFrameBianDaoDirection;
    public Pos start;
    public BianDaoState state = BianDaoState.before;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoStateChecker$1, reason: invalid class name */
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

    public void check(BianDaoResult bianDaoResult) {
        this.bianDaoDirection = getBianDaoDirection(bianDaoResult);
        int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState[this.state.ordinal()];
        if (i != 1) {
            if (i == 2) {
                BianDaoDirection bianDaoDirection = this.lastFrameBianDaoDirection;
                if (bianDaoDirection == BianDaoDirection.LeftBianDao) {
                    BianDaoDirection bianDaoDirection2 = this.bianDaoDirection;
                    if (bianDaoDirection2 == BianDaoDirection.RightBianDao) {
                        this.state = BianDaoState.turnLeft;
                    } else if (bianDaoDirection2 == BianDaoDirection.None) {
                        this.state = BianDaoState.after;
                    }
                }
                if (bianDaoDirection == BianDaoDirection.RightBianDao && this.bianDaoDirection == BianDaoDirection.None) {
                    this.state = BianDaoState.before;
                }
            } else if (i == 3) {
                BianDaoDirection bianDaoDirection3 = this.lastFrameBianDaoDirection;
                if (bianDaoDirection3 == BianDaoDirection.RightBianDao) {
                    BianDaoDirection bianDaoDirection4 = this.bianDaoDirection;
                    if (bianDaoDirection4 == BianDaoDirection.LeftBianDao) {
                        this.state = BianDaoState.turnRight;
                    } else if (bianDaoDirection4 == BianDaoDirection.None) {
                        this.state = BianDaoState.after;
                    }
                }
                if (bianDaoDirection3 == BianDaoDirection.LeftBianDao && this.bianDaoDirection == BianDaoDirection.None) {
                    this.state = BianDaoState.before;
                }
            } else if (i == 4) {
                this.state = BianDaoState.before;
            }
        } else if (this.lastFrameBianDaoDirection == BianDaoDirection.None) {
            BianDaoDirection bianDaoDirection5 = this.bianDaoDirection;
            if (bianDaoDirection5 == BianDaoDirection.LeftBianDao) {
                this.state = BianDaoState.turnLeft;
            } else if (bianDaoDirection5 == BianDaoDirection.RightBianDao) {
                this.state = BianDaoState.turnRight;
            }
        }
        BianDaoState bianDaoState = this.state;
        if (bianDaoState == BianDaoState.turnLeft) {
            BianDaoDirection bianDaoDirection6 = this.bianDaoDirection;
            if (bianDaoDirection6 == BianDaoDirection.LeftBianDao) {
                this.collisionLine = bianDaoResult.leftLine;
                this.start = bianDaoResult.leftStart;
                this.end = bianDaoResult.leftEnd;
            } else if (bianDaoDirection6 == BianDaoDirection.RightBianDao) {
                this.collisionLine = bianDaoResult.rightLine;
                this.start = bianDaoResult.rightStart;
                this.end = bianDaoResult.rightEnd;
            }
        } else if (bianDaoState == BianDaoState.turnRight) {
            BianDaoDirection bianDaoDirection7 = this.bianDaoDirection;
            if (bianDaoDirection7 == BianDaoDirection.LeftBianDao) {
                this.collisionLine = bianDaoResult.leftLine;
                this.start = bianDaoResult.leftStart;
                this.end = bianDaoResult.leftEnd;
            } else if (bianDaoDirection7 == BianDaoDirection.RightBianDao) {
                this.collisionLine = bianDaoResult.rightLine;
                this.start = bianDaoResult.rightStart;
                this.end = bianDaoResult.rightEnd;
            }
        } else {
            this.collisionLine = null;
            this.start = null;
            this.end = null;
        }
        this.lastFrameBianDaoDirection = this.bianDaoDirection;
    }

    public BianDaoDirection getBianDaoDirection(BianDaoResult bianDaoResult) {
        BianDaoDirection bianDaoDirection = BianDaoDirection.None;
        if (bianDaoResult == null) {
            return bianDaoDirection;
        }
        if (bianDaoResult.leftLine != null) {
            return BianDaoDirection.LeftBianDao;
        }
        return bianDaoResult.rightLine != null ? BianDaoDirection.RightBianDao : bianDaoDirection;
    }
}
