package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.BianDaoResult;
import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.DashFullLineCollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpSingleBianDaoCalculator extends K3HpChecker {
    private final List<K3CollisionModel> allLines;
    private volatile BianDaoResult bianDaoResult;
    private volatile long frameTime;
    private final Object lock;

    public HpSingleBianDaoCalculator(List<K3CollisionModel> list, List<K3CollisionModel> list2, List<K3CollisionModel> list3) {
        ArrayList arrayList = new ArrayList();
        this.allLines = arrayList;
        this.lock = new Object();
        this.frameTime = 0L;
        this.bianDaoResult = new BianDaoResult();
        if (list != null && !list.isEmpty()) {
            arrayList.addAll(list);
        }
        if (list2 != null && !list2.isEmpty()) {
            arrayList.addAll(list2);
        }
        if (list3 == null || list3.isEmpty()) {
            return;
        }
        arrayList.addAll(list3);
    }

    private BianDaoResult calculateBianDao(CarPos carPos, Pos pos, Pos pos2, K3CollisionModel k3CollisionModel) {
        boolean zC;
        if (cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bound, pos, pos2)) {
            zC = false;
        } else {
            zC = cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftBackLast, carPos.wheelLeftBack, pos, pos2);
            if (!zC) {
                return null;
            }
        }
        if (!zC && !cn.mucang.android.jiakaoyi.hpmap.a.b.a.c(carPos, pos, pos2) && !c.a(carPos.carRect, pos) && !c.a(carPos.carRect, pos2)) {
            return null;
        }
        double dTurnValue = turnValue(carPos.back, carPos.front, pos, pos2);
        if (dTurnValue > 0.0d) {
            return this.bianDaoResult.leftBianDao(k3CollisionModel, pos, pos2);
        }
        if (dTurnValue < 0.0d) {
            return this.bianDaoResult.rightBianDao(k3CollisionModel, pos, pos2);
        }
        return null;
    }

    private BianDaoResult calculateCurveBianDao(CarPos carPos, List<Pos> list, K3CollisionModel k3CollisionModel) {
        for (int i = 1; i < list.size(); i++) {
            BianDaoResult bianDaoResultCalculateBianDao = calculateBianDao(carPos, list.get(i - 1), list.get(i), k3CollisionModel);
            if (bianDaoResultCalculateBianDao != null) {
                return bianDaoResultCalculateBianDao;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0006 A[SYNTHETIC] */
    private BianDaoResult getBianDaoDirection(e eVar, CarPos carPos) {
        BianDaoResult bianDaoResultCalculateBianDao;
        for (K3CollisionModel k3CollisionModel : this.allLines) {
            if (!k3CollisionModel.c.h(carPos.bound)) {
                int i = k3CollisionModel.f3882a;
                BianDaoResult bianDaoResultEmptyResult = null;
                if (i == 1) {
                    j jVar = (j) k3CollisionModel;
                    if (jVar.j) {
                        bianDaoResultCalculateBianDao = calculateCurveBianDao(carPos, jVar.f3919e, jVar);
                    } else {
                        Line line = jVar.f3922h;
                        bianDaoResultCalculateBianDao = calculateBianDao(carPos, line.start, line.end, jVar);
                    }
                } else {
                    if (i == 2) {
                        i iVar = (i) k3CollisionModel;
                        if (iVar.f3917h) {
                            BianDaoResult bianDaoResultCalculateCurveBianDao = calculateCurveBianDao(carPos, iVar.f3913d, iVar);
                            if (bianDaoResultCalculateCurveBianDao != null) {
                                return bianDaoResultCalculateCurveBianDao;
                            }
                            bianDaoResultCalculateBianDao = calculateCurveBianDao(carPos, iVar.f3914e, iVar);
                            if (bianDaoResultCalculateBianDao != null) {
                                return bianDaoResultCalculateBianDao;
                            }
                        } else {
                            Line line2 = iVar.f3915f;
                            BianDaoResult bianDaoResultCalculateBianDao2 = calculateBianDao(carPos, line2.start, line2.end, iVar);
                            if (bianDaoResultCalculateBianDao2 == null) {
                                Pos pos = iVar.f3916g.end;
                                bianDaoResultCalculateBianDao = calculateBianDao(carPos, pos, pos, iVar);
                            } else {
                                bianDaoResultEmptyResult = bianDaoResultCalculateBianDao2;
                            }
                        }
                    } else if (i == 19) {
                        DashFullLineCollisionModel dashFullLineCollisionModel = (DashFullLineCollisionModel) k3CollisionModel;
                        BianDaoResult bianDaoResultCalculateCurveBianDao2 = calculateCurveBianDao(carPos, dashFullLineCollisionModel.f3885e, dashFullLineCollisionModel);
                        BianDaoDirection bianDaoDirection = getBianDaoDirection(bianDaoResultCalculateCurveBianDao2);
                        if (bianDaoDirection != BianDaoDirection.LeftBianDao ? !(bianDaoDirection != BianDaoDirection.RightBianDao || dashFullLineCollisionModel.b(eVar, null, K3CollisionModel.TriggerType.BodyPressDottedLine)) : !dashFullLineCollisionModel.b(eVar, null, K3CollisionModel.TriggerType.BodyPressDottedLine)) {
                            bianDaoResultEmptyResult = bianDaoResultCalculateCurveBianDao2;
                        }
                        if (bianDaoResultEmptyResult == null) {
                            bianDaoResultEmptyResult = this.bianDaoResult.emptyResult();
                        }
                    }
                    if (bianDaoResultEmptyResult != null) {
                        return bianDaoResultEmptyResult;
                    }
                }
                bianDaoResultEmptyResult = bianDaoResultCalculateBianDao;
                if (bianDaoResultEmptyResult != null) {
                    return bianDaoResultEmptyResult;
                }
            }
        }
        return this.bianDaoResult.emptyResult();
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean calculateResult(e eVar, ExamProcessor examProcessor, boolean z) {
        return false;
    }

    public BianDaoResult calculateSingleBianDao(e eVar) {
        if (isEmpty()) {
            return this.bianDaoResult.emptyResult();
        }
        if (eVar.d().L - this.frameTime > 1000) {
            this.bianDaoResult.emptyResult();
        }
        if (eVar.d().M != 3) {
            return this.bianDaoResult;
        }
        CarPos carPosC = eVar.c();
        synchronized (this.lock) {
            if (this.frameTime == eVar.d().L) {
                return this.bianDaoResult;
            }
            this.bianDaoResult = getBianDaoDirection(eVar, carPosC);
            this.frameTime = eVar.d().L;
            return this.bianDaoResult;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean isEmpty() {
        return this.allLines.isEmpty();
    }

    public double turnValue(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        Pos posVectorTo = pos.vectorTo(pos2);
        Pos posVectorTo2 = pos3.vectorTo(pos4);
        return posVectorTo.dot(posVectorTo2) * posVectorTo.cross(posVectorTo2);
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
