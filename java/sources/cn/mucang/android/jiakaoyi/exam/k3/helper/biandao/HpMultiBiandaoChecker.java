package cn.mucang.android.jiakaoyi.exam.k3.helper.biandao;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.BianDaoDirection;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpMultiBiandaoChecker {
    public boolean isCheckReverse;
    private TurnState lastTurnState;
    public long minIntervalTime;
    public boolean startTurningRight = false;
    public boolean startTurningLeft = false;
    private BianDaoDirection lastBianDaoDirection = BianDaoDirection.None;
    private K3CollisionModel lastCollisionLine = null;
    private long lastBiandaoTime = -1;
    private boolean isInit = false;
    private final HpBianDaoChecker hpBianDaoChecker = new HpBianDaoChecker();

    public HpMultiBiandaoChecker(long j, boolean z) {
        this.minIntervalTime = j;
        this.isCheckReverse = z;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006f  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d3  */
    private double getTwoLineMinDistance(K3CollisionModel k3CollisionModel, K3CollisionModel k3CollisionModel2) {
        Pos pos;
        Pos pos2;
        Pos pos3;
        if (k3CollisionModel.b == k3CollisionModel2.b) {
            return 0.0d;
        }
        int i = k3CollisionModel.f3882a;
        Pos pos4 = null;
        if (i == 2) {
            i iVar = (i) k3CollisionModel;
            if (iVar.f3917h) {
                List<Pos> list = iVar.f3913d;
                if (list == null || list.size() < 2) {
                    pos2 = null;
                    pos = null;
                } else {
                    pos = iVar.f3913d.get(0);
                    List<Pos> list2 = iVar.f3913d;
                    pos2 = list2.get(list2.size() - 1);
                }
            } else {
                Line line = iVar.f3915f;
                pos = line.start;
                pos2 = line.end;
            }
        } else if (i == 1) {
            j jVar = (j) k3CollisionModel;
            if (jVar.j) {
                List<Pos> list3 = jVar.f3919e;
                if (list3 == null || list3.size() < 2) {
                    pos2 = null;
                    pos = null;
                } else {
                    pos = jVar.f3919e.get(0);
                    List<Pos> list4 = jVar.f3919e;
                    pos2 = list4.get(list4.size() - 1);
                }
            } else {
                Line line2 = jVar.f3922h;
                pos = line2.start;
                pos2 = line2.end;
            }
        } else {
            pos2 = null;
            pos = null;
        }
        int i2 = k3CollisionModel2.f3882a;
        if (i2 == 2) {
            i iVar2 = (i) k3CollisionModel2;
            if (iVar2.f3917h) {
                List<Pos> list5 = iVar2.f3913d;
                if (list5 == null || list5.size() < 2) {
                    pos3 = null;
                } else {
                    pos4 = iVar2.f3913d.get(0);
                    List<Pos> list6 = iVar2.f3913d;
                    pos3 = list6.get(list6.size() - 1);
                }
            } else {
                Line line3 = iVar2.f3915f;
                pos4 = line3.start;
                pos3 = line3.end;
            }
        } else if (i2 == 1) {
            j jVar2 = (j) k3CollisionModel2;
            if (jVar2.j) {
                List<Pos> list7 = jVar2.f3919e;
                if (list7 == null || list7.size() <= 2) {
                    pos3 = null;
                } else {
                    pos4 = jVar2.f3919e.get(0);
                    List<Pos> list8 = jVar2.f3919e;
                    pos3 = list8.get(list8.size() - 1);
                }
            } else {
                Line line4 = jVar2.f3922h;
                pos4 = line4.start;
                pos3 = line4.end;
            }
        } else {
            pos3 = null;
        }
        if (pos == null || pos4 == null || pos2 == null || pos3 == null) {
            return Double.MAX_VALUE;
        }
        return Math.min(Math.min(pos.distanceTo(pos4), pos2.distanceTo(pos4)), Math.min(pos.distanceTo(pos3), pos2.distanceTo(pos3)));
    }

    public boolean check(e eVar, ExamProcessor examProcessor) {
        K3CollisionModel k3CollisionModel;
        BianDaoDirection bianDaoDirection;
        boolean z;
        BianDaoDirection bianDaoDirection2;
        BianDaoDirection bianDaoDirection3;
        BianDaoDirection bianDaoDirection4;
        TurnState turnStateCheck = this.hpBianDaoChecker.check(eVar, examProcessor);
        if (!this.isInit) {
            this.isInit = true;
            this.lastBiandaoTime = -1L;
            this.lastBianDaoDirection = BianDaoDirection.None;
            this.lastCollisionLine = null;
            this.lastTurnState = turnStateCheck;
            return false;
        }
        if (this.lastTurnState != turnStateCheck) {
            f.o("多变道车辆转向状态 lastTurnState " + this.lastTurnState + " ; turnState " + turnStateCheck + " ; estimateTotalDistance " + eVar.d().C);
        }
        TurnState turnState = this.lastTurnState;
        TurnState turnState2 = TurnState.turnLeft;
        boolean z2 = turnState != turnState2 && turnStateCheck == turnState2;
        this.startTurningLeft = z2;
        TurnState turnState3 = TurnState.turnRight;
        boolean z3 = turnState != turnState3 && turnStateCheck == turnState3;
        this.startTurningRight = z3;
        BianDaoDirection bianDaoDirection5 = BianDaoDirection.None;
        if (z2) {
            bianDaoDirection = BianDaoDirection.LeftBianDao;
            k3CollisionModel = this.hpBianDaoChecker.bianDaoResult.leftLine;
            if (k3CollisionModel instanceof j) {
                j jVar = (j) k3CollisionModel;
                if (jVar.j) {
                    List<Pos> list = jVar.f3919e;
                    if (list == null || list.size() < 2) {
                        f.o("变道线 null");
                    } else {
                        f.o("变道线 start " + list.get(0) + ";end " + list.get(list.size() - 1));
                    }
                } else {
                    Line line = jVar.f3922h;
                    if (line != null) {
                        f.o("变道线 " + line);
                    } else {
                        f.o("变道线 null");
                    }
                }
            }
        } else if (z3) {
            bianDaoDirection = BianDaoDirection.RightBianDao;
            k3CollisionModel = this.hpBianDaoChecker.bianDaoResult.rightLine;
            if (k3CollisionModel instanceof j) {
                j jVar2 = (j) k3CollisionModel;
                if (jVar2.j) {
                    List<Pos> list2 = jVar2.f3919e;
                    if (list2 == null || list2.size() < 2) {
                        f.o("变道线 " + list2);
                    } else {
                        f.o("变道线 start " + list2.get(0) + ";end " + list2.get(list2.size() - 1));
                    }
                } else {
                    f.o("变道线 " + jVar2.f3922h);
                }
            }
        } else {
            k3CollisionModel = null;
            bianDaoDirection = bianDaoDirection5;
        }
        BianDaoDirection bianDaoDirection6 = BianDaoDirection.LeftBianDao;
        if (bianDaoDirection == bianDaoDirection6 || bianDaoDirection == BianDaoDirection.RightBianDao) {
            K3CollisionModel k3CollisionModel2 = this.lastCollisionLine;
            z = (k3CollisionModel2 == null || k3CollisionModel == null || (!this.isCheckReverse ? !(getTwoLineMinDistance(k3CollisionModel2, k3CollisionModel) <= 150.0d || (!(((bianDaoDirection2 = this.lastBianDaoDirection) == bianDaoDirection6 && bianDaoDirection == bianDaoDirection6) || (bianDaoDirection2 == (bianDaoDirection3 = BianDaoDirection.RightBianDao) && bianDaoDirection == bianDaoDirection3)) || eVar.d().L - this.lastBiandaoTime >= this.minIntervalTime)) : !(getTwoLineMinDistance(k3CollisionModel2, k3CollisionModel) <= 150.0d ? !(((bianDaoDirection4 = this.lastBianDaoDirection) == bianDaoDirection6 && bianDaoDirection == BianDaoDirection.RightBianDao) || (bianDaoDirection4 == BianDaoDirection.RightBianDao && bianDaoDirection == bianDaoDirection6)) || eVar.d().L - this.lastBiandaoTime >= this.minIntervalTime : eVar.d().L - this.lastBiandaoTime >= this.minIntervalTime))) ? false : true;
            this.lastBianDaoDirection = bianDaoDirection;
            this.lastBiandaoTime = eVar.d().L;
            this.lastCollisionLine = k3CollisionModel;
        } else {
            z = false;
        }
        this.lastTurnState = turnStateCheck;
        if (!z) {
            return false;
        }
        this.lastBiandaoTime = 0L;
        this.lastBianDaoDirection = bianDaoDirection5;
        this.lastCollisionLine = null;
        return true;
    }

    public void reset() {
        this.isInit = false;
    }
}
